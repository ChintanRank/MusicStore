<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:include page="/includes/header.jsp" />
<jsp:include page="/includes/sidebar.jsp" />
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<section>

<h1>Downloads</h1>

<h2>Paddlefoot - The Second CD</h2>
    
<table border= "1px solid black" >
<tr>
    <th>Song title</th>
    <th>Audio Format</th>
</tr>
<tr>
    <td>Neon Lights</td>
    <td><audio controls>
     <!-- Changed from pg. 233 to point inside this web app -->
    <source src="/sound/${productCode}/neon.mp3" />
    </audio></td>
</tr>
<tr>

    <td>Tank Hill</td>
    <td><audio controls>
    <source src="/sound/${productCode}/tank.mp3" />
  </audio></td>
</tr>
</table>

<li>
        <h1>Enter the quantity you want to buy : </h1>
        <form method="post" action="/userController/cart.html">
            <input type="number" name="productQuantity" value="Quantity" min="1" >
            <input type="hidden" name="productCode" value="${productCode}">
            <input type="submit" name="Add to Cart" value="Add To Cart">
        </form></li>
    

<c:url var="userWelcomeUrl" value="/userController/userWelcome.html" />
	<c:url var="cartURL" value="EndNode" />
	<c:url var="addToCartUrl" value="cart.html">
		<c:param name="addItem" value="true" />
	</c:url>

	
	<UL>
		<li><a href="${userWelcomeUrl}">User Home </a></li>
		<li><a href="${cartURL}">View Cart</a></li>
	</UL>

</section>