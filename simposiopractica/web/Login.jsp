<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <script src="https://kit.fontawesome.com/56f2e02d5c.js" crossorigin="anonymous"></script>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">   
    <link rel="stylesheet" href="css/InicioSesion.css">
    <title>Login</title>
</head>
<body>
    <section>
        <div class="contenedor">
            <form id="LoginForm" action="LogicSecion.jsp" method="POST">
                <h2>Inicio de sesión</h2>
                <input type="email" name="email" placeholder="Correo electrónico" required>
                <input type="password" name="password" placeholder="Contraseña" required>
                <input type="submit" value="Acceder">
                <div id="error-message" style="color: red;">
                    <% 
                        String errorMessage = (String) request.getAttribute("errorMessage");
                        if (errorMessage != null) {
                            out.print(errorMessage);
                        }
                    %>
                </div>
            </form>
            <div class="Registrar">
                <p>No tengo una cuenta <a href="Registro.jsp">Crear una</a></p>
            </div>
        </div>
    </section>
    <script src="JavaScript/LoginOjo.js"></script>
</body>
</html>
