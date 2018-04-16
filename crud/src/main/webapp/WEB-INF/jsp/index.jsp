<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<title>index</title>
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
	<script src="/resources/js/jquery.twbsPagination.min.js"></script>
<!--script-->
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
					<form action="search" method="post">
						<div class="search">
							<input type="text" name="searchInput" value="" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = '';}" >
							<input type="submit"  value="SEARCH">
						</div>
					</form>
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
			<div class="shoes-grid">
			<a href="single.jsp">
			<div class="wrap-in">
				<div class="wmuSlider example1 slide-grid">		 
				   <div class="wmuSliderWrapper">		  
					   <article style="position: absolute; width: 100%; opacity: 0;">
						<div class="banner-matter">
						<div class="col-md-5 banner-bag">
							<img  class="img-responsive " src="/resources/images/naga.jpg" alt=" "  />
							</div>
							<div class="col-md-5 banner-bag">
								<img  class="img-responsive " src="/resources/images/brown.jpg" alt=" "  />
							</div>
							<div class="clearfix"> </div>
						</div>
						
					 	</article>
					 	<article style="position: absolute; width: 100%; opacity: 0;">					
						<div class="banner-matter">
						<div class="col-md-5 banner-bag">
							<img class="img-responsive " src="/resources/images/harappa.jpg" alt=" " />

							</div>
							<div class="col-md-5 banner-bag">

								<img class="img-responsive " src="/resources/images/pralay.jpg" alt=" " />
							</div>
							<div class="clearfix"> </div>
						</div>
						
					 	</article>
					 	<article style="position: absolute; width: 100%; opacity: 0;">					
						<div class="banner-matter">
						<div class="col-md-5 banner-bag">
							<img class="img-responsive " src="/resources/images/sap.jpg" alt=" " />
						</div>
							<div class="col-md-5 banner-bag">

								<img class="img-responsive " src="/resources/images/finance.jpg" alt=" " />
							</div>
							<div class="clearfix"> </div>
						</div>
						
					 	</article>
						
					 </div>
					 </a>
	                <ul class="wmuSliderPagination">
	                	<li><a href="#" class="">0</a></li>
	                	<li><a href="#" class="">1</a></li>
	                	<li><a href="#" class="">2</a></li>
	                </ul>
					 <script src="/resources/js/jquery.wmuSlider.js"></script>
				  <script>
	       			$('.example1').wmuSlider();         
	   		     </script> 
	            </div>
	          </div>
	           	</a>
	   		      <!---->
	   		     <div class="shoes-grid-left">
			<a href="/single">
				<c:forEach items="${bookTop}" var="top">
	   		     	<div class="col-md-6 ">
	   		     		<div class=" ">
							<a href="/single?id=${top.id}"  style="text-decoration: none;"><h4>${top.name}</h4></a>
						</div>
						<a href="/single?id=${top.id}">	<img class="img-responsive shoe-left" src="/resources/images/${top.img}" alt=" "  style="width: 200px;height: 300px;"/></a>
	   		     	</div></c:forEach>
					</a>
	   		     </div>
	   		     <div class="products">
						 <h5 class="latest-product">ALL PRODUCTS</h5>
						 <a class="view-all" href="/product">VIEW PRODUCT<span> </span></a>
				 </div>
	   		     <div>
					 <table id="dataTable">
						 <tbody>
						 <div id="test">
	<c:forEach items="${book}" var="books">
		<div class="col-md-4">
			<a href="/single?id=${books.id}"><img class="img-responsive chain" src="/resources/images/${books.img}" alt=" " /></a>
			<span class="star"> </span>
			<div class="">
				<a href="/single?id=${books.id}"style="text-decoration: none;"><h5><b>${books.name}</b></h5></a>
				<div class="star-price">
					<div class="">
						<span class="actual">${books.price}$</span>
						<span class="rating">
									        <input type="radio" class="rating-input" id="rating-input-1-5" name="rating-input-1">
									        <label for="rating-input-1-5" class="rating-star1"> </label>
									        <input type="radio" class="rating-input" id="rating-input-1-4" name="rating-input-1">
									        <label for="rating-input-1-4" class="rating-star1"> </label>
									        <input type="radio" class="rating-input" id="rating-input-1-3" name="rating-input-1">
									        <label for="rating-input-1-3" class="rating-star"> </label>
									        <input type="radio" class="rating-input" id="rating-input-1-2" name="rating-input-1">
									        <label for="rating-input-1-2" class="rating-star"> </label>
									        <input type="radio" class="rating-input" id="rating-input-1-1" name="rating-input-1">
									        <label for="rating-input-1-1" class="rating-star"> </label>
							    	   </span>
					</div>
					<a class="now-get get-cart"  href="addToCart?id=${books.id}">ADD TO CART</a>
					<div class="clearfix"> </div>
				</div>
			</div>
		</div>
	</c:forEach>
						 </div>
						 </tbody>
					 </table>
	   		     </div>

	   		   </div>   
			   <div class="sub-cate">
				<div class=" top-nav rsidebar span_1_of_left">
					<h3 class="cate">CATEGORIES</h3>
				<center>
					<a href="/product" style="text-decoration: none;">	<ul class="menu">	<li><b>VIEW ALL PRODUCTS</b></li></ul></a>
			<ul class="menu">

						<c:forEach items="${categoryEntityList}" var="category">
						<li><a href="/product">${category.nameCategory} </a>
						</li>
						</c:forEach>
				</center>
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
			</div>
	   		    <div class="clearfix"> </div>        	         
		</div>
	<%--page--%>
	<center>
	<div >
		<nav aria-label="Page navigation">
			<ul class="pagination" id="pagination"></ul>
		</nav>
	</div></center>
	<script type="text/javascript">
        $(function () {
            window.pagObj = $('#pagination').twbsPagination({
                totalPages: 15,
                visiblePages: 7
            }).on('page', function (event, page) {
                $.ajax({
                    type : "POST",
                    contentType : "application/json",
                    url : "/book/" + page,
                    //data : comment,
                    timeout : 100000,
                    success : function(data) {
                        console.log(data);
                        display(data);
                    }
                });
            });

            function display(data) {
                $("#test").html(data);
            }
        });
	</script>
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