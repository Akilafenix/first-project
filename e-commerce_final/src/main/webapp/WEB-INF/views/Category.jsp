<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <%@include file="/WEB-INF/views/header.jsp" %>

<%@include file="/WEB-INF/views/footer.jsp" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
 <style type="text/css">
  <%@include file="css/reg.css" %>
</style>
<title>Insert title here</title>
</head>
<body>
 <form:form action="saveCategory" method="post" commandName="category">
 <div class="register">
 <h3>Add Category</h3>
 <br>
 <p> <label><b>Category Name : </b></label><form:input type="text" path="catname" required="true"/></p><br>  
  <p> <label><b>Category Description : </b></label><form:input type="text" path="catprice" required="true"/></p><br>  
   <p><button type="submit" class="btn btn-info btn-lg">ENTER</button><p>
</div>
<br>
<br>
<br>
<div class="register">
<h3>Category details</h3>
</div>
<br>
<table border="1" cellpadding="5"  class="table table-bordered">
<tr>
<th>Category id</th>
<th>Category Name</th>
<th>Category description</th>
<th>Delete</th>
<th>Edit</th>
</tr>
<c:forEach var="category" items="${catlist}">
<tr>
<td>${category.catid}</td>
<td>${category.catname }</td>
<td>${category.catprice}</td>
<td><a href="deletecat?cid=${category.catid}">Delete</a></td>
<td><a href="editcategory?cid=${category.catid}">edit</a></td>
</tr>
</c:forEach>
</table>
<br>
<br>
<br>
</form:form>
</body>
</html>