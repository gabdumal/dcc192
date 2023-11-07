<%--
    Document   : footer
    Created on : Nov 7, 2023, 11:24:59 AM
    Author     : gabdumal
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<footer class="d-flex align-self-bottom justify-content-center align-items-center mt-4 bg-dark-subtle">
    <p class="text-center my-1 fs-6" >Usuários logados:
        <%= (int) application.getAttribute("numberLoggedUsers") %>
    </p>
</footer>
