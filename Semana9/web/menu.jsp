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
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    </head>
    <body class="vh-100 d-flex flex-column flex-fill">
        <jsp:include page="/components/navbar.html" />

        <article class="container-fluid d-flex flex-column flex-grow-1 mt-4">
            <header class="d-flex justify-content-center mb-4">
                <h1>Menu</h1>
            </header>
            <% String loggedUser = (String) session.getAttribute("usuario"); %>
            <section class="container d-flex flex-column">
                <h1 class="display-2">Olá, <%= loggedUser %>!</h1>
                <div class="d-grid gap-2 mt-5">
                    <a href="./Controller?operacao=welcome" class="btn btn-primary" role="button">
                        Boas-vindas
                    </a>
                    <a href="./Controller?operacao=sair" class="btn btn-danger" role="button">
                        Sair do sistema
                    </a>
                </div>
            </section>
        </article>

        <jsp:include page="/components/footer.jsp" />
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
    </body>
</html>
