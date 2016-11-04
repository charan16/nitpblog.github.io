<%-- 
    Document   : post
    Created on : 13 Jun, 2016, 12:07:15 AM
    Author     : Personal
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.Connection,java.sql.Statement,java.sql.ResultSet,java.sql.DriverManager" %>
<%@page session="true"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>post Page</title>
    </head>
    <body>
       <% Class.forName("oracle.jdbc.driver.OracleDriver");
             Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","nitp","nitp");
           
            Statement stmt=con.createStatement();
           String username=(String) session.getAttribute("username");
           
            
         stmt.executeUpdate("insert into post values( '"+username+"','"+request.getParameter("post")+"','"+1+"')");
          
        response.sendRedirect("homepage.jsp?mes=true");
        
       %>
    </body>
</html>
