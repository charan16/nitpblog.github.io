<%-- 
    Document   : homepage
    Created on : 12 Jun, 2016, 7:24:57 PM
    Author     : Personal
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.Connection,java.sql.Statement,java.sql.ResultSet,java.sql.DriverManager" %>
<!DOCTYPE HTML>
<html>
<head>
<title>home page</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="http://www.w3schools.com/lib/w3.css">
<link rel="stylesheet" href="http://www.w3schools.com/lib/w3-theme-blue-grey.css">
<link rel='stylesheet' href='https://fonts.googleapis.com/css?family=Open+Sans'>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.min.css">

<style>
#mad{
height:50px;
width :1480px;
background-color:cream;
opacity:0.7%;
font-size:150%;
}
p.guru{
width:100px;
background-color:lightgrey;
}

	
#mat{
background-color:cream;
 height:200px;
 width:100px;
 float:right;
 position:relative;
	
 
}
	
	/* Chrome, Safari, Opera */
@-webkit-keyframes  extra{
 0%   {  top:100px;}
    25%  { top:150px;}
    50%  { top:250px;}
    75%  { top:550px;}
    100% { top:900px;}
}
    



/* Standard syntax */
@keyframes extra{
 0%   { top:100px;}
    25%  { top:150px;}
    50%  { top:250px;}
    75%  { top:550px;}
    100% { top:900px;}
}
#map{
background-color:cream;/*birthdays*/
 height:200px;
 width:100px;
 float:right;
 position:relative;
	
 -webkit-animation-name: extra; /* Chrome, Safari, Opera */
    -webkit-animation-duration: 5s; /* Chrome, Safari, Opera */
    -webkit-animation-iteration-count:infinite; /* Chrome, Safari, Opera */
     -webkit-animation-delay:2s; /* Chrome, Safari, Opera */
    animation-name: extra;
    animation-duration:5s;
    animation-iteration-count:infinite;
 
     animation-delay:2s;
 
}
	
	/* Chrome, Safari, Opera */
@-webkit-keyframes  extra{
 0%   {  top:100px;}
    25%  { top:150px;}
    50%  { top:250px;}
    75%  { top:550px;}
    100% { top:900px;}
}
    



/* Standard syntax */
@keyframes extra{
 0%   { top:100px;}
    25%  { top:150px;}
    50%  { top:250px;}
    75%  { top:550px;}
    100% { top:900px;}
}
#mask{
background-color:cream;/*tech-father*/ 
 height:200px;
 width:100px;
 float:right;
 position:relative;
	
 -webkit-animation-name: extra; /* Chrome, Safari, Opera */
    -webkit-animation-duration: 5s; /* Chrome, Safari, Opera */
    -webkit-animation-iteration-count:infinite; /* Chrome, Safari, Opera */

 
}
	
	/* Chrome, Safari, Opera */
@-webkit-keyframes  extra{
 0%   {  top:100px;}
    25%  { top:150px;}
    50%  { top:250px;}
    75%  { top:550px;}
    100% { top:900px;}
}
    



/* Standard syntax */
@keyframes extra{
 0%   { top:100px;}
    25%  { top:150px;}
    50%  { top:250px;}
    75%  { top:550px;}
    100% { top:900px;}
}
#man{
background-color:whitesmoke;/*junior notice-board*/
opacity:0.25%;

 height:200px;
 width:110px;
 float:right;
 position:relative;
	
 
 
}
	
	/* Chrome, Safari, Opera */
@-webkit-keyframes  example{
 0%   {  top:100px;}
    25%  { top:150px;}
    50%  { top:250px;}
    75%  { top:550px;}
    100% { top:900px;}
}
    



/* Standard syntax */
@keyframes example{
 0%   { top:100px;}
    25%  { top:150px;}
    50%  { top:250px;}
    75%  { top:550px;}
    100% { top:900px;}
}
button{
padding:2px;
}
ul {
    list-style-type: none;
    margin: 0;
    padding: 0;
    overflow: hidden;
    background-color: #333;
}

li {
    float: left;
}

li a {
    display: block;
    color: white;
    text-align: center;
    padding: 14px 16px;
    text-decoration: none;
}

li a:hover:not(.active) {
    background-color: #111;
}

.active {
    background-color: #4CAF50;
}

</style>
 <body class="w3-theme-l5">
    <%@include file="cache.jsp" %>
      <%
    String msg=new String();
    msg=request.getParameter("mes");
    if(msg=="true"){
        response.setIntHeader("Refresh",2);
    }
        %>
