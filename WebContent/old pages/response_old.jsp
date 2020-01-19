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


<c:forEach items="${clock}" var="product">
<p>
  <c:out value="${product.title}"/> <br>
  <c:out value="${product.price}"/> <br>

  <a href="/OnlineBookStore/Cart?id=${product.bookid}&operation=add">AddToCart</a>
 </p>
</c:forEach>

</body>
</html>