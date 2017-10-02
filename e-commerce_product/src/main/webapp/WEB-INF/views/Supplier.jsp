<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
 <style type="text/css">
  <%@include file="css/reg.css" %>
</style>
<title>Insert title here</title>
</head>
<body>
 <form:form action="savesupplier"  method="post" commandName="supp">
 <div class="register">
 <p> <label><b>supplier Name : </b></label><form:input type="text" path="suppname" required="true"/></p><br>  
  <p> <label><b>Supplier Phone : </b></label><form:input type="text" path="suppphone" required="true"/></p><br>  
   <p> <label><b>Supplier Address : </b></label><form:input type="text" path="suppaddress" required="true"/></p><br> 
   <p><button type="submit">ok</button><p>
</div>
</form:form>
</body>
</html>