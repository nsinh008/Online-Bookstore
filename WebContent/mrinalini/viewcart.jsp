<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
       <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
     	<%@ page import="java.util.List" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h3>Cart Items</h3>
	<jsp:useBean id="items_in_cart" scope="session" class="com.org.book.cart.Cart"/>
	<h4>Books</h4>
	<c:forEach var="item" items="${items_in_cart.bookcart}" >
		Title: <c:out value="${item.title}"/> <br>
		Author: <c:out value="${item.author}"/> <br>
		Quantity: <c:out value="${item.quantity}"/> <br>
		<p>
		<form action="/OnlineBookStore/Cart" method="post">			
			<input type ="hidden" name="title" value="${item.title}"> 
			<input type ="hidden" name="author" value="${item.author}">
			<input type ="hidden" name="quantity" value="${item.quantity}">
			<input type ="hidden" name="bookid" value="${item.bookid}">
			<input type="hidden" name="operation" value="add">
			<input type="Submit" value="Add Quantity">
		</form>	
		
		<p>
		<form action="/OnlineBookStore/Cart" method="post">
		<input type ="hidden" name="title" value="${item.title}"> 
			<input type ="hidden" name="author" value="${item.author}">
			<input type ="hidden" name="quantity" value="${item.quantity}">
			<input type ="hidden" name="bookid" value="${item.bookid}">
			<input type="hidden" name="operation" value="remove">
			<input type="Submit" value="Delete">
		</form>
		
	</c:forEach>
	
<a href="/OnlineBookStore/checkout.jsp">CheckOut</a>
<br> <a href="/OnlineBookStore/index.html">Continue Shopping</a>

</body>
</html>