<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

    <!-- Bootstrap core CSS -->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="css/portfolio-item.css" rel="stylesheet">
    <!-- jQuery library -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	
    

<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<style>
.navbar {
      margin-bottom: 0;
      z-index: 9999;
      border: 0;
      font-size: 15px !important;
      line-height: 1.42857143 !important;
      letter-spacing: 4px;
      border-radius: 0;
      font-family: Comic Sans MS, sans-serif;
    }  
    .container {
      padding: 80px 120px;
  }
    
    .jumbotron {
      background-color: #f4511e;
      color: #fff;
      padding: 100px 25px;
      font-family: Montserrat, sans-serif;
  }
    ul
	{
		list-style-type:none;
		margin:0;
		padding:0;
		overflow:hidden;
	
		
  }
  li a
  {
  	display:block;
  	color:white;
  	text-align: center;
  	 padding: 25px 20px;
    text-decoration: none;

  }
  li a:hover:not(.active)
  {
   background-color: #555;
   color:white;
  }
  li a.active
  {
  	 background-color: #4CAF50;
    color: white;
}
li
{
	float:left;
	font-size: 15px;
	font-family: Comic Sans MS;
}
h1
{
font-family: Comic Sans MS;
text-align: center;
}

input[type=text] {
   width: 700px;
    box-sizing: border-box;
    border: 2px solid #ccc;
    border-radius: 4px;
    font-size: 16px;
    background-color: white;
    background-image: url('images/Searchbar.png /');
    background-position: 10px 5px; 
    background-repeat: no-repeat;
    padding: 12px 20px 12px 60px;
    -webkit-transition: width 0.4s ease-in-out;
    transition: width 0.4s ease-in-out;
}

input[type=text]:focus {
    width: 350%;
}

</style>
 </head>

  <nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
    
       <img alt="logo" src="resources/toyvault1.jpg/" width=100px height=70px>
    </div>
<c:choose>
<c:when test="${sessionScope.UserLoggedIn != null}">
<li class="dropdown">
          <a class="dropdown-toggle" data-toggle="dropdown" href="product">Shop by category<span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="product">product</a></li>
            <li><a href="#">Page 1-2</a></li>
            <li><a href="#">Page 1-3</a></li>
          </ul>
          <li><a href="viewproduct">Product</a> </li>  
        </li>  
     
                	
                	<ul class="nav navbar-nav navbar-right">
       <li><a href=""><span class="glyphicon glyphicon-shopping-cart">Cart</span></a> </li>        	
      <li><a href="perform_logout"><span class="glyphicon glyphicon-log-out"></span>logout</a></li>
      </ul>
                     </c:when>
                
    			<c:otherwise>
  <ul class="nav navbar-nav">
 <li><a  href = "category">Category</a></li>
<li><a href = "supplier">supplier</a></li>
<li><a href = "product">Product</a></li></ul>
   <ul class="nav navbar-nav navbar-right">
      <li><a href="perform_logout"><span class="glyphicon glyphicon-log-out"></span> logout</a></li></ul>
    			</c:otherwise>
				</c:choose>
				
			
				<p>${sessionScope.UserLoggedIn}</p>
				</div>
</nav>




</html>
