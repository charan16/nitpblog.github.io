<%-- 
    Document   : friend.jsp
    Created on : 13 Jun, 2016, 8:56:00 PM
    Author     : Personal
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.Connection,java.sql.DriverManager,java.sql.ResultSet,java.sql.Statement"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
         Class.forName("oracle.jdbc.driver.OracleDriver");
             Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","nitp","nitp");
           
            Statement stmt=con.createStatement();
              stmt.executeUpdate("insert into friends values('"+session.getAttribute("username")+"','"+request.getParameter("friend")+"')");
      response.sendRedirect("homepage.jsp");  %>
    </body>
</html>
