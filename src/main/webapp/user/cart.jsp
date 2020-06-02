<%@page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<jsp:include page="/includes/header.jsp" />
<jsp:include page="/includes/sidebar.jsp" />
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<section>

<h1>Welcome to Cart </h1>
<h2>The added items are:-</h2>
		<table border=1>
			<tr>
  			  <th>ProductId</th>
    			<th>ProductQuantity</th> 
  			</tr>
  			<tr>
    			<td>${productId}</td>
    			<td>${productQuantity}</td> 
  			</tr>
  		</table>

<c:if test = "{!empty allProducts}">
<c:forEach items="${allProducts}">
       		<table border=1>
			<tr>
  			  <th>ProductId</th>
    			<th>ProductQuantity</th> 
  			</tr>
  			<tr>
    			<td>${productId}</td>
    			<td>${productQuantity}</td> 
  			</tr>
  		</table>	
			</c:forEach>
     
</c:if>
<c:if test = "{!empty allProducts}">
 <p>Hello:
       <c:url var="cartURL" value="EndNode" />
      <a href="${cartURL}">View Cart</a>
      <p>
        </c:if>
	<br>
<a href="userWelcome.html"> continue shopping!</a>