<div id="mad"><b><pre>
<input type="search" name="search" placeholder="you can search here" /></pre> 	
</div>
<div style="width:100%">
  <div style="background-color:#b5dcb3; width:100%">
     <ul>
  <li><a class="active" href="homepage.jsp">Home</a></li>
  <li><a href="profile.jsp">profile</a></li>
  <li><a href="news.jsp">Contact</a></li>
  <li><a href="logout.jsp">logout</a></li>
</ul>
  </div>
</div>
  <div class="w3-container w3-content" style="max-width:2000px;">
  <!-- The Grid -->
  <div class="w3-row">
    <!-- Left Column -->
    <div class="w3-col m2">
      <!-- Profile -->
      <div class="w3-card-2 w3-round w3-white">
        <div class="w3-container">
         <h4 class="w3-center">MY Profile</h4>
         <p class="w3-center"><img src="" class="w3-circle" style="height:106px;width:106px" alt="Avatar"></p>
         <hr>
         <p><i class="fa fa-pencil fa-fw w3-margin-right w3-text-theme"></i> </p>
         <p><i class="fa fa-home fa-fw w3-margin-right w3-text-theme"></i> London, UK</p>
         <p><i class="fa fa-birthday-cake fa-fw w3-margin-right w3-text-theme"></i> April 1, 1988</p>
        </div>
      </div>
    </div>
   
   <!--MIDDLW COLUM--> 
  <div  class="w3-col m7">
      <div>
      <form action="post.jsp"> 
       <div >
    
      <div class="w3-row-padding">
        <div class="w3-col m12">
          <div class="w3-card-2 w3-round w3-white">
            <div class="w3-container w3-padding">
              <h6 class="w3-opacity">What are you feeling today?</h6>
              <textarea name="post" contenteditable="true" class="w3-border w3-padding" rows="6"cols="50"></textarea>
              <input type="submit" value="Post" class="w3-btn w3-theme"/>
            </div>
          </div>
        </div>
      </div>
       </div>
    </form>
      </div>
  
      <br>
      <%
       Class.forName("oracle.jdbc.driver.OracleDriver");
             Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","nitp","nitp");
           
            Statement stmt=con.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE,
          ResultSet.CONCUR_READ_ONLY);
            ResultSet rs=stmt.executeQuery("select * from post");
            rs.last();
            %>
          
            <%
      while(rs.previous()){%>
         <div class="w3-container w3-card-2 w3-white w3-round w3-margin"><br>
        <img src="/w3images/avatar2.png" alt="Avatar" class="w3-left w3-circle w3-margin-right" style="width:60px">
        <h4><%=rs.getString(1)%></h4><br>
        <hr class="w3-clear">
        <p><%=rs.getString(2)%></p>
         <button type="button" class="w3-btn w3-theme-d1 w3-margin-bottom"><i class="fa fa-thumbs-up"></i>  Like</button>
        <button type="button" class="w3-btn w3-theme-d2 w3-margin-bottom"><i class="fa fa-comment"></i>  Comment</button>
      </div>
          

          <%
         
}%>
  </div>
  <br>
  <div class="w3-col m2">
      <div>
     
          <%
           Statement stmt1=con.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE,
          ResultSet.CONCUR_READ_ONLY);
           Statement stmt2=con.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE,
          ResultSet.CONCUR_READ_ONLY);
            ResultSet rs1=stmt1.executeQuery("select first,last,user_id from member where user_id!='"+session.getAttribute("username")+"'");
         
            ResultSet  rs2=stmt2.executeQuery("select friend from friends where u_id='"+session.getAttribute("username")+"'");
     int flag=0;
            while(rs1.next()){
                flag=0;
      while(rs2.next()){
      if(rs1.getString(3).equals(rs2.getString(1))){
          flag=1;
      }
      
      } if(flag==0){%>
      <div style="width:350px;"class="w3-card-4 w3-round w3-white w3-center"class="w3-container">
          <p><%=rs1.getString(1)%><%=rs1.getString(2)%></p>
      <p><%=rs1.getString(3)%></p>
      <a href="friend.jsp?friend=<%=rs1.getString(3)%>">friend</a>
      <br> <br>
      </div>
      <%

}
}%>
      </div>
  </div>
 
</div>
  </div>
</body>
</html>




