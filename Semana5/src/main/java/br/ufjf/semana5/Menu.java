/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package br.ufjf.semana5;

import br.ufjf.semana5.model.DaoUsuario;
import br.ufjf.semana5.model.Usuario;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

/**
 *
 * @author gabdumal
 */
public class Menu extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

        HttpSession session = request.getSession(true);
        String loggedUser = (String) session.getAttribute("loggedUser");

        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Sistema</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Boas-vindas ao sistema, " + loggedUser + "!</h1>");
            out.println("<button type=\"button\" onclick=\"welcome()\">Boas-vindas</button>");
            out.println("<button type=\"button\" onclick=\"javaError()\">Erro de Java</button>");
            out.println("<button type=\"button\" onclick=\"htmlError()\">Erro de HTML</button>");
            out.println("<button type=\"button\" onclick=\"logout()\">Sair do sistema</button>");
            out.println("        <script type=\"text/javascript\">\n"
                    + "            function logout() {\n"
                    + "                window.location.href=\"./Sair\"\n"
                    + "            }\n"
                    + "            function welcome() {\n"
                    + "                window.location.href = \"./Welcome.jsp\";\n"
                    + "            }\n"
                    + "            function javaError() {\n"
                    + "                window.location.href = \"./JavaError\";\n"
                    + "            }\n"
                    + "            function htmlError() {\n"
                    + "                window.location.href = \"./HtmlError.jsp\";\n"
                    + "            }\n"
                    + "        </script>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession(true);
        String loggedUser = (String) session.getAttribute("loggedUser");

        if (loggedUser == null) {
            session.setAttribute("message", "A sessão expirou!");
            response.sendRedirect("./index.jsp");
        } else {
            processRequest(request, response);
        }
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession(true);

        String username = (String) request.getParameter("username");
        String password = (String) request.getParameter("password");

        DaoUsuario daoUsuario = new DaoUsuario(1, "ana", "1234");
        List<Usuario> usuarios = daoUsuario.buscarTodos();

        for (Usuario usuario : usuarios) {
            if (usuario.getNome().equals(username) && usuario.getSenha().equals(password)) {
                session.setAttribute("loggedUser", username);
                session.removeAttribute("message");
                processRequest(request, response);
                break;
            }
        }

        session.setAttribute("message", "As credenciais são inválidas!");
        response.sendRedirect("./index.jsp");
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
