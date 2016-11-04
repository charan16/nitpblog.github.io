<%-- 
    Document   : register
    Created on : 12 Jun, 2016, 6:03:03 PM
    Author     : Personal
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.Connection,java.sql.Statement,java.sql.ResultSet,java.sql.DriverManager" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>register</title>
    </head>
    <body>
        <%
              Class.forName("oracle.jdbc.driver.OracleDriver");
             Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","nitp","nitp");
           
            Statement stmt=con.createStatement();
            ResultSet rs=stmt.executeQuery("select * from member where user_id='"+request.getParameter("username")+"'");
if(rs.next()){
   
    response.sendRedirect("newjsp.jsp?msg=true");
    
}else{
  stmt.executeUpdate("insert into member(first,last,user_id,pswrd,work,location,gender) values('"+request.getParameter("firstname")+"','"+request.getParameter("lastname")+"','"+request.getParameter("username")+"','"+request.getParameter("pswrd1")+"','"+request.getParameter("work")+"','"+request.getParameter("location")+"','"+request.getParameter("gender")+"')");
        session.setAttribute("username", request.getParameter("username"));
      %><%
     response.sendRedirect("about.jsp");
}       
%>
    </body>
</html>
