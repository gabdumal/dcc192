<%--
    Document   : index
    Created on : Oct 3, 2023, 9:47:15 PM
    Author     : gabdumal
--%>

<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    </head>
    <body class="vh-100 d-flex flex-column flex-fill">
        <jsp:include page="./components/navbar.html" />

        <article class="container-fluid d-flex flex-column flex-grow-1 mt-4">
            <header class="d-flex justify-content-center mb-4">
                <h1>Login</h1>
            </header>
            <section class="container">
                <form class="form" method="post" action="./Controller">
                    <div class="mb-3">
                        <label for="userNameInput" class="form-label">Nome de usuário</label>
                        <input id="userNameInput" name="userName" type="text" class="form-control" placeholder="Seu nome de usuário">
                    </div>
                    <div class="mb-3">
                        <label for="passwordInput" class="form-label">Senha</label>
                        <input id="passwordInput" name="password" type="password" class="form-control" placeholder="Sua senha">
                    </div>
                    <input hidden name="operacao" value="login" />
                    <div class="d-grid mt-4">
                        <input value="Entrar" type="submit" class="btn btn-primary" />
                    </div>
                </form>
                <%
                    String message = (String) session.getAttribute("msg");
                    if (message != null){
                %>
                <section class="alert alert-warning mt-4" role="alert">
                    <%= message %>
                </section>
                <%
                    }
                %>
            </section>
        </article>

        <jsp:include page="./components/footer.jsp" />
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
    </body>
</html>