<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.entity.User"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="ctx" value="${pageContext.request.contextPath }" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Ustora Demo</title>
    
    <!-- Google Fonts -->
    <link href='https://fonts.googleapis.com/css?family=Titillium+Web:400,200,300,700,600' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Roboto+Condensed:400,700,300' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Raleway:400,100' rel='stylesheet' type='text/css'>
    
    <!-- Bootstrap -->
    <link rel="stylesheet" href="/project_training1/css/bootstrap.min.css">
    
    <!-- Font Awesome -->
    <link rel="stylesheet" href="/project_training1/css/font-awesome.min.css">
    
    <!-- Custom CSS -->
    <link rel="stylesheet" href="/project_training1/css/owl.carousel.css">
    <link rel="stylesheet" href="/project_training1/style.css">
    <link rel="stylesheet" href="/project_training1/css/responsive.css">

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->

    <script type="text/javascript">
    	function checkname(){
    		var regname=/^[\w\u3E00-\u9FA5]+$/g;
    		var fname = document.getElementById("name");
    		var ftname = document.getElementById("sname");
    		if(fname.value== "" || fname.value.length<2 || fname.value.length>4){
    			ftname.innerHTML = "× 请输入2-4位用户名，可包含汉字、数字、字母、下划线。";
    		}else{
    			if(fname.value.match(regname)){
    				ftname.innerHTML="√ 用户名可用。"
    			}else{
    				ftname.innerHTML="× 用户名格式输入错误。"
    			}
    		}
    	}
    	function checkaddress(){
    		var regemail=/^\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*(;\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*)*$/;
    		var femail = document.getElementById("address");
    		var ftemail = document.getElementById("saddress");
    		if(femail.value==""){
    			ftemail.innerHTML = "× 电子邮箱不能为空！";
    		}else{
    			if(femail.value.match(regemail)){
    				ftemail.innerHTML = "√ 邮箱格式正确。";
    			}else{
    				ftemail.innerHTML = "× 邮箱格式输入错误。";
    			}
    		}
    	}
    	function checkpassword(){
    		var fpwd = document.getElementById("password");
    		var ftpwd = document.getElementById("spassword");
    		if(fpwd.value==""||fpwd.value.length<4||fpwd.value.length>20){
    			ftpwd.innerHTML="× 请输入4-20位用户密码！";
    		}else{
    			ftpwd.innerHTML="√ 密码可用！";
    		}
    	}
    	function recheckpassword(){
    		var pwd = document.getElementById("password");
    		var rpwd = document.getElementById("repassword");
    		var srpwd = document.getElementById("srepassword");
    		if(rpwd.value==""){
    			srpwd.innerHTML = "请再次输入您的密码。";
    		}else{
    			if(rpwd.value!=pwd.value){
    				srpwd.innerHTML = "两次输入密码不一致，请重新输入。";
    			}else{
    				srpwd.innerHTML = "输入正确。"
    			}
    		}
    	}
    </script>
  </head>
 <body>
    <div class="header-area">
        <div class="container">
            <div class="row">
                <div class="col-md-8">
                    <div class="user-menu">
                        <ul>
                            <li><a href="/project_training1/index.jsp"><i class="fa fa-user"></i> 主页</a></li>
                            <li><a href="#"><i class="fa fa-heart"></i> 收藏</a></li>
                            <li><a href="/project_training1/cart.jsp"><i class="fa fa-user"></i> 购物车</a></li>
                            <li><a href=""><i class="fa fa-user"></i> 查看</a></li>
                            <li><a href="/project_training1/register.jsp"><i class="fa fa-user"></i> 注册</a></li>
                            <li><a href="/project_training1/login.jsp"><i class="fa fa-user"></i> 登录</a></li>
                            <li><a href=""><i class="fa fa-user"></i> 当前用户：<%=session.getAttribute("username") %></a></li>
                        </ul>
                    </div>
                </div>
                
                <div class="col-md-4">
                    <div class="header-right">
                        <ul class="list-unstyled list-inline">
                            <li class="dropdown dropdown-small">
                                <a data-toggle="dropdown" data-hover="dropdown" class="dropdown-toggle" href="#"><span class="key">货币 :</span><span class="value">美元 </span><b class="caret"></b></a>
                                <ul class="dropdown-menu">
                                    <li><a href="#">美元</a></li>
                                    <li><a href="#">INR</a></li>
                                    <li><a href="#">英镑</a></li>
                                </ul>
                            </li>

                            <li class="dropdown dropdown-small">
                                <a data-toggle="dropdown" data-hover="dropdown" class="dropdown-toggle" href="#"><span class="key">语言 :</span><span class="value">汉语 </span><b class="caret"></b></a>
                                <ul class="dropdown-menu">
                                    <li><a href="#">汉语</a></li>
                                    <li><a href="#">法语</a></li>
                                    <li><a href="#">英语</a></li>
                                </ul>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div> <!-- End header area -->
    
    <div class="site-branding-area">
        <div class="container">
            <div class="row">
                <div class="col-sm-6">
                    <div class="logo">
                        <h1><a href=""><img src="/project_training1/img/logo.png"></a></h1>
                    </div>
                </div>
                
                <div class="col-sm-6">
                    <div class="shopping-item">
                        <a href="/project_training1/cart.html">购物车<span class="cart-amunt"></span> <i class="fa fa-shopping-cart"></i> <span class="product-count"></span></a>
                    </div>
                </div>
            </div>
        </div>
    </div> <!-- End site branding area -->    
    
    <div class="container">
    	<div class="register">
    		<h1>注册</h1>
    			<div class="regiester-top">
    				<div class="mation">
    					<span>姓名</span>
    					<input type="text" name="name" id="name" onblur="checkname()">
    					<span id="sname" class="frbule"></span>
    					<span>邮箱</span>
    					<input type="text" name="address" id="address" onblur="checkaddress()">
    					<span id="saddress" class="frbule"></span>
    					<span id="error" class="frbule"></span>
						<div id="usertx"></div>
    				</div>
    			
    			
    				<div class="clearfix"></div>
    				<a class="new-letters" href="#">
    					<label class="checkbox"><input type="checkbox" name="checkbox"><i> </i>注册</label>
    				</a>
    			</div>
    			<div class="regiester-bottom">
    				<div class="mation">
    					<span>密码</span>
    					<input type="password" name="password" id="password" onblur="checkpassword()">
    					<span id="spassword" class="frbule"></span>
    					<span>确认密码</span>
    					<input type="password" name="repassword" id="repassword" onblur="recheckpassword()">
    					<span id="srepassword" class="frblue"></span>
    				</div>
    			</div>	
    			<div class="clearfix"> </div>
				<input type="submit"  onclick="Register();" value="提交">
				<div class="clearfix"> </div>
    	</div>
    	  <!-- End footer top area -->
    <div class="footer-top-area">
        <div class="zigzag-bottom"></div>
        <div class="container">
            <div class="row">
                <div class="col-md-3 col-sm-6">
                    <div class="footer-about-us">
                        <h2>u<span>Stora</span></h2>
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Perferendis sunt id doloribus vero quam laborum quas alias dolores blanditiis iusto consequatur, modi aliquid eveniet eligendi iure eaque ipsam iste, pariatur omnis sint! Suscipit, debitis, quisquam. Laborum commodi veritatis magni at?</p>
                        <div class="footer-social">
                            <a href="#" target="_blank"><i class="fa fa-facebook"></i></a>
                            <a href="#" target="_blank"><i class="fa fa-twitter"></i></a>
                            <a href="#" target="_blank"><i class="fa fa-youtube"></i></a>
                            <a href="#" target="_blank"><i class="fa fa-linkedin"></i></a>
                        </div>
                    </div>
                </div>
                
                <div class="col-md-3 col-sm-6">
                    <div class="footer-menu">
                        <h2 class="footer-wid-title">用户导航</h2>
                        <ul>
                            <li><a href="#">我的账单</a></li>
                            <li><a href="#">订单历史</a></li>
                            <li><a href="#">收藏</a></li>
                            <li><a href="#">供应商联系</a></li>
                            <li><a href="#">首页</a></li>
                        </ul>                        
                    </div>
                </div>
                
                <div class="col-md-3 col-sm-6">
                    <div class="footer-menu">
                        <h2 class="footer-wid-title">分类</h2>
                        <ul>
                            <li><a href="#">移动电话</a></li>
                            <li><a href="#">家庭accesseries</a></li>
                            <li><a href="#">LED TV</a></li>
                            <li><a href="#">电脑</a></li>
                            <li><a href="#">Gadets</a></li>
                        </ul>                        
                    </div>
                </div>
                
                <div class="col-md-3 col-sm-6">
                    <div class="footer-newsletter">
                        <h2 class="footer-wid-title">通讯</h2>
                        <p>注册我们的通讯，并获得独家优惠，你不会找到其他地方直接到您的收件箱！</p>
                        <div class="newsletter-form">
                            <form action="#">
                                <input type="email" placeholder="Type your email">
                                <input type="submit" value="订阅">
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div> 
    
    <!-- End footer top area -->
    <div class="footer-bottom-area">
        <div class="container">
            <div class="row">
                <div class="col-md-8">
                    <div class="copyright">
                        <p>Copyright &copy; 2015.Company name All rights reserved.<a target="_blank" href="http://www.cssmoban.com/">&#x7F51;&#x9875;&#x6A21;&#x677F;</a></p>
                    </div>
                </div>
                
                <div class="col-md-4">
                    <div class="footer-card-icon">
                        <i class="fa fa-cc-discover"></i>
                        <i class="fa fa-cc-mastercard"></i>
                        <i class="fa fa-cc-paypal"></i>
                        <i class="fa fa-cc-visa"></i>
                    </div>
                </div>
            </div>
        </div>
    </div> <!-- End footer bottom area -->
   
    <!-- Latest jQuery form server -->
    <script src="https://code.jquery.com/jquery.min.js"></script>
    
    <!-- Bootstrap JS form CDN -->
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
    
    <!-- jQuery sticky menu -->
    <script src="/project_training1/js/owl.carousel.min.js"></script>
    <script src="/project_training1/js/jquery.sticky.js"></script>
    
    <!-- jQuery easing -->
    <script src="/project_training1/js/jquery.easing.1.3.min.js"></script>
    
    <!-- Main Script -->
    <script src="/project_training1/js/main.js"></script>
    
    <!-- Slider -->
    <script type="text/javascript" src="/project_training1/js/bxslider.min.js"></script>
	<script type="text/javascript" src="/project_training1/js/script.slider.js"></script>
  </body>
</html>