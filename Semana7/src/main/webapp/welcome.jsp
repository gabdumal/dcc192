<%--
    Document   : welcome
    Created on : Oct 3, 2023, 9:48:27 PM
    Author     : gabdumal
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Boas-vindas!</title>
    </head>
    <body>
        <h1>Conteúdo</h1>
        <ul>
            <li>Semana 1</li>
            <li>Semana 2</li>
            <li>Semana 3</li>
            <li>Semana 4</li>
            <li>Semana 5</li>
            <li>Semana 6</li>            
            <li>Semana 7</li>
        </ul>

        <h2>Erros</h2>
        <form action="./Controller" method="post">
            <button>Erro de Java</button>
            <input hidden name="operacao" value="erro_java" />
        </form>
        <button type="button" onclick="htmlError()">Erro de HTML</button>

        <h2>Sair</h2>
        <form action="./Controller" method="post">
            <button>Sair do sistema</button>
            <input hidden name="operacao" value="sair" />
        </form>

        <script>
            function htmlError() {
                window.location.href = "./HtmlError.jsp";
            }
        </script>
    </body>
</html>

