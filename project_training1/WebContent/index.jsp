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
    
    <div class="mainmenu-area">
        <div class="container">
            <div class="row">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                </div> 
                <div class="navbar-collapse collapse">
                    <ul class="nav navbar-nav">
                        <li class="active"><a href="/project_training1/index.html">家</a></li>
                        <li><a href="/project_training1/shop.html">商品页面</a></li>
                        <li><a href="/project_training1/single-product.html">单品</a></li>
                        <li><a href="/project_training1/cart.html">购物车</a></li>
                        <li><a href="/project_training1/checkout.html">查看</a></li>
                        <li><a href="#">类别</a></li>
                        <li><a href="#">其他</a></li>
                        <li><a href="#">联系</a></li>
                    </ul>
                </div>  
            </div>
        </div>
    </div> <!-- End mainmenu area -->
    
    <div class="slider-area">
        	<!-- Slider -->
			<div class="block-slider block-slider4">
				<ul class="" id="bxslider-home4">
					<li>
						<img src="/project_training1/img/h4-slide.png" alt="Slide">
						<div class="caption-group">
							<h2 class="caption title">
								iPhone <span class="primary">6 <strong>Plus</strong></span>
							</h2>
							<h4 class="caption subtitle">双SIM卡</h4>
							<a class="caption button-radius" href="#"><span class="icon"></span>现在去购物</a>
						</div>
					</li>
					<li><img src="/project_training1/img/h4-slide2.png" alt="Slide">
						<div class="caption-group">
							<h2 class="caption title">
								买一赠一 <span class="primary">50% <strong>折扣</strong></span>
							</h2>
							<h4 class="caption subtitle">学校用品和背包。</h4>
							<a class="caption button-radius" href="#"><span class="icon"></span>现在去购物</a>
						</div>
					</li>
					<li><img src="/project_training1/img/h4-slide3.png" alt="Slide">
						<div class="caption-group">
							<h2 class="caption title">
								苹果 <span class="primary">商店 <strong>Ipod</strong></span>
							</h2>
							<h4 class="caption subtitle">选择商品</h4>
							<a class="caption button-radius" href="#"><span class="icon"></span>现在去购物</a>
						</div>
					</li>
					<li><img src="/project_training1/img/h4-slide4.png" alt="Slide">
						<div class="caption-group">
						  <h2 class="caption title">
								苹果 <span class="primary">商店 <strong>Ipod</strong></span>
							</h2>
							<h4 class="caption subtitle">& 手机</h4>
							<a class="caption button-radius" href="#"><span class="icon"></span>现在去购物</a>
						</div>
					</li>
				</ul>
			</div>
			<!-- ./Slider -->
    </div> <!-- End slider area -->
    
    <div class="promo-area">
        <div class="zigzag-bottom"></div>
        <div class="container">
            <div class="row">
                <div class="col-md-3 col-sm-6">
                    <div class="single-promo promo1">
                        <i class="fa fa-refresh"></i>
                        <p>30天退货</p>
                    </div>
                </div>
                <div class="col-md-3 col-sm-6">
                    <div class="single-promo promo2">
                        <i class="fa fa-truck"></i>
                        <p>免费送货</p>
                    </div>
                </div>
                <div class="col-md-3 col-sm-6">
                    <div class="single-promo promo3">
                        <i class="fa fa-lock"></i>
                        <p>安全的付款</p>
                    </div>
                </div>
                <div class="col-md-3 col-sm-6">
                    <div class="single-promo promo4">
                        <i class="fa fa-gift"></i>
                        <p>新产品</p>
                    </div>
                </div>
            </div>
        </div>
    </div> <!-- End promo area -->
    <div class="maincontent-area">
        <div class="zigzag-bottom"></div>
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="latest-product">
                        <h2 class="section-title">最新产品</h2>
                        <div class="product-carousel">
                            <div class="single-product">
                                <div class="product-f-image">
                                    <img src="/project_training1/img/product-1.jpg" alt="">
                                    <div class="product-hover">
                                        <a href="${ctx}/product/addtocart?id=1&count=1" class="add-to-cart-link"><i class="fa fa-shopping-cart"></i> 添加到购物车</a>
                                        <a href="${ctx}/product/single?id=1" class="view-details-link"><i class="fa fa-link"></i> 查看具体信息</a>
                                    </div>
                                </div>
                                
                                <h2><a href="/project_training1/single-product.html">三星Galaxy s5</a></h2>
                                
                                <div class="product-carousel-price">
                                    <ins>$700.00</ins> <del>$100.00</del>
                                </div> 
                            </div>
                            <div class="single-product">
                                <div class="product-f-image">
                                    <img src="/project_training1/img/product-2.jpg" alt="">
                                    <div class="product-hover">
                                        <a href="${ctx}/product/addtocart?id=2&count=1" class="add-to-cart-link"><i class="fa fa-shopping-cart"></i> 添加到购物车</a>
                                        <a href="${ctx}/product/single?id=2" class="view-details-link" id="2"><i class="fa fa-link"></i> 查看具体信息</a>
                                    </div>
                                </div>
                                
                                <h2>诺基亚Lumia 1320</h2>
                                <div class="product-carousel-price">
                                    <ins>$899.00</ins> <del>$999.00</del>
                                </div> 
                            </div>
                            <div class="single-product">
                                <div class="product-f-image">
                                    <img src="/project_training1/img/product-3.jpg" alt="">
                                    <div class="product-hover">
                                        <a href="${ctx}/product/addtocart?id=3&count=1" class="add-to-cart-link"><i class="fa fa-shopping-cart"></i> 添加到购物车</a>
                                        <a href="${ctx}/product/single?id=3" class="view-details-link" id="3"><i class="fa fa-link"></i> 查看具体信息</a>
                                    </div>
                                </div>
                                
                                <h2>LG利昂 2015</h2>

                                <div class="product-carousel-price">
                                    <ins>$400.00</ins> <del>$425.00</del>
                                </div>                                 
                            </div>
                            <div class="single-product">
                                <div class="product-f-image">
                                    <img src="/project_training1/img/product-4.jpg" alt="">
                                    <div class="product-hover">
                                        <a href="${ctx}/product/addtocart?id=4&count=1" class="add-to-cart-link"><i class="fa fa-shopping-cart"></i> 添加到购物车</a>
                                        <a href="${ctx}/product/single?id=4" class="view-details-link" id="4"><i class="fa fa-link"></i> 查看具体信息</a>
                                    </div>
                                </div>
                                
                                <h2><a href="/project_training1/single-product.html">索尼微软</a></h2>

                                <div class="product-carousel-price">
                                    <ins>$200.00</ins> <del>$225.00</del>
                                </div>                            
                            </div>
                            <div class="single-product">
                                <div class="product-f-image">
                                    <img src="/project_training1/img/product-5.jpg" alt="">
                                    <div class="product-hover">
                                        <a href="${ctx}/product/addtocart?id=5&count=1" class="add-to-cart-link"><i class="fa fa-shopping-cart"></i> 添加到购物车</a>
                                        <a href="${ctx}/product/single?id=5" class="view-details-link" id="5"><i class="fa fa-link"></i> 查看具体信息</a>
                                    </div>
                                </div>
                                
                                <h2>iPhone 6</h2>

                                <div class="product-carousel-price">
                                    <ins>$1200.00</ins> <del>$1355.00</del>
                                </div>                                 
                            </div>
                            <div class="single-product">
                                <div class="product-f-image">
                                    <img src="/project_training1/img/product-6.jpg" alt="">
                                    <div class="product-hover">
                                        <a href="${ctx}/product/addtocart?id=6&count=1" class="add-to-cart-link"><i class="fa fa-shopping-cart"></i> 添加到购物车</a>
                                        <a href="${ctx}/product/single?id=6" class="view-details-link" id="6"><i class="fa fa-link"></i> 查看具体信息</a>
                                    </div>
                                </div>
                                
                                <h2><a href="/project_training1/single-product.html">三星gallaxy note 4</a></h2>

                                <div class="product-carousel-price">
                                    <ins>$400.00</ins>
                                </div>                            
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div> <!-- End main content area -->
    
    <div class="brands-area">
        <div class="zigzag-bottom"></div>
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="brand-wrapper">
                        <div class="brand-list">
                            <img src="/project_training1/img/brand1.png" alt="">
                            <img src="/project_training1/img/brand2.png" alt="">
                            <img src="/project_training1/img/brand3.png" alt="">
                            <img src="/project_training1/img/brand4.png" alt="">
                            <img src="/project_training1/img/brand5.png" alt="">
                            <img src="/project_training1/img/brand6.png" alt="">
                            <img src="/project_training1/img/brand1.png" alt="">
                            <img src="/project_training1/img/brand2.png" alt="">                            
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div> <!-- End brands area -->
    
    <div class="product-widget-area">
        <div class="zigzag-bottom"></div>
        <div class="container">
            <div class="row">
                <div class="col-md-4">
                    <div class="single-product-widget">
                        <h2 class="product-wid-title">畅销品</h2>
                        <a href="" class="wid-view-more">查看全部</a>
                        <div class="single-wid-product">
                            <a href="/project_training1/single-product.html"><img src="/project_training1/img/product-thumb-1.jpg" alt="" class="product-thumb"></a>
                            <h2><a href="/project_training1/single-product.html">索尼智能电视 - 2015</a></h2>
                            <div class="product-wid-rating">
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                            </div>
                            <div class="product-wid-price">
                                <ins>$400.00</ins> <del>$425.00</del>
                            </div>                            
                        </div>
                        <div class="single-wid-product">
                            <a href="/project_training1/single-product.html"><img src="/project_training1/img/product-thumb-2.jpg" alt="" class="product-thumb"></a>
                            <h2><a href="/project_training1/single-product.html">苹果新mac书 2015</a></h2>
                            <div class="product-wid-rating">
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                            </div>
                            <div class="product-wid-price">
                                <ins>$400.00</ins> <del>$425.00</del>
                            </div>                            
                        </div>
                        <div class="single-wid-product">
                            <a href="/project_training1/single-product.html"><img src="/project_training1/img/product-thumb-3.jpg" alt="" class="product-thumb"></a>
                            <h2><a href="/project_training1/single-product.html">iphone 6</a></h2>
                            <div class="product-wid-rating">
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                            </div>
                            <div class="product-wid-price">
                                <ins>$400.00</ins> <del>$425.00</del>
                            </div>                            
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="single-product-widget">
                        <h2 class="product-wid-title">最近浏览过的</h2>
                        <a href="#" class="wid-view-more">查看全部</a>
                        <div class="single-wid-product">
                            <a href="/project_training1/single-product.html"><img src="/project_training1/img/product-thumb-4.jpg" alt="" class="product-thumb"></a>
                            <h2><a href="/project_training1/single-product.html">索尼 playstation微软</a></h2>
                            <div class="product-wid-rating">
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                            </div>
                            <div class="product-wid-price">
                                <ins>$400.00</ins> <del>$425.00</del>
                            </div>                            
                        </div>
                        <div class="single-wid-product">
                            <a href="/project_training1/single-product.html"><img src="/project_training1/img/product-thumb-1.jpg" alt="" class="product-thumb"></a>
                            <h2><a href="/project_training1/single-product.html">索尼智能空调</a></h2>
                            <div class="product-wid-rating">
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                            </div>
                            <div class="product-wid-price">
                                <ins>$400.00</ins> <del>$425.00</del>
                            </div>                            
                        </div>
                        <div class="single-wid-product">
                            <a href="/project_training1/single-product.html"><img src="/project_training1/img/product-thumb-2.jpg" alt="" class="product-thumb"></a>
                            <h2><a href="/project_training1/single-product.html">三星gallaxy note 4</a></h2>
                            <div class="product-wid-rating">
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                            </div>
                            <div class="product-wid-price">
                                <ins>$400.00</ins> <del>$425.00</del>
                            </div>                            
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="single-product-widget">
                        <h2 class="product-wid-title">最新的</h2>
                        <a href="#" class="wid-view-more">查看全部</a>
                        <div class="single-wid-product">
                            <a href="/project_training1/single-product.html"><img src="/project_training1/img/product-thumb-3.jpg" alt="" class="product-thumb"></a>
                            <h2><a href="/project_training1/single-product.html">iphone 6</a></h2>
                            <div class="product-wid-rating">
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                            </div>
                            <div class="product-wid-price">
                                <ins>$400.00</ins> <del>$425.00</del>
                            </div>                            
                        </div>
                        <div class="single-wid-product">
                            <a href="/project_training1/single-product.html"><img src="/project_training1/img/product-thumb-4.jpg" alt="" class="product-thumb"></a>
                            <h2><a href="/project_training1/single-product.html">三星gallaxy note 4</a></h2>
                            <div class="product-wid-rating">
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                            </div>
                            <div class="product-wid-price">
                                <ins>$400.00</ins> <del>$425.00</del>
                            </div>                            
                        </div>
                        <div class="single-wid-product">
                            <a href="/project_training1/single-product.html"><img src="/project_training1/img/product-thumb-1.jpg" alt="" class="product-thumb"></a>
                            <h2><a href="/project_training1/single-product.html">索尼playstation微软</a></h2>
                            <div class="product-wid-rating">
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                            </div>
                            <div class="product-wid-price">
                                <ins>$400.00</ins> <del>$425.00</del>
                            </div>                            
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div> <!-- End product widget area -->
    
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