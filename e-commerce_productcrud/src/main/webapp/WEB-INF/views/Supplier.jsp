<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
      <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
      <%@include file="/WEB-INF/views/header.jsp" %>
<%@include file="/WEB-INF/views/footer.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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
 <form:form action="savesupplier"  method="post" commandName="supplier">
 <div class="register">
 <h3>Add Supplier</h3>
 <br>
 <p> <label><b>supplier Name : </b></label><form:input type="text" path="suppname" required="true"/></p><br>  
  <p> <label><b>Supplier Phone : </b></label><form:input type="text" path="suppphone" required="true"/></p><br>  
   <p> <label><b>Supplier Address : </b></label><form:input type="text" path="suppaddress" required="true"/></p><br> 
   <p><button type="submit"  class="btn btn-info btn-lg">ok</button><p>
</div>
<br>
<br>
<br>
<div class="register">
<h3>Supplier details</h3>
</div>
<br>
<table border="1" cellpadding="5"  class="table table-bordered">
<tr>
<th>Supplier id</th>
<th>Supplier Name</th>
<th>Supplier Phone</th>
<th>Supplier Address</th>
<th>Delete</th>
<th>Edit</th>
</tr>
<c:forEach var="supplier" items="${supplist}">
<tr>
<td>${supplier.suppid}</td>
<td>${supplier.suppname}</td>
<td>${supplier.suppphone}</td>
<td>${supplier.suppaddress}</td>
<td><a href="deletesupp?sid=${supplier.suppid}">Delete</a></td>
<td><a href="editsupp?sid=${supplier.suppid}">Edit</a></td>

</tr>
</c:forEach>
</table>
<br>
<br>
<br>
</form:form>
</body>
</html>