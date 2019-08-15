<%-- 
    Document   : registrado
    Created on : 14-ago-2019, 20:47:59
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
        <h1>Welcome</h1>
        <%
            String UsuarioIn="",RolIn="",NombreIn="",JefeIn="",ClaveIn="";
            
            //Validar que pos si traiga datos del formulario  y luego llevarlos a las variables
            if(request.getParameter("txtusuario")!= null)
            {
                UsuarioIn=request.getParameter("txtusuario");
            }
            if(request.getParameter("txtrol")!= null)
            {
                RolIn=request.getParameter("txtrol");
            }
            if(request.getParameter("txtnombre")!= null)
            {
                NombreIn=request.getParameter("txtnombre");
            }
            if(request.getParameter("txtjefe")!= null)
            {
                JefeIn=request.getParameter("txtjefe");
            }
            if(request.getParameter("txtclave")!= null)
            {
                ClaveIn=request.getParameter("txtclave");
            }
        %>
        
        <jsp:useBean id="sesionActual" class="Beans.sesion" scope="session"></jsp:useBean>
        <jsp:setProperty name="sesionActual" property="usuario" value="<%=UsuarioIn%>"></jsp:setProperty>
        <jsp:setProperty name="sesionActual" property="rol" value="<%=RolIn%>"></jsp:setProperty>
        <jsp:setProperty name="sesionActual" property="nombre" value="<%=NombreIn%>"></jsp:setProperty>
        <jsp:setProperty name="sesionActual" property="jefe" value="<%=JefeIn%>"></jsp:setProperty>
        <jsp:setProperty name="sesionActual" property="clave" value="<%=ClaveIn%>"></jsp:setProperty>
        
        <table>
            <tr><td>Usuario</td><td><jsp:getProperty name="sesionActual" property="usuario"></jsp:getProperty></td></tr>
            <tr><td>Rol</td><td><jsp:getProperty name="sesionActual" property="rol"></jsp:getProperty></td></tr>
            <tr><td>Nombre</td><td><jsp:getProperty name="sesionActual" property="nombre"></jsp:getProperty></td></tr>
            <tr><td>Jefe</td><td><jsp:getProperty name="sesionActual" property="jefe"></jsp:getProperty></td></tr>
            <tr><td>Clave</td><td><jsp:getProperty name="sesionActual" property="clave"></jsp:getProperty></td></tr>
        </table>
    </body>
</html>
