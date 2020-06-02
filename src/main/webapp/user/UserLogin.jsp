<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<jsp:include page="/includes/header.jsp" />
<jsp:include page="/includes/sidebar.jsp" />
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 

	<head align=center >
<h1 align=center >USER LOGIN</h1>
    </head>
<section align=center>
	<form method="POST" action="Page.html">
		<c:if test="${!empty pro}">
		    <input type="hidden" name="productCode" value="${pro}"> 
		 </c:if> 
		<label class="pad_top">First Name:</label>
		<input type="text" name="fName" >
		<br>
		<label class="pad_top">Last Name:</label>
		<input type="text" name="lName" >
		<br>
		<label class="pad_top">Email:</label>
		<input type="email" name="email" >
		<br>
		
		<label class="pad_top">Address:</label>
	    <input type="text" name="address">

		<br>
		<label>&nbsp;</label>
		<input type="submit" value="Register" >
	</form>	
</section>


