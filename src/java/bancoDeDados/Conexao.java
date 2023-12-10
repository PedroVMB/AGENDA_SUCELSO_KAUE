package bancoDeDados;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Conexao {
    
    public static Connection getConnection() {
        Connection conn = null;
        
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            String URL = "jdbc:mysql://localhost:3306/agenda_sucelso?";
            String usuario = "root";
            String senha = "root123";

            conn = DriverManager.getConnection(URL, usuario, senha);
            System.out.println("Conexão estabelecida com sucesso!");
            
        } catch (SQLException e) {
            System.out.println("Erro ao conectar ao banco de dados: " + e.getMessage());
        } catch (ClassNotFoundException e) {
            System.out.println("Driver JDBC não encontrado: " + e.getMessage());
        } catch (Exception e) {
            System.out.println("Erro inesperado: " + e.getMessage());            
        }
        
        return conn;
    }
    
    public static void main(String args[]) {
        System.out.println(getConnection());
    }
}