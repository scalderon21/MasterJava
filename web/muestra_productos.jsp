<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="MisPaquetes.conexion" %>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <title>Sitio Virtual</title>
  <link rel="shortcut icon" href="imagenes/icono.png">
  <link rel="stylesheet" href="misestilos.css">
</head>
<body>
<%
    String query = "select * from producto";
    conexion con= new conexion();
    Connection conn=con.conectarBD("duoc");
    Statement stmt=conn.createStatement();
    ResultSet rs = stmt.executeQuery(query);
    out.println("<h1 align'center'>LISTADO DE PRODUCTOS</H1><BR>");
    out.println("<table align'center'><tr><td>Código</td><td>Descripción</td><td>Marca</td></tr>");
    while (rs.next()){
        out.println("<tr><td align='center'>"+rs.getString("codigo")+"</td>");
        out.println("<td align='center'>"+rs.getString("descripcion")+"</td>");
        out.println("<td align='center'>"+rs.getString("marca")+"</td>");
        out.println("</tr>");
    }
%>
</table>
<br><input type="button" value="Volver Atrás" onclick="history.back()" style="font-family: Verdana; font-size: 10 pt"><br />
</body>
</html>