<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <title>Twitter Bootstrap shopping cart</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <!-- Bootstrap styles -->
    <link href="assets/css/bootstrap.css" rel="stylesheet"/>
    <!-- Customize styles -->
    <link href="style.css" rel="stylesheet"/>
    <!-- font awesome styles -->
	<link href="assets/font-awesome/css/font-awesome.css" rel="stylesheet">
		<!--[if IE 7]>
			<link href="css/font-awesome-ie7.min.css" rel="stylesheet">
		<![endif]-->

		<!--[if lt IE 9]>
			<script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
		<![endif]-->

	<!-- Favicons -->
    <link rel="shortcut icon" href="assets/ico/favicon.ico">
  </head>
<body>
<!-- 
	Upper Header Section 
-->
<div class="navbar navbar-inverse navbar-fixed-top">
	<div class="topNav">
		<div class="container">
			<div class="alignR">
				<div class="pull-left socialNw">
					<a href="#"><span class="icon-twitter"></span></a>
					<a href="#"><span class="icon-facebook"></span></a>
					<a href="#"><span class="icon-youtube"></span></a>
					<a href="#"><span class="icon-tumblr"></span></a>
				</div>
				<a href="index.html"> <span class="icon-home"></span> Home</a> 
				<a class="active" href="#"><span class="icon-user"></span> My Account</a> 
				<a href="register.html"><span class="icon-edit"></span> Free Register </a> 
				<a href="contact.html"><span class="icon-envelope"></span> Contact us</a>
				<a href="cart.html"><span class="icon-shopping-cart"></span> 2 Item(s) - <span class="badge badge-warning"> $448.42</span></a>
			</div>
		</div>
	</div>
</div>

<!--
Lower Header Section 
-->
<div class="container">
<div id="gototop"> </div>
<header id="header">
<div class="row">
	<div class="span4">
	<h1>
	<a class="logo" href="index.html"><span>Twitter Bootstrap ecommerce template</span> 
		<img src="assets/img/logo-bootstrap-shoping-cart.png" alt="bootstrap sexy shop">
	</a>
	</h1>
	</div>
	<div class="span4">
	<div class="offerNoteWrapper">
	<h1 class="dotmark">
	<i class="icon-cut"></i>
	Twitter Bootstrap shopping cart HTML template is available @ $14
	</h1>
	</div>
	</div>
	<div class="span4 alignR">
	<p><br> <strong> Support (24/7) :  0800 1234 678 </strong><br><br></p>
	<span class="btn btn-mini">[ 2 ] <span class="icon-shopping-cart"></span></span>
	<span class="btn btn-warning btn-mini">$</span>
	<span class="btn btn-mini">&pound;</span>
	<span class="btn btn-mini">&euro;</span>
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
			  <li class="active"><a href="/OnlineBookStore/allBook">Home	</a></li>
			</ul>
		  </div>
		</div>
	  </div>
	</div>
	
<!-- 
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
		<li style="border:0"> &nbsp;</li>	
	</ul>
</div>

			  <div class="well well-small alert alert-warning cntr">
				  <h2>50% Discount</h2>
				  <p> 
					 only valid for online order. <br><br><a class="defaultBtn" href="#">Click here </a>
				  </p>
			  </div>
			  <div class="well well-small" ><a><img src="assets/img/paypal.jpg" alt="payment method paypal"></a></div>
			
			<a class="shopBtn btn-block">Upcoming products <br><small>Click to view</small></a>
			<br>
			<br>
			<ul class="nav nav-list promowrapper">	
		  </ul>
	</div>
	
	<div class="span9">
	<div class="span9">
    <ul class="breadcrumb">
		<li><a href="/OnlineBookStore/allBook">Home</a> <span class="divider">/</span></li>
		<li class="active">Login</li>
    </ul>
	
<!-- Registration form -->
 
      <h3> Registration</h3>
      
   <form action= "RegisterControllerServlet" method="post">
	<hr class="soft"/>
	<div class="well">
	<div class="form-horizontal">
		<h3>Your Personal Details</h3>
		<div class="control-group">
		<label class="control-label">Title</label>
		<div class="controls">
		<select class="span1" name="days">
			<option value="">-</option>
			<option value="1">Mr.</option>
			<option value="2">Mrs</option>
			<option value="3">Miss</option>
		</select>
		</div>
		</div>
		<div class="control-group">
			<label class="control-label" for="inputFname">First name <sup>*</sup></label>
			<div class="controls">
			  <input type="text" name="fname" id="fname" placeholder="First Name" required>
			</div>
		 </div>
		 <div class="control-group">
			<label class="control-label" for="inputLname">Last name <sup>*</sup></label>
			<div class="controls">
			  <input type="text" name="lname" id="lname" placeholder="Last Name" required>
			</div>
		 </div>
		<div class="control-group">
		<label class="control-label" for="inputEmail">Email <sup>*</sup></label>
		<div class="controls">
		  <input type="text" name="email" id="email" placeholder="Email" required>
		</div>
	  </div>	  
		<div class="control-group">
		<label class="control-label">Password <sup>*</sup></label>
		<div class="controls">
		  <input type="password" name="pwd" id="pwd" placeholder="Password" required>
		</div>
	  </div>
	  <div class="control-group">
		<label class="control-label">Password <sup>*</sup></label>
		<div class="controls">
		  <input type="password" name="pwd" id="pwd" placeholder="Confirm Password" required>
		</div>
	  </div>
	</div>
