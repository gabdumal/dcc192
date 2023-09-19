<%--
    Document   : Welcome
    Created on : Sep 6, 2023, 3:59:25 PM
    Author     : devgabmal
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String loggedUser = (String) session.getAttribute("loggedUser");
    if(loggedUser == null){
        session.setAttribute("message", "A sessão expirou!");
        response.sendRedirect("./index.jsp");
    }
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Boas-vindas!</title>
    </head>
    <body>
        <h1>Conteúdo</h1>
        <h2>Semana 1</h2>
        <h2>Semana 2</h2>
        <h2>Semana 3</h2>
        <h2>Semana 4</h2>

        <button onclick="logout()">
            Sair do Sistema
        </button>

        <script>
            function logout() {
                window.location.href = "./Sair";
            }
        </script>
    </body>
</html>
