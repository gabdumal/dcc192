<%--
    Document   : index
    Created on : Sep 6, 2023, 4:06:36 PM
    Author     : devgabmal
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Página inicial</title>
        <style>
            .container {
                display: flex;
                justify-content: center;
                align-items: center;
                flex-direction: column;
                width: 100%;
            }
            .form {
                display: flex;
                flex-direction: column;
                gap: 16px;
            }
        </style>
    </head>
    <body>
        <%

            String dbUsername = "Gabriel";
            String dbPassword = "uvapassa";
        %>
        <article class="container">
            <h1>Exercício de LDSW</h1>
            <h2>Semana 5 - 2023.3</h2>
            <form class="form" method="post" action="./Menu">
                <section class="container">
                    <label>Usuário:</label>
                    <input name="username" type="text" />
                </section>
                <section class="container">
                    <label>Senha:</label>
                    <input name="password" type="password" />
                </section>
                <input value="Entrar" type="submit" />
            </form>
            <%
                String message = (String) session.getAttribute("message");

                if (message != null){
            %>
            <section>
                <h2>
                    <%= message %>
                </h2>
            </section>
            <%
                }
            %>
        </article>
    </body>
</html>
