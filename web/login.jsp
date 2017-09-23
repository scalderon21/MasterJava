<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
        <h1>INGRESO DE USUARIO</h1>
        <form name="login" action="loginServlet" method="POST">
            Ingrese Usuario :<input type="text" name="usuario" value="" size="30" /><br>
            Ingrese Clave&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:<input type="text" name="clave" value="" size="10" /><br>
            <br><input type="submit" value="Ingresar" name="ing_login" />
            <input type="button" value="Volver Atrás" onclick="history.back()" style="font-family: Verdana; font-size: 10 pt"><br />
        </form>
    </body>
</html>
