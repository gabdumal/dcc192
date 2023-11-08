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
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    </head>
    <body class="vh-100 d-flex flex-column flex-fill">
        <jsp:include page="/components/navbar.html" />

        <article class="container-fluid d-flex flex-column flex-grow-1 mt-4">
            <header class="d-flex justify-content-center mb-4">
                <h1>Boas-vindas!</h1>
            </header>

            <div class="d-flex flex-column gap-2">
                <section class="container d-flex flex-column">
                    <h2>Conteúdo</h2>
                    <ul class="list-group list-group-flush">
                        <li class="list-group-item">Semana 1</li>
                        <li class="list-group-item">Semana 2</li>
                        <li class="list-group-item">Semana 3</li>
                        <li class="list-group-item">Semana 4</li>
                        <li class="list-group-item">Semana 5</li>
                        <li class="list-group-item">Semana 6</li>
                        <li class="list-group-item">Semana 7</li>
                        <li class="list-group-item">Semana 8</li>
                        <li class="list-group-item">Semana 9</li>
                    </ul>
                </section>

                <section class="container d-flex flex-column">
                    <h2>Erros</h2>
                    <div class="btn-group">
                        <button class="btn btn-success" type="button" onclick="htmlError()">Erro de HTML</button>
                        <a href="./Controller?operacao=erro_java" class="btn btn-warning" role="button">
                            Erro de Java
                        </a>
                    </div>
                </section>

                <section class="container d-flex flex-column">
                    <h2>Sair</h2>
                    <a href="./Controller?operacao=sair" class="btn btn-danger" role="button">
                        Sair do sistema
                    </a>
                </section>
            </div>
        </article>

        <jsp:include page="/components/footer.jsp" />
        <script>
            function htmlError() {
                window.location.href = "./htmlError.jsp";
            }
        </script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
    </body>
</html>

