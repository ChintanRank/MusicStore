<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<jsp:include page="/includes/header.jsp" />
<jsp:include page="/includes/sidebar.jsp" />

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<section>
	<link rel="stylesheet" href="/styles/main.css">
	
	<h1>List of albums</h1>

<p>
<a href="showProduct.html?productcode=8601">
    8601 (the band) - <em>True Life Songs and Pictures</em> - (mp3 sample played using HTML5)
</a><br>

<a href="showProduct.html?productcode=pf01">
    (pf01)Paddlefoot - <em>The First CD</em> - (mp3 sample played using HTML5, with servlet URL for mp3 data)
</a><br>

<a href="showProduct.html?productcode=pf02">
    (pf02)Paddlefoot - <em>The Second CD</em> - (mp3 samples played using Murach's page)
</a><br>

<a href="showProduct.html?productcode=jr01">
    (jr01)Joe Rut - <em>Genuine Wood Grained Finish</em> - (mp3 samples played using Murach's page)
</a>
</p>
<p>
<a href="EndNode" >View Cart</a>
</p>
</section>

