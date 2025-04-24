<%-- 
    Document   : bienvenida
    Created on : 22/04/2025, 6:23:45 p. m.
    Author     : sebit
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Login</title>
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

        .login-container {
            background: linear-gradient(145deg, #ffffff, #e0e0e0);
            padding: 40px 50px;
            border-radius: 20px;
            box-shadow: 0 15px 25px rgba(0, 0, 0, 0.25);
            text-align: center;
            width: 90%;
            max-width: 400px;
        }

        .login-container h2 {
            color: #4a4a4a;
            margin-bottom: 20px;
        }

        .login-container input[type="text"],
        .login-container input[type="password"] {
            width: 90%;
            padding: 10px;
            margin: 10px 0;
            border-radius: 8px;
            border: 1px solid #ccc;
        }

        .login-container input[type="submit"] {
            background-color: #48c9b0;
            color: white;
            border: none;
            padding: 12px 24px;
            border-radius: 10px;
            font-size: 16px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        .login-container input[type="submit"]:hover {
            background-color: #1abc9c;
        }
    </style>
</head>
<body>
    <div class="login-container">
        <h2>Iniciar Sesión</h2>
        <form method="post" action="ValidarUsuario">
            Usuario:<br>
            <input type="text" name="usuario"><br>
            Clave:<br>
            <input type="password" name="clave"><br><br>
            <input type="submit" value="Ingresar">
        </form>
    </div>
</body>
</html>
