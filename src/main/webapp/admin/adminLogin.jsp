<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<jsp:include page="/includes/header.jsp" />
<jsp:include page="/includes/sidebar.jsp" />
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<section>
	<h2>ADMIN LOGIN<h2>

	<form method="POST" action="adminWelcome.html">
		UserName:<input type="text" name="username" >
		<br>
		Password:<input type="text" name="password" >
		<br>
		<input type="submit" value="Login" >
	</form>	
</section>


