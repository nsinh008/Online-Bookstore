<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%
	String login = "false"; 
	%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>


<form action="OrderProcessServlet" method="post">
	<%
	login = "true";
	%>
	<!--   <c:forEach items="${book}" var="bookid">
		  <c:set value="${product.title}"/> <br>
		  <c:out value="${product.price}"/> 
		  <c:set var = "bookid" scope = "session" value = "${bookid.bookid}"/>
		  <c:set var = "bookid" scope = "session" value = 1/>
	</c:forEach>-->
            <header>User order process
            <c:if test="${name_err != null }">
            		<strong style="color:#f00">${name_err }</strong>
            	</c:if>
            </header>
            <input type="hidden" name="op" value="order">
            <input type="hidden" name="login" value=<%=login%>>
            <input type ="hidden" name = "customerid" value = "12359">
            
            <input type ="hidden" name = "bookid" value = "1">
            <input type ="hidden" name = "bookid" value = "2">
            <input type ="hidden" name = "bookid" value = "3">
            <br>
            <p><button type="submit">Checkout</button></p>
        </form>
</body>
</html>