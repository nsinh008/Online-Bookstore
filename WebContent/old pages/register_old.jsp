<%@ page pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <base href="/OnlineBookStore" target="_parent">
    <meta charset="utf-8">
    <title>ONLINE BOOKSTORE-User Sign up</title>
        <link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/css/common.css" />
        <link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/css/login_register.css" />
    
    <style type="text/css" media="screen">
        @import url('css/common.css');
        @import url('css/login_register.css');
    </style>
    <!--|　|-->
</head>
<body>
    <header id="p_header">
        Online Bookstore
        <div></div>
    </header>
    <article class="register">
    
    <form action="RegisterControllerServlet" method="post">
            <header>User Register
            <c:if test="${name_err != null }">
            		<strong style="color:#f00">${name_err }</strong>
            	</c:if>
            </header>
            <input type="hidden" name="op" value="register">
            <br>
            
            <p><label>First Name:</label><input name="fname"/></p>
            <p><label>Last Name:</label><input name="fname"/></p>
            <p><label>Password:</label><input name="pwd" type="password"/></p>
            <p><label>Confirm:</label><input name="confirm" type="password"/></p>
            <p><label>EmailAddress:</label><input name="email"/></p>
            <p><label>Street:</label><input name="street"/></p>
            <p><label>province:</label><input name="province"/></p>
            <p><label>Pincode:</label><input name="pincode"/></p>
            <p><label>Phone:</label><input name="phone"/></p>
            <p><button type="submit">Register</button></p>
        </form>
    </article> 
    
    
    <footer id="p_footer">
        <div></div>
        @Copyright <strong>ONLINE BOOKSTORE</strong>
    </footer>
</body>
</html>
