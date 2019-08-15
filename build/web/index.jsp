<%-- 
    Document   : index
    Created on : 14-ago-2019, 20:25:45
    Author     : sebas
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sesion</title>
    </head>
    <body>
        <h1>Loguearse</h1>
        <form action="registrado.jsp" method="post">
            <table>
                <tr><td>Usuario</td><td><input type="text" name="txtusuario"></td></tr>
                <tr><td>Rol</td><td><input type="text" name="txtrol"></td></tr>
                <tr><td>Nombre</td><td><input type="text" name="txtnombre"></td></tr>
                <tr><td>Jefe</td><td><input type="text" name="txtjefe"></td></tr>
                <tr><td>Clave</td><td><input type="password" name="txtclave"></td></tr>
            </table>
            <input type="submit" value="Ingresar">
        </form>
    </body>
</html>
