<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 01/05/18
  Time: 06:15 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>checkout</title>
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
</head>
<body>
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
<div class="container" style="padding-top: 100px;">
        <div >
            <span><h2> Please fill in form to check out </h2></span>
            <form:form class="form-horizontal" action="/checkout" method="post" modelAttribute="order">
                <div class="form-group">
                    <label class="control-label col-sm-2" for="email">Full name:</label>
                    <div class="col-sm-5">
                        <form:input  path="userEntity.userName" class="form-control" id="email" placeholder="Enter email"></form:input>
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-sm-2" for="pwd">Email:</label>
                    <div class="col-sm-5">
                        <form:input  class="form-control" path="email" id="pwd" placeholder="Enter email"></form:input>
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-sm-2" for="pwd">Address:</label>
                    <div class="col-sm-5">
                        <form:input  class="form-control" path="address" id="pwd" placeholder="Enter adress"></form:input>
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-sm-2" for="pwd">Phone Number:</label>
                    <div class="col-sm-5">
                        <form:input  class="form-control" path="phone" id="pwd" placeholder="Enter phone number"></form:input>
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-sm-2" for="pwd">Note:</label>
                    <div class="col-sm-5">
                        <form:textarea  class="form-control" path="note" id="pwd" placeholder=""
                                        cssStyle="width: 460px; height: 100px;"></form:textarea>
                    </div>
                </div>
                <div class="form-group text-center">
                    <div class="col-sm-offset-2 col-sm-5">
                        <button type="submit" class="btn btn-success">check out</button> &ensp;
                        <button type="reset" onclick="" class="btn btn-danger"><a href="/viewCart"> Cancel</a></button>
                    </div>

                </div>
            </form:form>
        </div>
</div>

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
