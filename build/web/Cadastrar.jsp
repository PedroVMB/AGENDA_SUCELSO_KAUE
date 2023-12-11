<%-- 
    Document   : Cadastrar
    Created on : 8 de dez. de 2023, 18:47:24
    Author     : sasuk
--%>

<%@page import="dados.Armazena"%>
<%@page import="dados.Inserir"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Cadastro de Salas Sucelso</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        form {
            background-color: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            width: 400px;
            margin: auto;
            text-align: center;
        }

        label {
            display: block;
            margin-bottom: 8px;
            font-weight: bold;
        }

        input, select {
            width: 100%;
            padding: 10px;
            margin-bottom: 16px;
            box-sizing: border-box;
            border: 1px solid #ccc;
            border-radius: 4px;
        }

        button {
            background-color: #4caf50;
            color: #fff;
            padding: 12px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }

        button:hover {
            background-color: #45a049;
        }

        .success-message {
            color: #008000;
            font-weight: bold;
        }

        .list-link {
            display: block;
            margin-top: 20px;
            text-align: center;
            text-decoration: none;
            color: #333;
            background-color: #eee;
            padding: 10px;
            border-radius: 4px;
        }
    </style>
</head>
<body>
    <% 
        // Verifica se o formulário foi submetido
        if (request.getMethod().equalsIgnoreCase("post")) {
            // Obtém os parâmetros do formulário
            String jspDiaDaSemana = request.getParameter("diaDaSemana");
            String jspHorario = request.getParameter("horario");
            String jspPeriodo = request.getParameter("periodo");
            String jspNomeDoProfessor = request.getParameter("nomeDoProfessor");
            String jspNomeDaDisciplina = request.getParameter("nomeDaDisciplina");
            String jspTurno = request.getParameter("turno");

            // Cria uma instância da classe Armazena
            Armazena arm = new Armazena();
            arm.setDia_da_semana(jspDiaDaSemana);
            arm.setHorario(jspHorario);
            arm.setPeriodo(jspPeriodo);
            arm.setNome_do_professor(jspNomeDoProfessor);
            arm.setNome_da_disciplina(jspNomeDaDisciplina);
            arm.setTurno(jspTurno);

            // Cria uma instância da classe Inserir e insere os dados no banco
            Inserir inserir = new Inserir();
            inserir.inserirDados(arm);
    %>
            <p class="success-message">Dados inseridos com sucesso!</p>
    <%
        }
    %>
     
    <form action="Cadastrar.jsp" method="post">
        <h2>Cadastro de Sala Sucelso</h2>

        <label for="diaDaSemana">Dia da Semana:</label>
        <input type="text" name="diaDaSemana" required><br>

        <label for="horario">Horário:</label>
        <input type="text" name="horario" required><br>
        
        <label for="horario">Período:</label>
        <input type="text" name="periodo" required><br>

        <label for="nomeDoProfessor">Nome do Professor:</label>
        <input type="text" name="nomeDoProfessor" required><br>

        <label for="nomeDaDisciplina">Nome da Disciplina:</label>
        <input type="text" name="nomeDaDisciplina" required><br>

        <label for="turno">Turno:</label>
        <select id="turno" name="turno" required>
            <option value="Manhã">Manhã</option>
            <option value="Tarde">Tarde</option>
            <option value="Noite">Noite</option>
        </select>

        <button type="submit">Cadastrar Sala</button>
        <a href="listarSalas.jsp" class="list-link">Ir para Listagem das Salas Sucelso</a>
    </form>
     
    
</body>
</html>
