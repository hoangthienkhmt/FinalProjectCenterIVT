<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!--A Design by W3layouts
Author: W3layout
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE html>
<html>
<head>
<title>Big shope A Ecommerce Category Flat Bootstarp Resposive Website Template | Register :: w3layouts</title>
<link href="/resources/css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<!--theme-style-->
<link href="/resources/css/style.css" rel="stylesheet" type="text/css" media="all" />
<!--//theme-style-->
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!--fonts-->
<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700,800' rel='stylesheet' type='text/css'>
	<link rel="shortcut icon" href="/resources/images/icon_izw_icon.ico">
<!--//fonts-->
<script src="/resources/js/jquery.min.js"></script>
</head>
<body>
	<!--header-->
	<div class="header">
		<div class="top-header">
			<div class="container">
				<div class="top-header-left">
					<ul class="support">
						<li><a href="/"><label> </label></a></li>
						<li><a href="/">24x7 live<span class="live"> support</span></a></li>
					</ul>
					<ul class="support">
						<li class="van"><a href="/"><label> </label></a></li>
						<li><a href="/">Free shipping <span class="live">on order over 500</span></a></li>
					</ul>
					<div class="clearfix"> </div>
				</div>
				<div class="clearfix"> </div>
			</div>
		</div>
		<div class="bottom-header">
			<div class="container">
				<div class="header-bottom-left">
					<div class="logo">
						<a href="/"><img src="/resources/images/logo.png" alt=" " /></a>
					</div>
					<div class="search">
						<input type="text" value="" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = '';}" >
						<input type="submit"  value="SEARCH">
					</div>
					<div class="clearfix"> </div>
				</div>
				<c:if test="${username != null}">
					<div class="header-bottom-right">
						<div class="account"><a href="/login"><span> </span>${username}</a></div>
						<ul class="login">
							<li><a href="/logout"><span> </span>LOGOUT</a></li>
						</ul>
						<div class="cart"><a href="/viewCart" ><span> </span>CART</a></div>
						<div class="clearfix"> </div>
					</div></c:if>
				<c:if test="${username == null}">
					<div class="header-bottom-right">
						<ul class="login">
							<li><a href="/login"><span> </span>LOGIN</a></li> | <li ><a href="/register">SIGNUP</a></li>
						</ul>

						<div class="cart"><a href="/viewCart" ><span> </span>CART</a></div>
						<div class="clearfix"> </div>
					</div></c:if>
				<div class="clearfix"> </div>
			</div>
		</div>
	</div>
	<!---->
	<div class="container">
		<form:form action="${action}" method="post" modelAttribute="user">
		<div class="register">
				 <div class="  register-top-grid">
					<h3>PERSONAL INFORMATION</h3>
					<div class="mation">
						<span>userName<label>*</label></span>
						<%--<form:input path="fullName" id="fullName"> </form:input>--%>
						<form:input  path="userName" class="form-control"  placeholder="Enter User Name"></form:input>
						 <span>Email<label>*</label></span>
						<form:input  path="email" class="form-control"  placeholder="Enter email"></form:input>
                        <span>Date of birth<label>* (dd/MM/yyyy)</label></span>
                         <form:input  type="date"  path="dob" class="form-control" cssStyle="width: auto;"></form:input>
                        <script>
                            $( function() {
                                $( "#datepicker" ).datepicker({dateFormat: 'yy-mm-dd', minDate:(0), maxDate:(365)});
                            } );
                        </script>
                        <span>Address<label>*</label></span>
                        <form:input  path="address" class="form-control"  placeholder="Enter address"></form:input>
						<span>Password<label>*</label></span>
						<form:input  path="password" class="form-control" id="passWord" placeholder="Enter passWord" type="password" cssStyle="width: 680px;"></form:input>
                    </div>
					 <span>PhoneNumber<label>*</label></span>
					 <form:input  path="phone" class="form-control"  placeholder="Enter phone number"></form:input>
					 <button type="submit" class="btn btn-success">Sign up</button>
				 </div>
					 <div class="clearfix"> </div>
					 </div>
				     <div class="  register-bottom-grid">
							<div class="mation">
							</div>
					 </div>
		</form:form>
	</div>
	<!---->
			<div class="footer">
				<div class="footer-top">
					<div class="container">
						<div class="latter">
							<h6>NEWS-LETTER</h6>
							<div class="sub-left-right">
								<form>
									<input type="text" value="Enter email here"onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Enter email here';}" />
									<input type="submit" value="SUBSCRIBE" />
								</form>
							</div>
							<div class="clearfix"> </div>
						</div>
						<div class="latter-right">
							<p>FOLLOW US</p>
							<ul class="face-in-to">
								<li><a href="#"><span> </span></a></li>
								<li><a href="#"><span class="facebook-in"> </span></a></li>
								<div class="clearfix"> </div>
							</ul>
							<div class="clearfix"> </div>
						</div>
						<div class="clearfix"> </div>
					</div>
				</div>
				<div class="footer-bottom">
					<div class="container">
						<div class="footer-bottom-cate">
							<h6>Info</h6>
							<ul>
								<li><a href="#">Introduce</a></li>
								<li><a href="#">Infomation</a></li>
								<li><a href="#">Contact</a></li>
							</ul>
						</div>
						<div class="footer-bottom-cate bottom-grid-cat">
							<h6>Product</h6>
							<ul>
								<li><a href="#">Sale off</a></li>
								<li><a href="#">Top sale</a></li>
							</ul>
						</div>
						<div class="footer-bottom-cate">
							<h6>HELP</h6>
							<ul>
								<li><a href="#">Send Require</a></li>
								<li><a href="#">Payment</a></li>
							</ul>
						</div>
						<div class="clearfix"> </div>
					</div>
				</div>
			</div>
</body>
</html>