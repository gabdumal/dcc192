<%--
    Document   : menu
    Created on : Oct 3, 2023, 10:15:04 PM
    Author     : gabdumal
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Menu</title>
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
            String loggedUser = (String) session.getAttribute("usuario");
        %>
        <section class="container">
            <h1>Olá, <%= loggedUser %>!</h1>
            <form action="./Controller" method="post" class="form">
                <button>Boas-vindas</button>
                <input hidden name="operacao" value="welcome" />
            </form>
            <form action="./Controller" method="post" class="form">
                <button>Sair do sistema</button>
                <input hidden name="operacao" value="sair" />
            </form>
        </section>
    </body>
</html>
