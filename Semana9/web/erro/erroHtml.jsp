<%--
    Document   : erroHtml
    Created on : Oct 3, 2023, 10:15:29 PM
    Author     : gabdumal
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>ERRO</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    </head>
    <body class="vh-100 d-flex flex-column flex-fill">
        <jsp:include page="/components/navbar.html" />

        <article class="container-fluid d-flex flex-column flex-grow-1 mt-4">
            <h1 class="display-1">Ocorreu um erro de HTML!</h1>
            <a href="./Controller" class="btn btn-primary mt-4">Voltar para o índice</a>
        </article>

        <jsp:include page="/components/footer.jsp" />
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
    </body>
</html>