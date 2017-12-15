<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="ctx" value="${pageContext.request.contextPath }" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Ustora Demo</title>
    
    <!-- Google Fonts -->
    <link href='https://fonts.googleapis.com/css?family=Titillium+Web:400,200,300,700,600' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Roboto+Condensed:400,700,300' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Raleway:400,100' rel='stylesheet' type='text/css'>
    
    <!-- Bootstrap -->
    <link rel="stylesheet" href="css/bootstrap.min.css">
    
    <!-- Font Awesome -->
    <link rel="stylesheet" href="css/font-awesome.min.css">
    
    <!-- Custom CSS -->
    <link rel="stylesheet" href="css/owl.carousel.css">
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="css/responsive.css">

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
    <script type="text/javascript">
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
    function checknewpassword(){
		var fpwd = document.getElementById("newpassword");
		var ftpwd = document.getElementById("snpassword");
		if(fpwd.value==""||fpwd.value.length<4||fpwd.value.length>20){
			ftpwd.innerHTML="× 请输入4-20位用户密码！";
		}else{
			ftpwd.innerHTML="√ 密码可用！";
		}
	}
    function checkrenewpassword(){
		var pwd = document.getElementById("newpassword");
		var rpwd = document.getElementById("renewpassword");
		var srpwd = document.getElementById("srnpassword");
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
                            <li><a href="#"><i class="fa fa-user"></i> 我的账户</a></li>
                            <li><a href="#"><i class="fa fa-heart"></i> 收藏</a></li>
                            <li><a href="cart.html"><i class="fa fa-user"></i> 购物车</a></li>
                            <li><a href="checkout.html"><i class="fa fa-user"></i> 查看</a></li>
                            <li><a href="register.jsp"><i class="fa fa-user"></i> 注册</a></li>
                            <li><a href="login.jsp"><i class="fa fa-user"></i> 登录</a></li>
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
                        <h1><a href="./"><img src="img/logo.png"></a></h1>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- End site branding area -->  
    
  	<h1>修改密码</h1>
    <form action="${ctx}/user/setnewpassword" method="post">
    	<span>邮箱&nbsp;&nbsp;&nbsp;：</span>
    	<input type="text" name="address" id="address" onblur="checkaddress()">
    	<span id="saddress" class="frbule"></span>
    	<br>
    	<span>姓名&nbsp;&nbsp;&nbsp;：</span>
    	<input type="text" name="name" id="name" onblur="checkname()">
    	<span id="sname"></span>
    	<br>
    	<span>新密码：</span>
    	<input type="password" name="newpassword" id="newpassword" onblur="checknewpassword()">
    	<span id="snpassword" class="frblue"></span>
    	<br>
    	<span>确认新密码：</span>
    	<input type="password" name="renewpassword" id="renewpassword" onblur="checkrenewpassword()">
    	<span id="srnpassword" class="frblue"></span>
    	<br>
    	<input type="submit" value="确认">
    </form>
</body>
</html>