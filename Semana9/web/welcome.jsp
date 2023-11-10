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
                    <ul class="list-group">
                        <li class="list-group-item">
                            <div class="ms-2 me-auto">
                                <div class="fw-bold">Semana 1</div>
                                Introdução a Servlets
                            </div>                      
                        </li>
                        <li class="list-group-item">                    
                            <div class="ms-2 me-auto">                            
                                <div class="fw-bold">Semana 2</div>
                                Autenticação inicial
                            </div>               
                        </li>
                        <li class="list-group-item">              
                            <div class="ms-2 me-auto">                        
                                <div class="fw-bold">Semana 3</div>
                                Controle de Sessão
                            </div>          
                        </li>
                        <li class="list-group-item">           
                            <div class="ms-2 me-auto">                      
                                <div class="fw-bold">Semana 4</div>
                                JSPs
                            </div>                     
                        </li>
                        <li class="list-group-item">          
                            <div class="ms-2 me-auto">                        
                                <div class="fw-bold">Semana 5</div>
                                JavaDB e autenticação
                            </div>            
                        </li>
                        <li class="list-group-item">     
                            <div class="ms-2 me-auto">                         
                                <div class="fw-bold">Semana 6</div>
                                MVC e Filtros
                            </div>                     
                        </li>
                        <li class="list-group-item">   
                            <div class="ms-2 me-auto">                             
                                <div class="fw-bold">Semana 7</div>
                                Eventos e Listeners
                            </div>                
                        </li>
                        <li class="list-group-item">    
                            <div class="ms-2 me-auto">                              
                                <div class="fw-bold">Semana 8</div>
                                UI com Bootstrap
                            </div>                   
                        </li>
                        <li class="list-group-item active" aria-current="true">   
                            <div class="ms-2 me-auto">                             
                                <div class="fw-bold">Semana 9</div>
                                Java Persistence API
                            </div>           
                        </li>
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

