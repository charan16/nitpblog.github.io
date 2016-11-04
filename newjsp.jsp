<%-- 
    Document   : newjsp
    Created on : 12 Jun, 2016, 5:06:12 PM
    Author     : Personal
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<title>login page</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway">
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style>
body{
 background-image: url("http://p1.pichost.me/i/68/1928959.jpg");}

#contentinfo p{
height: 150px;
width : 90px;

padding-bottom: 20px;
}

</style>
<script>
    function valid(){
        var a=document.f.firstname.value;
        var b=document.f.lastname.value;
        var c=document.f.username.value;
        var d=document.f.pswrd1.value;
        var e=document.f.pswrd2.value;
       if(d!==e){
            alert("please reenter correct password");
            return false;
        }
    }
    </script>
</head>
<body>
    <%@include file="cache.jsp" %> 
    <%
    String msg=new String();
    msg=request.getParameter("msg");
    if(msg!=null){
        %>
        <script>alert("user already exits");</script>
    <%}
String rev=new String();
rev=request.getParameter("rev");
    if(rev!=null){
        %>
        <script>alert("user name or passwor is wrong!");</script>
    <%}
%>
        

<div  align="left" style="width:200px;position: absolute;top: 0px;left: 0px"><h1>NIT PATNA</h1>
    
    <img src="nitp.jpg"class="img-rounded"/>
</div>
<form action="logincheck.jsp" name="f2">
    <div class="form-group" align="right">
<div style="height:200px;width:200px;">
    <div align="left">
        <br>
    <label for="email">Email:</label>
     <input type="text" name="email" class="form-control" placeholder="enter email" required/>
    <div align="left">
    <label for="pswrd" align="left">Password:</label>
    </div>
    <input type="password"class="form-control" name="pswrd"placeholder="password" required/><center>
       <input type="submit" class="btn-default btn" name="login" value="login"/>
       <br><br><br>
</center>
    </div>
   
<br/>
</div>
</div>
</form>
<br><br><br>
    <div id="myCarousel" class="carousel slide" data-ride="carousel" style="position:absolute;left:20px;top:300px;">
  <!-- Indicators -->
  <ol class="carousel-indicators">
    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
    <li data-target="#myCarousel" data-slide-to="1"></li>
    <li data-target="#myCarousel" data-slide-to="2"></li>
    <li data-target="#myCarousel" data-slide-to="3"></li>
  </ol>

  <!-- Wrapper for slides -->
  <div class="carousel-inner" role="listbox">
    <div class="item active">
      <img src="1.jpg" alt="Chania">
    </div>

    <div class="item">
      <img src="2.jpg" alt="Chania">
    </div>

    <div class="item">
      <img src="3.jpg" alt="Flower">
    </div>

    <div class="item">
      <img src="4.jpg" alt="Flower">
    </div>
      <div class="item">
      <img src="5.jpg" alt="Flower">
      
    </div>
      <div class="item">
      <img src="6.jpg" alt="Flower">
    </div>
      <div class="item">
      <img src="7.jpg" alt="Flower">
    </div>
  </div>

  <!-- Left and right controls -->
  <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>

<br><br><br>
    <div style="height:450px;width:580px;position:absolute ;left:750px ;top:180px;" >
    <form action="register.jsp" name="f"method="get" onsubmit="return valid()"><h3>first visit </h3>
      <div class="form-group">
          <label for="firstname">FirstName:</label> 
<input type="text" class="form-control"style="padding:15px;" name="firstname" placeholder="first name" required/>     
<label for="last name">Last Name:</label>
<input type="text"class="form-control" style="padding:15px;"name="lastname" placeholder="last name" required="required"/></pre>
<label for="email">Email address:</label>
<input typr="text" class="form-control" style="padding:15px;"  name="username" placeholder="enter your mail" required/>
<label for="pswrd1">Password</label> 
<input type="password" class="form-control"style="padding:15px;" name="pswrd1" placeholder="enter your password"required/>
<label for="pswrd2">Reenter Password</label> 
<input type="password" class="form-control" style="padding:15px;"name="pswrd2" placeholder="re enter your password"required/>
<label for="work">Profession</label>
<input type="text" class="form-control" style="padding:15px" name="work" placeholder="what you are?" required/> 
<label for="location">City</label>
<input type="text" class="form-control" style="padding:15px" name="location" placeholder="where are you from?" required/>
<label for="gender">Gender</label>
<input type="radio" value="male" name="gender" required/>Male
<input type="radio" value="female" name="gender" required/>Female
<input type="radio" value="other"  name="gender" required/>Other
<center>
     <input type="submit"class="btn btn-default" style="padding:5px;"   name="register" value="register" required />
     </center>
    
   </div>
    </form>
</div>
</div>
    </body>
</html>
