<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Register here</title>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <style type="text/css">
  <%@include file="css/reg.css" %>
</style>
</head>
<body>  
<header>
<div>
<p></p><br>
</div>
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      <img alt="logo" src="images/toyvault1.jpg/" width=100px height=70px>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        <li><a href="index"><span class="glyphicon glyphicon-home"></span>Home</a></li>
       <li class="dropdown">
          <a class="dropdown-toggle" data-toggle="dropdown" href="#">Product <span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="#">Page 1-1</a></li>
            <li><a href="#">Page 1-2</a></li>
            <li><a href="#">Page 1-3</a></li>
          </ul>
        </li>        
        <li><a href="Admin"><span class="glyphicon glyphicon-user"></span>Admin</a></li>
      </ul>
      <ul class="nav navbar-nav navbar-right">
        <li><a href="reg"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
        <li><a href="login"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
        <li><a href="#"><span class="glyphicon glyphicon-shopping-cart"> Cart</span></a></li>
      </ul>
    </div>
  </div>
</nav>
</header> 
  <form:form action="reg" method="post" commandName="user">
  <div class="register">
  <h1>Register here</h1>
  <form:errors path="firstname"></form:errors><br>
    <p> <label><b>First Name : </b></label><form:input type="text" placeholder="Enter Firstname" path="firstname" required="true"/></p><br>  
    <form:errors path="lastname"></form:errors><br>
   <p> <label><b>Last name : </b></label><form:input type="text" placeholder="Enter Lastname" path="lastname" required="true"/> </p><br>
    <form:errors path="phone"></form:errors><br>
   <p> <label><b>Phone number : </b></label><form:input type="text" placeholder="Enter Phone_no" path="phone" required="true"/></p><br>
   <form:errors path="address"></form:errors><br>
   <p> <label><b>Address : </b></label><form:input type="text" placeholder="Enter Address" path="address" required="true"/></p><br>
    <form:errors path="email"></form:errors><br>
   <p> <label><b>E-mail id: </b></label><form:input type="email" placeholder="Enter E-mail" path="email" required="true"/></p><br>
    <form:errors path="username"></form:errors><br>
   <p> <label><b>User Name : </b></label><form:input type="text" placeholder="Enter Username" path="username" required="true"/></p><br>
    <form:errors path="password"></form:errors><br>
   <p> <label><b>Password: </b></label><form:input type="password" placeholder="Enter password" path="password" required="true"/></p><br>
    <p><button type="submit">ok</button><p>
  </div>
  </form:form>
  <br>
  <br>
  <br>
  <br>
  <br>
  <br>
  <br>
  <br>
  <footer>
<nav class="navbar navbar-default navbar-fixed-bottom">
  <div class="container-fluid">
    <div class="navbar-header">
		<a class="navbar-brand" href="#">© 2015,Toy vault, All rights reserved</a>
	</div>
    </div>
    <ul class="nav navbar-nav navbar-right">
        <li><a href="about"><span class="glyphicon glyphicon-info-sign"></span> About us</a></li>
        <li><a href="contact"><span class="glyphicon glyphicon-earphone"></span> Contact us</a></li>
      </ul>
  </div>
</nav>
    </footer>
</body>
</html>


