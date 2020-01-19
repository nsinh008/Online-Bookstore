<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<%@ page import="com.org.book.model.Book" %>
<%@ page import="java.util.*" %>
<!-- 

-->

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <title>MANDY BOOKSTORE</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <!-- Bootstrap styles -->
    <link href="assets/css/bootstrap.css" rel="stylesheet"/>
    <!-- Customize styles -->
    <link href="style.css" rel="stylesheet"/>
    <!-- font awesome styles -->
	<link href="assets/font-awesome/css/font-awesome.css" rel="stylesheet">

	<!-- Favicons -->
    <link rel="shortcut icon" href="assets/ico/favicon.ico">
  </head>
<body>
<!-- 
	Upper Header Section 
-->

<!--
Lower Header Section 
-->
<div class="container">
<div id="gototop"> </div>
<header id="header">
<div class="row">
	<div class="span4">
	<h1>
	<a class="logo" href="index.html"><span>MANDY BOOKSTORE</span> 
		<img src="assets/img/logo-bootstrap-shoping-cart.png" alt="bootstrap sexy shop">
	</a>
	</h1>
	</div>
	
</div>
</header>

<!--
Navigation Bar Section 
-->
<div class="navbar">
	  <div class="navbar-inner">
		<div class="container">
		  <a data-target=".nav-collapse" data-toggle="collapse" class="btn btn-navbar">
			<span class="icon-bar"></span>
			<span class="icon-bar"></span>
			<span class="icon-bar"></span>
		  </a>
		  <div class="nav-collapse">
			<ul class="nav">
			  <li class="active"><a href="index.html">Home	</a></li>
			 
			</ul>
			<ul class="nav pull-right">
			 <div class="navbar-inner">
		<div class="container">
		  <a data-target=".nav-collapse" data-toggle="collapse" class="btn btn-navbar">
			<span class="icon-bar"></span>
			<span class="icon-bar"></span>
			<span class="icon-bar"></span>
		  </a>
		  <div class="nav-collapse">
			<ul class="nav">
			  <li class="active">
			  <!-- <a href="index.html" >Cart	</a> -->
			  <form action="csfs" method="post">
			  <input type="submit" name="submitAccount" value="CART">
			  </form>
			  </li>
			 
			</ul>
			</ul>
		  </div>
		</div>
	  </div>
	</div>
<!-- 'u
Body Section 
-->
	<div class="row">
<div id="sidebar" class="span3">
<div class="well well-small">
	<ul class="nav nav-list">
		<li><a href="/OnlineBookStore/categoryviewservlet?Category=Biography"><span class="icon-chevron-right"></span>Biography</a></li>
		<li><a href="/OnlineBookStore/categoryviewservlet?Category=Business"><span class="icon-chevron-right"></span>Business</a></li>
		<li><a href="/OnlineBookStore/categoryviewservlet?Category=Finance"><span class="icon-chevron-right"></span>Finance</a></li>
		<li><a href="/OnlineBookStore/categoryviewservlet?Category=Fashion"><span class="icon-chevron-right"></span>Fashion</a></li>
		<li><a href="/OnlineBookStore/categoryviewservlet?Category=Computers"><span class="icon-chevron-right"></span>Computers</a></li>
		<li><a href="/OnlineBookStore/categoryviewservlet?Category=History"><span class="icon-chevron-right"></span>History</a></li>
		<li><a href="/OnlineBookStore/categoryviewservlet?Category=Children"><span class="icon-chevron-right"></span>Children</a></li>
		<li><a href="/OnlineBookStore/categoryviewservlet?Category=Fiction"><span class="icon-chevron-right"></span>Fiction </a></li>
		<li><a href="/OnlineBookStore/categoryviewservlet?Category=Home"><span class="icon-chevron-right"></span>Home</a></li>
		<li><a href="/OnlineBookStore/categoryviewservlet?Category=Crafts and Hobbies"><span class="icon-chevron-right"></span>Crafts and Hobbies</a></li>
		<li><a href="/OnlineBookStore/categoryviewservlet?Category=Romance"><span class="icon-chevron-right"></span>Romance</a></li>
		<li><a href="/OnlineBookStore/categoryviewservlet?Category=Science and Nature"><span class="icon-chevron-right"></span>Science and Nature</a></li>
		<li><a href="/OnlineBookStore/categoryviewservlet?Category=Poetry"><span class="icon-chevron-right"></span>Poetry</a></li>
		<li><a href="/OnlineBookStore/categoryviewservlet?Category=Comics"><span class="icon-chevron-right"></span>Comics</a></li>
		<li><a href="/OnlineBookStore/categoryviewservlet?Category=Food and Wine"><span class="icon-chevron-right"></span>Food and Wine</a></li>
		
		
	</ul>
