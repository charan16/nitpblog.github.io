<%-- 
    Document   : logout
    Created on : 13 Jun, 2016, 8:15:23 PM
    Author     : Personal
--%>
 
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%@include file="cache.jsp" %>
        <%
            
            session.removeAttribute("username");
session.invalidate();    
response.sendRedirect("newjsp.jsp");%>
    </body>
</html>
