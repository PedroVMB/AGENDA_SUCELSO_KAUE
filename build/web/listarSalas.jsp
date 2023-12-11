<%-- 
    Document   : listarSalas
    Created on : 8 de dez. de 2023, 17:50:41
    Author     : sasuk
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Listar Salas</title>
    <style>
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }

        th, td {
            border: 1px solid #ddd;
            padding: 8px;
            text-align: left;
        }

        th {
            background-color: #f2f2f2;
        }
        .button {
            display: inline-block;
            padding: 10px 20px;
            font-size: 16px;
            cursor: pointer;
            text-align: center;
            text-decoration: none;
            outline: none;
            color: #fff;
            background-color: #007bff;
            border: none;
            border-radius: 5px;
            box-shadow: 0 4px #0056b3;
        }

        .button:hover {background-color: #0056b3}

        .button:active {
            background-color: #0056b3;
            box-shadow: 0 3px #0056b3;
            transform: translateY(4px);
        }
    </style>
</head>
<body>
    <h2>Listar Salas Sucelso</h2>

    <table border="1">
        <tr>
            <th>ID</th>
            <th>Dia da Semana</th>
            <th>Horário</th>
            <th>Período</th>
            <th>Nome do Professor</th>
            <th>Nome da Disciplina</th>
            <th>Turno</th>
        </tr>

        <% 
            try {
                Class.forName("com.mysql.cj.jdbc.Driver");
                String jdbcUrl = "jdbc:mysql://localhost:3306/agenda_sucelso";
                String jdbcUser = "root";
                String jdbcPassword = "root123";

                Connection connection = DriverManager.getConnection(jdbcUrl, jdbcUser, jdbcPassword);
                Statement statement = connection.createStatement();

                String query = "SELECT * FROM Sala";
                ResultSet resultSet = statement.executeQuery(query);

                while (resultSet.next()) {
                    int id = resultSet.getInt("id");
                    String diaDaSemana = resultSet.getString("dia_da_semana");
                    String horario = resultSet.getString("horario");
                    String periodo = resultSet.getString("periodo");
                    String nomeDoProfessor = resultSet.getString("nome_do_professor");
                    String nomeDaDisciplina = resultSet.getString("nome_da_disciplina");
                    String turno = resultSet.getString("turno");
        %>

        <tr>
            <td><%= id %></td>
            <td><%= diaDaSemana %></td>
            <td><%= horario %></td>
            <td><%= periodo %></td>
            <td><%= nomeDoProfessor %></td>
            <td><%= nomeDaDisciplina %></td>
            <td><%= turno %></td>
        </tr>

        <% 
                }
                resultSet.close();
                statement.close();
                connection.close();
            } catch (Exception e) {
                %>
                <tr>
                    <td colspan="6">Erro ao acessar o banco de dados: <%= e.getMessage() %></td>
                </tr>
                <%
            }
        %>
    </table>
    
    <a href="Cadastrar.jsp" class="button">Ir para Cadastro Sucelso</a>
</body>
</html>
