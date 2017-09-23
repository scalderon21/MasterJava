<%-- 
    Document   : salir
    Created on : 29-08-2016, 16:19:14
    Author     : cetecom
--%>
<%session.removeAttribute("nombreUsuario");
  response.sendRedirect("index.jsp");%>
