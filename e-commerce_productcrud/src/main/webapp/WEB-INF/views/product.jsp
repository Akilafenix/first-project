<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <%@include file="/WEB-INF/views/header.jsp" %>

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

  <form:form action="saveproduct" method="post" commandName="product" enctype="multipart/form-data">
  <div class="register">
  <h1>Add Product</h1>
   <form:input type="hidden" placeholder="Product ID" path="productid" required="true"/>
   <p> <label><b>Product Name : </b></label><form:input type="text"  path="productname" required="true"/></p><br>  
   <p> <label><b>Product Price : </b></label><form:input type="text"  path="productprice" required="true"/> </p><br>
   <p> <label><b>Product Quantity : </b></label><form:input type="text"  path="quantity" required="true"/></p><br>
   <p> <label><b>Product Description : </b></label><form:input type="text" path="description" required="true"/></p><br>
   <p> <label><b>Product Image: </b></label><form:input  type="file"  path="pimage" /></p><br>
   <p> <label><b>Category: </b></label><form:select name="Category" path="catid" >
   <option value="-1" selected>--category--</option>
         <c:forEach var="category" items="${catlist}">
         <option value="${category.catid}">${category.catname}</option></c:forEach>
   </form:select>
   </p><br> 
    <p> <label><b>Supplier </b></label><form:select name="Supplier" path="suppid" >
    <option value="-1" selected>--supplier--</option>
         <c:forEach var="supplier" items="${supplist}">
         <option value="${supplier.suppid}">${supplier.suppname}</option></c:forEach> 
    </form:select>
    <br>
    <br>
    <p><button type="submit"  class="btn btn-info btn-lg">Add Product</button><p>
  </div>
  <br>
<br>
<br>
<div class="register">
<h3>Product details</h3>
</div>
<br>
<table border="1" cellpadding="5"  class="table table-bordered">
<thead>
<tr>
<th>Product id</th>
<th>Product name</th>
<th>Product price</th>
<th>Product quantity</th>
<th>Product description</th>
<th>Product image</th>

<th>Delete</th>
<th>Edit</th>
</tr>
</thead>
<c:forEach var="product" items="${productlist}">
<c:url value="/resources/${product.productid}.jpg" var="imageurl"></c:url>
<tbody>
<tr>
<td>${product.productid}</td>
<td>${product.productname}</td>
<td>${product.productprice}</td>
<td>${product.quantity }</td>
<td>${product.description}</td>
<td><img src="${imageurl}" height="50" width="50"></td>
<!-- <td>${product.pimage}</td> -->
</tr>
</tbody>
</c:forEach>
</table>
  </form:form>
  <br>
  <br>
  <br>
  <br>
  <br>
  <br>
  <br>
  <br>
</body>
</html>


