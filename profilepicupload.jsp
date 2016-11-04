<%-- 
    Document   : profilepicupload
    Created on : 4 Nov, 2016, 11:05:14 AM
    Author     : Personal
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.Connection,java.sql.Statement,java.sql.ResultSet,java.sql.DriverManager" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ProfilePicupload</title>
    </head>
    <body>
        <%
        Class.forName("oracle.jdbc.driver.OracleDriver");
             Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","nitp","nitp");
           
            Statement stmt=con.createStatement();
        
        stmt.executeUpdate("insert into member(profilepic) values('"+request.getParameter("profilepic")+"')");
        
        %>
    </body>
</html>
