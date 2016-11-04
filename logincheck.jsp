<%-- 
    Document   : logincheck
    Created on : 12 Jun, 2016, 6:00:57 PM
    Author     : Personal
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>login check</title>
    </head>
    <body>
        <%
            String rev=new String();
            Class.forName("oracle.jdbc.driver.OracleDriver");
            Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","nitp","nitp");
        String username =request.getParameter("email");
        String pswrd =request.getParameter("pswrd");
        Statement st=con.createStatement();
        ResultSet rs=st.executeQuery("select * from member where user_id='"+username+"' and pswrd='"+pswrd+"'");
        if(rs.next()){
          
            session.setAttribute("username",username);
           
            response.sendRedirect("homepage.jsp");
        }else{
          
            response.sendRedirect("newjsp.jsp?rev=true");
        }
        %>
    </body>
</html>

