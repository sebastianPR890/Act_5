/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controladores;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;


@WebServlet(name = "ValidarUsuario", urlPatterns = {"/ValidarUsuario"})
public class ValidarUsuarioServlet extends HttpServlet {

    private static final Map<String, String> usuariosValidos = new HashMap<>();

    @Override
    public void init() throws ServletException {
        usuariosValidos.put("admin1", "1234");
        usuariosValidos.put("admin2", "2345");
        usuariosValidos.put("admin3", "3456");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String user = request.getParameter("usuario");
        String pass = request.getParameter("clave");

        HttpSession sesion = request.getSession();
        Integer intentos = (Integer) sesion.getAttribute("intentos");
        if (intentos == null) intentos = 0;

        if (usuariosValidos.containsKey(user) && usuariosValidos.get(user).equals(pass)) {
            sesion.setAttribute("usuario", user);
            sesion.setAttribute("intentos", 0); // reiniciar contador

            switch (user) {
                case "admin1":
                    response.sendRedirect("admin1.jsp");
                    break;
                case "admin2":
                    response.sendRedirect("admin2.jsp");
                    break;
                case "admin3":
                    response.sendRedirect("admin3.jsp");
                    break;
            }
        } else {
            intentos++;
            sesion.setAttribute("intentos", intentos);
            request.setAttribute("mensaje", "Intento #" + intentos);
            request.getRequestDispatcher("error.jsp").forward(request, response);
        }
    }
}

