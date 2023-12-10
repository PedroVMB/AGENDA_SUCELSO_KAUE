/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package bancoDeDados;

import java.sql.Connection;
import java.sql.PreparedStatement;

public class Inserir {
    public void inserirDados(){

        PreparedStatement pstm = null;
        Connection conn=null; 
        
        String sql="Insert into sala(dia_da_semana, horario, nome_do_professor, nome_da_disciplina, turno)"+
                "values(?,?,?,?,?)";
            
    try{
        conn = (Connection) Conexao.getConnection();
        pstm = conn.prepareStatement(sql);
        
        pstm.setString(1,"teste");
        pstm.setString(2,"teste");
        pstm.setString(3,"teste");
        pstm.setString(4,"teste");
         pstm.setString(5,"teste");
        pstm.execute();
        
    }catch(Exception e){
        e.printStackTrace();
    }finally{
     try{ 
      if(pstm != null){
          pstm.close();
      }
      if(conn != null){
          conn.close();
      }
     }catch(Exception e){
         e.printStackTrace();
     }
    }
}
}