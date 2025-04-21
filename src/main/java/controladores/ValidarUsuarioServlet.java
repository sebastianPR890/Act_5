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
import java.io.IOException; 

 
@WebServlet(name = "ValidarUsuario", urlPatterns = {"/ValidarUsuario"}) 
public class ValidarUsuarioServlet extends HttpServlet { 
 
    @Override 
    protected void doPost(HttpServletRequest request, 
HttpServletResponse response) 
            throws ServletException, IOException { 
        // Obtener parámetros 
        String user = request.getParameter("usuario"); 
        String pass = request.getParameter("clave"); 
         
        // Validar credenciales 
        boolean esValido = false; 
        String mensaje = ""; 
         
        if("admin".equals(user) && "1234".equals(pass)) { 
            esValido = true; 
            mensaje = "Registro Exitoso"; 
        } else { 
            mensaje = "Registro Inválido"; 
        } 
         
        // Agregar atributos al request 
        request.setAttribute("esValido", esValido); 
        request.setAttribute("mensaje", mensaje); 
        request.setAttribute("usuario", user); 
         
        // Redirigir a JSP 
        request.getRequestDispatcher("resultado.jsp").forward(request, 
response); 
    } 
}
