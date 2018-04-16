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
<title>Big shope A Ecommerce Category Flat Bootstarp Resposive Website Template | Login :: w3layouts</title>
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
						<li class="van"><a href="#"><label> </label></a></li>
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
      	   <div class="account_grid">
			   <div class=" login-right">
			  	<h3>REGISTERED CUSTOMERS</h3>
				<p>If you have an account with us, please log in.</p>
				<form action="/j_spring_security_check"  method="post" id="fLogin">
					<input type="hidden" name="returnPage" value="index" />
				  <div>
					<span>User Name<label>*</label></span>
					<input  name="j_username" class="form-control" width="100px">
				  </div>
				  <div>
					<span>Password<label>*</label></span>
					<input type="password" name="j_password" class="form-control" width="100px">
				  </div>
					<button class="btn btn-success" type="submit"><i class="fa fa-sign-in" aria-hidden="true"></i> login</button>
			    </form>
			   </div>	
			    <div class=" login-left">
			  	 <h3>NEW CUSTOMERS</h3>
				 <p>By creating an account with our store, you will be able to move through the checkout process faster, store multiple shipping addresses, view and track your orders in your account and more.</p>
				 <a class="acount-btn" href="/register">Create an Account</a>
			   </div>
			   <div class="clearfix"> </div>
			 </div>
			 <div class="sub-cate">
				<div class=" top-nav rsidebar span_1_of_left">
                    <h3 class="cate">CATEGORIES</h3>
                    <ul class="menu">
                        <c:forEach items="${categoryEntityList}" var="category">
                            <li><a href="/product">${category.nameCategory} </a>
                            </li>
                        </c:forEach>
                    </ul>
					</div>
				<!--initiate accordion-->
		<script type="text/javascript">
			$(function() {
			    var menu_ul = $('.menu > li > ul'),
			           menu_a  = $('.menu > li > a');
			    menu_ul.hide();
			    menu_a.click(function(e) {
			        e.preventDefault();
			        if(!$(this).hasClass('active')) {
			            menu_a.removeClass('active');
			            menu_ul.filter(':visible').slideUp('normal');
			            $(this).addClass('active').next().stop(true,true).slideDown('normal');
			        } else {
			            $(this).removeClass('active');
			            $(this).next().stop(true,true).slideUp('normal');
			        }
			    });
			
			});
		</script>
	   		     	 <a class="view-all all-product" href="/product">VIEW ALL PRODUCTS<span> </span></a>
			</div>
			  <div class="clearfix"> </div>
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