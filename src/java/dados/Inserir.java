/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dados;

import bancoDeDados.Conexao;
import java.sql.Connection;
import java.sql.PreparedStatement;

public class Inserir {
    public void inserirDados(Armazena arm) { // Modifique aqui para aceitar um objeto Armazena

        PreparedStatement pstm = null;
        Connection conn = null;

        String sql = "Insert into sala(dia_da_semana, horario, nome_do_professor, nome_da_disciplina, turno)" +
                "values(?,?,?,?,?)";

        try {
            conn = (Connection) Conexao.getConnection();
            pstm = conn.prepareStatement(sql);

            // Use os métodos get do objeto Armazena para obter os valores
            pstm.setString(1, arm.getDia_da_semana());
            pstm.setString(2, arm.getHorario());
            pstm.setString(3, arm.getNome_do_professor());
            pstm.setString(4, arm.getNome_da_disciplina());
            pstm.setString(5, arm.getTurno());

            pstm.execute();

        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try {
                if (pstm != null) {
                    pstm.close();
                }
                if (conn != null) {
                    conn.close();
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }
}