</div>

<div class="well">
	<div class="form-horizontal" >
		<h3>Your Address Details</h3>
		<div class="control-group">
			<label class="control-label">Street <sup>*</sup></label>
			<div class="controls">
			  <input type="text" name="street" id="street" placeholder=" Street" required>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">City <sup>*</sup></label>
			<div class="controls">
			  <input type="text" name="city" id="city" placeholder="City" required>
			</div>
		</div>
		 <div class="control-group">
			<label class="control-label">Province <sup>*</sup></label>
			<div class="controls">
			  <input type="text" name="province" id="province" placeholder="Province" required>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">Country <sup>*</sup></label>
			<div class="controls">
			  <input type="text" name="country" id="country" placeholder="Country" required>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">ZIP <sup>*</sup></label>
			<div class="controls">
			  <input type="text" name="zip" id="zip" placeholder="ZIP" required>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">Phone <sup>*</sup></label>
			<div class="controls">
			  <input type="text" name="phone" id="phone" placeholder="phone" required>
			</div>
		</div>
	<div class="control-group">
		<div class="controls">
		 <button type="submit" name="submitAccount" value="Register" class="shopBtn exclusive pure-button pure-button-primary">">Register</button>
		</div>
	</div>
	</div>
	</div>
	</form>	
</div>
</div>
</div>
</div>

<!-- 
Clients 
-->
<section class="our_client">
	<hr class="soften"/>
	<h4 class="title cntr"><span class="text">Manufactures</span></h4>
	<hr class="soften"/>
	<div class="row">
		<div class="span2">
			<a href="#"><img alt="" src="assets/img/1.png"></a>
		</div>
		<div class="span2">
			<a href="#"><img alt="" src="assets/img/2.png"></a>
		</div>
		<div class="span2">
			<a href="#"><img alt="" src="assets/img/3.png"></a>
		</div>
		<div class="span2">
			<a href="#"><img alt="" src="assets/img/4.png"></a>
		</div>
		<div class="span2">
			<a href="#"><img alt="" src="assets/img/5.png"></a>
		</div>
		<div class="span2">
			<a href="#"><img alt="" src="assets/img/6.png"></a>
		</div>
	</div>
</section>

<!--
Footer
-->
<footer class="footer">
<div class="row-fluid">
<div class="span2">
<h5>Your Account</h5>
<a href="#">YOUR ACCOUNT</a><br>
<a href="#">PERSONAL INFORMATION</a><br>
<a href="#">ADDRESSES</a><br>
<a href="#">DISCOUNT</a><br>
<a href="#">ORDER HISTORY</a><br>
 </div>
<div class="span2">
<h5>Iinformation</h5>
<a href="contact.html">CONTACT</a><br>
<a href="#">SITEMAP</a><br>
<a href="#">LEGAL NOTICE</a><br>
<a href="#">TERMS AND CONDITIONS</a><br>
<a href="#">ABOUT US</a><br>
 </div>
<div class="span2">
<h5>Our Offer</h5>
<a href="#">NEW PRODUCTS</a> <br>
<a href="#">TOP SELLERS</a><br>
<a href="#">SPECIALS</a><br>
<a href="#">MANUFACTURERS</a><br>
<a href="#">SUPPLIERS</a> <br/>
 </div>
 <div class="span6">
<h5>The standard chunk of Lorem</h5>
The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for
 those interested. Sections 1.10.32 and 1.10.33 from "de Finibus Bonorum et 
 Malorum" by Cicero are also reproduced in their exact original form, 
accompanied by English versions from the 1914 translation by H. Rackham.
 </div>
 </div>
</footer>
<!-- /container -->

<div class="copyright">
<div class="container">
	<p class="pull-right">
		<a href="#"><img src="assets/img/maestro.png" alt="payment"></a>
		<a href="#"><img src="assets/img/mc.png" alt="payment"></a>
		<a href="#"><img src="assets/img/pp.png" alt="payment"></a>
		<a href="#"><img src="assets/img/visa.png" alt="payment"></a>
		<a href="#"><img src="assets/img/disc.png" alt="payment"></a>
	</p>
	<span>Copyright &copy; 2013<br> bootstrap ecommerce shopping template</span>
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

	