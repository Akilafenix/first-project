<%@ page language="java" contentType="text/html"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<%@include file="header.jsp"%>
<br><br><br><br><br><br><br><br><br>

<table width="60%" align="center" border="5">
<td rowspan="7"><img src="<c:url value="/resources/images/${prodinfo.prodid}.jpg"/>"/></td>
<tr bgcolor="black">
<td colspan="3"><center><b><h4>Product Description</h4></b></center></td>
</tr>


<tr>
<td>Product Name</td><td>${prodinfo.prodname}</td>
</tr>

<tr>
<td>Product Desc</td><td>${prodinfo.proddesc}</td>
</tr>
<tr>
<td>Price</td><td>Rs.${prodinfo.price}</td>
</tr>
<tr>
<td>





<form action="<c:url value="/addToCart/${prodinfo.prodid}"/>" method="get">
</td>
<td>
<select name="quantity">

    <option hidden="true"><h4>Quantity</h4></option>
    <option name="1">1</option>
    <option name="2" >2</option>
    <option name="3" >3</option>
    <option name="4" >4</option>
    <option name="5" >5</option>
    
    
</select>
<input type="submit" value="AddToCart" />


</td>
</form>
</tr>


</table>
<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
<%@include file="footer.jsp" %>