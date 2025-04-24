<%-- 
    Document   : logout
    Created on : 22/04/2025, 6:44:59 p. m.
    Author     : sebit
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    session.invalidate();
    response.sendRedirect("login.jsp");
%>