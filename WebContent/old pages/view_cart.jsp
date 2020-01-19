<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ page import="com.org.book.model.Book" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<h3>Cart Items</h3>
<br>

<c:forEach items="${cartItems}" var="item">
<p>
	<c:out value="${item.title}"/> <br>
	<c:out value="${item.author}"/> <br>
	<c:out value="${item.price}"/> <br>
	
	<input type="text" name="Qty">Quantity
	
	
	<form action="/OnlineBookStore/Cart" method="post">
	<input type="hidden" name="operation" value="remove">
	<input type="Submit" value="Remove">
	</form>	

</c:forEach>


<p>
<a href="/OnlineBookStore/checkout.jsp">CheckOut</a>
<br> <a href="/OnlineBookStore/index.html">Continue Shopping</a>
</p>

</body>
</html>