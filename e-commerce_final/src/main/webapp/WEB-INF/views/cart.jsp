<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <style type="text/css">
  <%@include file="css/cart.css" %>
</style>
<title>Insert title here</title>
</head>
<body>
<%@include file="/WEB-INF/views/header.jsp" %>
<div class="container">
<h3>Cart Items</h3>
<table id="cart" border="1" cellpadding="5"  class="table table-bordered">
    				<thead>
						<tr>
						   <th style="width:10%">Product Image</th>
							<th style="width:10%">ProductName</th>
							<th style="width:8%">Quantity</th>
							<th style="width:10%" class="text-center">Subtotal</th>
							<th style="width:10%">Operation</th>
						</tr>
					</thead>
					<tbody>
					
					<c:forEach items="${cartitems }" var="cartitem">
<tr>
<form action="<c:url value="/cancel/${cartitem.citemid }" />" />
<td><img src="<c:url value='/resources/${cartitem.productid}.jpg'/>" width="100" height="100">
<td>${cartitem.productname }</td>
<td>${cartitem.quantity}</td>
<td>Rs.${cartitem.productprice * cartitem.quantity}</td>
<td>
<a href="<c:url value="/deleteCartItem/${cartitem.citemid }" />">DELETE </a>
</td>
</tr>
</c:forEach>
<tr>
</tr>
</tbody>
</table>
</div>
	<div class="container">
<div class="pull-left btn-fyi">	<a href="cancel"><< CANCEL</div></a>
<div class=" pull-right btn-fyi"><a href="CheckOut">CHECKOUT>></div></a>
	</div>			

</body>
</html>