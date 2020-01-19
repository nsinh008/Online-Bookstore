<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>Response</title>
</head>
<body>

<h2>Title</h2>


<c:forEach items="${book}" var="product">
<p>
  Title: <c:out value="${product.title}"/> <br>
  Price: <c:out value="${product.price}"/> <br>
  Author: <c:out value="${product.author}"/> <br>
<a href="/OnlineBookStore/Cart?title=${product.title}&price=${product.price}&author=${product.author}&bookid=${product.bookid}&operation=add">AddToCart</a><br>
 </p>
</c:forEach>

</body>
</html>