</div>
			
		
		  </ul>

	</div>
	<div class="span9">
	<div class="well np">
		<div id="myCarousel" class="carousel slide homCar">
            <div class="carousel-inner">
			  <div class="item">
                <img style="width:100%" src="assets/img/Cov.png" alt="MANDY BOOKSTORE ">
                <div class="carousel-caption">
         
                </div>
              </div>
			 
              </div>
              </div>
             
              </div>
            </div>
            <a class="left carousel-control" href="#myCarousel" data-slide="prev">&lsaquo;</a>
            <a class="right carousel-control" href="#myCarousel" data-slide="next">&rsaquo;</a>
          </div>
        </div>
<!--
New Products
-->
	<div class="well well-small">
	<h3>New Products </h3>
	<hr class="soften"/>
		<div class="row-fluid">
		<div id="newProductCar" class="carousel slide">
            <div class="carousel-inner">
			<div class="item active">
			  <ul class="thumbnails">
			  <c:forEach items="${book}" var="product">  
				<li class="span3">
				<div class="thumbnail">
					
					<a href="#" class="tag"></a>
					<a href="product_details.html"><img src="${product.image}" alt="${product.title}"></a>
				</div>
				</li>
				
				 </c:forEach>
				<!--  <li class="span3">
				  <div class="thumbnail">
					<a class="zoomTool" href="product_details.html" title="add to cart"><span class="icon-search"></span> QUICK VIEW</a>
					<a href="#" class="tag"></a>
					<a  href="product_details.html"><img src="assets/img/BioStev.png" alt="Steve Jobs"></a>
				  </div>
				</li>
				<li class="span3">
				  <div class="thumbnail">
					<a class="zoomTool" href="product_details.html" title="add to cart"><span class="icon-search"></span> QUICK VIEW</a>
					<a href="#" class="tag"></a>
					<a  href="product_details.html"><img src="assets/img/BusIntel.png" alt="The Intelligent Investor"></a>
				  </div>
				</li>
				<li class="span3">
				  <div class="thumbnail">
					<a class="zoomTool" href="product_details.html" title="add to cart"><span class="icon-search"></span> QUICK VIEW</a>
					<a  href="product_details.html"><img src="assets/img/EntBet.png" alt="A Better Me"></a>
				  </div>
				</li>
			  </ul>
			  </div>
		   <div class="item">
		  <ul class="thumbnails">
			<li class="span3">
			  <div class="thumbnail">
				<a class="zoomTool" href="product_details.html" title="add to cart"><span class="icon-search"></span> QUICK VIEW</a>
				<a  href="product_details.html"><img src="assets/img/DC.png" alt="DC The Ultimate Character"></a>
			  </div>
			</li>
			<li class="span3">
			  <div class="thumbnail">
				<a class="zoomTool" href="product_details.html" title="add to cart"><span class="icon-search"></span> QUICK VIEW</a>
				<a  href="product_details.html"><img src="assets/img/CraftsVogue.png" alt="Vogue Knitting: The Ultimate Knitting Book"></a>
			  </div>
			</li>
			<li class="span3">
			  <div class="thumbnail">
				<a class="zoomTool" href="product_details.html" title="add to cart"><span class="icon-search"></span> QUICK VIEW</a>
				<a  href="product_details.html"><img src="assets/img/RomLov.png" alt="LoveStory"></a>
			  </div>
			</li>
			<li class="span3">
			  <div class="thumbnail">
				<a class="zoomTool" href="product_details.html" title="add to cart"><span class="icon-search"></span> QUICK VIEW</a>
				<a  href="product_details.html"><img src="assets/img/FashOxf.png" alt=""></a>
			  </div>
			</li>
			-->
		  </ul>
		  </div>
		   </div>
		  <a class="left carousel-control" href="#newProductCar" data-slide="prev">&lsaquo;</a>
            <a class="right carousel-control" href="#newProductCar" data-slide="next">&rsaquo;</a>
		  </div>
		  </div>
		  
		<div class="row-fluid">
		  <ul class="thumbnails">
			<li class="span4">
			  <div class="thumbnail">
				 
				<a class="zoomTool" href="product_details.html" title="add to cart"><span class="icon-search"></span> QUICK VIEW</a>
				<a href="product_details.html"><img src="assets/img/Anastasia.png" alt=""></a>
				<div class="caption cntr">
					<p>Novel</p>
					<p><strong> $15</strong></p>
					<h4><a class="shopBtn" href="#" title="add to cart"> Add to cart </a></h4>
					<div class="actionList">
						<a class="pull-left" href="#">Add to Wish List </a> 
						<a class="pull-left" href="#"> Add to Compare </a>
					</div> 
					<br class="clr">
				</div>
			  </div>
			</li>
			<li class="span4">
			  <div class="thumbnail">
				<a class="zoomTool" href="product_details.html" title="add to cart"><span class="icon-search"></span> QUICK VIEW</a>
				<a href="product_details.html"><img src="assets/img/Pairings.png" alt=""></a>
				<div class="caption cntr">
					<p>Food and Wine</p>
					<p><strong> $45</strong></p>
					<h4><a class="shopBtn" href="#" title="add to cart"> Add to cart </a></h4>
					<div class="actionList">
						<a class="pull-left" href="#">Add to Wish List </a> 
						<a class="pull-left" href="#"> Add to Compare </a>
					</div> 
					<br class="clr">
				</div>
			  </div>
			</li>
			<li class="span4">
			  <div class="thumbnail">
				<a class="zoomTool" href="product_details.html" title="add to cart"><span class="icon-search"></span> QUICK VIEW</a>
				<a href="product_details.html"><img src="assets/img/Magic.png" alt=""></a>
				<div class="caption cntr">
					<p>Science and Nature</p>
					<p><strong> $15</strong></p>
					<h4><a class="shopBtn" href="#" title="add to cart"> Add to cart </a></h4>
					<div class="actionList">
						<a class="pull-left" href="#">Add to Wish List </a> 
						<a class="pull-left" href="#"> Add to Compare </a>
					</div> 
					<br class="clr">
				</div>
			  </div>
			</li>
		  </ul>
		</div>
	</div>
	<!--
	Featured Products
	-->
		<div class="well well-small">
		  <h3><a class="btn btn-mini pull-right" href="products.html" title="View more">VIew More<span class="icon-plus"></span></a> Featured Products  </h3>
		  <hr class="soften"/>
		  <div class="row-fluid">
		  <ul class="thumbnails">
			<li class="span4">
			  <div class="thumbnail">
				<a class="zoomTool" href="product_details.html" title="add to cart"><span class="icon-search"></span> QUICK VIEW</a>
				<a  href="product_details.html"><img src="assets/img/Honey.png" alt=""></a>
				<div class="caption">
				  <h5>Poetry</h5>
				  <h4>
					  <a class="defaultBtn" href="product_details.html" title="Click to view"><span class="icon-zoom-in"></span></a>
					  <a class="shopBtn" href="#" title="add to cart"><span class="icon-plus"></span></a>
					  <span class="pull-right">$12</span>
				  </h4>
				</div>
			  </div>
			</li>
			<li class="span4">
			  <div class="thumbnail">
				<a class="zoomTool" href="product_details.html" title="add to cart"><span class="icon-search"></span> QUICK VIEW</a>
				<a  href="product_details.html"><img src="assets/img/Stars.png" alt=""></a>
				<div class="caption">
				  <h5>Poetry</h5>
				  <h4>
					  <a class="defaultBtn" href="product_details.html" title="Click to view"><span class="icon-zoom-in"></span></a>
					  <a class="shopBtn" href="#" title="add to cart"><span class="icon-plus"></span></a>
					  <span class="pull-right">$20</span>
				  </h4>
				</div>
			  </div>
			</li>
			<li class="span4">
			  <div class="thumbnail">
				<a class="zoomTool" href="product_details.html" title="add to cart"><span class="icon-search"></span> QUICK VIEW</a>
				<a  href="product_details.html"><img src="assets/img/Selfish.png" alt=""/></a>
				<div class="caption">
				  <h5>Science and Nature</h5>
				  <h4>
					  <a class="defaultBtn" href="product_details.html" title="Click to view"><span class="icon-zoom-in"></span></a>
					  <a class="shopBtn" href="#" title="add to cart"><span class="icon-plus"></span></a>
					  <span class="pull-right">$20</span>
				  </h4>
				</div>
			  </div>
			</li>
		  </ul>	
	</div>
	</div>
	
	
	</div>

<a href="#" class="gotop"><i class="icon-double-angle-up"></i></a>
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="assets/js/jquery.js"></script>
	<script src="assets/js/bootstrap.min.js"></script>
	<script src="assets/js/jquery.easing-1.3.min.js"></script>
    <script src="assets/js/jquery.scrollTo-1.4.3.1-min.js"></script>
    <script src="assets/js/shop.js"></script>
  </body>
</html>