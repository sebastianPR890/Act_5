<%-- 
    Document   : error
    Created on : 22/04/2025, 6:23:10 p. m.
    Author     : sebit
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Error de Acceso</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://fonts.googleapis.com/css2?family=Quicksand:wght@400;600&display=swap" rel="stylesheet">
    <style>
        body {
            margin: 0;
            padding: 0;
            font-family: 'Quicksand', sans-serif;
            background: linear-gradient(135deg, #5dade2, #a569bd, #48c9b0);
            background-size: 400% 400%;
            animation: gradient 15s ease infinite;
            height: 100vh;
            display: flex;
            align-items: center;
            justify-content: center;
        }

        @keyframes gradient {
            0% {background-position: 0% 50%;}
            50% {background-position: 100% 50%;}
            100% {background-position: 0% 50%;}
        }

        .error-container {
            background: linear-gradient(145deg, #ffffff, #e0e0e0);
            padding: 40px;
            border-radius: 20px;
            text-align: center;
            box-shadow: 0 15px 25px rgba(0, 0, 0, 0.25);
            width: 90%;
            max-width: 500px;
        }

        h2, p {
            color: #4a4a4a;
        }

        a {
            text-decoration: none;
            background-color: #48c9b0;
            color: white;
            padding: 12px 24px;
            border-radius: 10px;
            display: inline-block;
            margin-top: 20px;
        }

        a:hover {
            background-color: #1abc9c;
        }
    </style>
</head>
<body>
    <div class="error-container">
        <h2>Acceso denegado</h2>
        <p>Usuario y/o contraseña incorrectos.</p>
        <p>Debes iniciar sesión correctamente para ver esta página.</p>
        <h2>${mensaje}</h2>
        <%
            HttpSession sesion = request.getSession(false);
            if (sesion != null) {
                Integer intentos = (Integer) sesion.getAttribute("intentos");
                if (intentos != null && intentos >= 3) {
        %>
            <p>Demasiados intentos. Intenta más tarde.</p>
        <%
                }
            }
        %>
        <a href="login.jsp">Volver</a>
    </div>
</body>
</html>
