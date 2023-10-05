<%-- 
    Document   : index
    Created on : Oct 3, 2023, 9:47:15 PM
    Author     : gabdumal
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
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
        <article class="container">
            <h1>Login</h1>
            <h2>Semana 6 - 2023.3</h2>
            <form class="form" method="post" action="./Controller">
                <section class="container">
                    <label>Usuário:</label>
                    <input name="userName" type="text" />
                </section>
                <section class="container">
                    <label>Senha:</label>
                    <input name="password" type="password" />
                </section>
                <input hidden name="operacao" value="login" />
                <input value="Entrar" type="submit" />
            </form>
            <%
                String message = (String) session.getAttribute("msg");
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