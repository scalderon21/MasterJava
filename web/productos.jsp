<%-- 
    Document   : link1
    Created on : 24-08-2016, 19:46:43
    Author     : cetecom
--%>
<html>
<head>
  <title>Sitio Virtual</title>
  <link rel="shortcut icon" href="imagenes/icono.png">
  <link rel="stylesheet" href="misestilos.css">
</head>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body aling="center">
<%String nombre= (String) session.getAttribute("nombreUsuario");
if (nombre != null){
    out.println("<p align='right'>USUARIO CONECTADO: "+nombre+"</p>");
        out.println("<h1>INGRESO DE PRODUCTOS</h1>");
        out.println("<form name='productos' action='productosServlet' method='POST'>");
        out.println("    Ingrese Código&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:<input type='text' name='codigo' size='5' /><br>");
        out.println("    Ingrese Descripción:<input type='text' name='descripcion' size='20' /><br>");
        out.println("    Ingrese Marca&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:<input type='text' name='marca' size='15' /><br>");
        out.println("<br><input type='submit' value='Ingresar' name='ing_producto' />");
        out.println("<input type='button' value='Volver Atrás' onclick='history.back()' style=' font-family: Verdana; font-size: 10 pt'><br />");
        out.println("</form>");
}
else{
    out.println("Debe Loguearse en el Sistema <br />");
    out.println("<input type='button' value='Volver Atrás' onclick='history.back()' style=' font-family: Verdana; font-size: 10 pt'><br />");
}   
%>
</body>
</html>
