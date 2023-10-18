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
            body{
                height: 100vh;
                display: flex;
                padding: 0;
                margin: 0;
            }
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
            .article{
                flex-grow: 1;
                justify-content: start;
                height: 100%;
            }
            .footer{
                display: flex;
                flex-grow: 1;
                align-items: end;
                margin-bottom: 16px;
            }
            .logged-users-text{
                font-weight: 700;
            }
        </style>
    </head>
    <body>
        <article class="container article">
            <header class="container">                
                <h1>Login</h1>
                <h2>Semana 7 - 2023.3</h2>
            </header>
            
            <section>
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
            </section>

            <footer class="footer">
                <p class="logged-users-text" >Usuários logados:
                <%= (int) application.getAttribute("numberLoggedUsers") %>
                </p>
            </footer>
        </article>
    </body>
</html>