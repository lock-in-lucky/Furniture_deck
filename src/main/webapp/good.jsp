<?xml version="1.0" encoding="utf-8" ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>商品详情页</title>

<script type="text/javascript"> (function() { var css = document.createElement('link'); css.href = 'https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css'; css.rel = 'stylesheet'; css.type = 'text/css'; document.getElementsByTagName('head')[0].appendChild(css); })(); </script>
    <link rel="stylesheet" href="style/css/app.css">
    <link rel="stylesheet" href="style/css/theme.css">
    <style type="text/css">
	.addshop{
		margin-left:216px;
		margin-top:20px;
		display:block;
		width:577px;
		height:50px;
		background:white;
		line-height:50px;
		border:1px solid black;
		text-algin:center;
		font-weight: 24px;
	}
	.addshop:hover{
		display:block;
		width:577px;
		height:50px;
		color:white;
		text-algin:center;
		background:black;
	}
</style>
</head>
<body>
<% 
	Object shop = request.getAttribute("shop");
%>
 <nav class="navbar navbar-expand-lg navbar-light bg-white fixed-top">
    <button class="navbar-light navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarsDefault" aria-controls="navbarsDefault" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarsDefault">
    	<ul class="navbar-nav mr-auto align-items-center">
    		<form class="bd-search hidden-sm-down">
    			<input type="text" class="form-control bg-graylight border-0 font-weight-bold" id="search-input" placeholder="Search..." autocomplete="off">
    			<div class="dropdown-menu bd-search-results" id="search-results">
    			</div>
    		</form>
    	</ul>
    	<ul class="navbar-nav ml-auto align-items-center">
    <li class="nav-item">
    		<a class="nav-link active" href="index.jsp">主页</a>
    		</li>
    		<li class="nav-item">
    		<a class="nav-link" href="ShopCar">购物车</a>
    		</li>
    		</li>
    		<li class="nav-item">
    		<a class="nav-link" href="login.jsp">登录</a>
    		</li>
    		<li class="nav-item">
    		<a class="nav-link" href="register.jsp">注册</a>
    		</li>
    		<li class="nav-item">
    		<a class="nav-link" href="About_us.jsp">关于我们</a>
    		</li>
    		
    		<li class="nav-item">
    		<a class="nav-link" href="author.jsp"><img class="rounded-circle mr-2" src="style/img/av.png" width="30"><span class="align-middle">个人中心</span></a>
    		</li>
    	</ul>
    </div>
    </nav>        
    <main role="main">
        
    
    <section class="bg-gray200 pt-5 pb-5">
    <div class="container">
    	<div class="row justify-content-center">
    		<div class="col-md-7">
    			<article class="card">
    			<img class="card-img-top mb-2" src="style/img/${shop.shop_id}" alt="Card image">
    			<div class="card-body">
    				<h1 class="card-title display-4">
    				${shop.shop_name}</h1>
    				<ul>
    					<li>风格：${shop.shop_style}</li>
    					<li>类型：${shop.shop_type}</li>
    					<li>价格：$${shop.shop_price}</li>
    				</ul>
    			</div>
    			</article>
    		</div>
    		
    		
    	</div>
    	<a class="addshop" style="text-align: center;font-size: 24px;text-decoration: none;" href="AddShopCar?id=${shop.id}"><b>加入购物车</b></a>
    </div>
    <div class="container-fluid mt-5">
    	<div class="row">
    		<h5 class="font-weight-bold">更多推荐</h5>
    		<div class="card-columns">
    			<div class="card card-pin">
    				<img class="card-img" src="style/img/p2.jpg" alt="Card image">
    				<div class="overlay">
    					<h2 class="card-title title">查看详情</h2>
    					<div class="more">
    						<a href="Shopping?id=2">
    						<i class="fa fa-arrow-circle-o-right" aria-hidden="true"></i> 购买 </a>
    					</div>
    				</div>
    			</div>
    			<div class="card card-pin">
    				<img class="card-img" src="style/img/p3.jpg" alt="Card image">
    				<div class="overlay">
    					<h2 class="card-title title">查看详情</h2>
    					<div class="more">
    						<a href="Shopping?id=3">
    						<i class="fa fa-arrow-circle-o-right" aria-hidden="true"></i> 购买 </a>
    					</div>
    				</div>
    			</div>
    			<div class="card card-pin">
    				<img class="card-img" src="style/img/p4.jpg" alt="Card image">
    				<div class="overlay">
    					<h2 class="card-title title">查看详情</h2>
    					<div class="more">
    						<a href="Shopping?id=4">
    						<i class="fa fa-arrow-circle-o-right" aria-hidden="true"></i> 购买 </a>
    					</div>
    				</div>
    			</div>
    			<div class="card card-pin">
    				<img class="card-img" src="style/img/p5.jpg" alt="Card image">
    				<div class="overlay">
    					<h2 class="card-title title">查看详情</h2>
    					<div class="more">
    						<a href="Shopping?id=5">
    						<i class="fa fa-arrow-circle-o-right" aria-hidden="true"></i> 购买 </a>
    					</div>
    				</div>
    			</div>
    			<div class="card card-pin">
    				<img class="card-img" src="style/img/p6.jpg" alt="Card image">
    				<div class="overlay">
    					<h2 class="card-title title">查看详情</h2>
    					<div class="more">
    						<a href="Shopping?id=6">
    						<i class="fa fa-arrow-circle-o-right" aria-hidden="true"></i> 购买 </a>
    					</div>
    				</div>
    			</div>
    			<div class="card card-pin">
    				<img class="card-img" src="style/img/p7.jpg" alt="Card image">
    				<div class="overlay">
    					<h2 class="card-title title">查看详情</h2>
    					<div class="more">
    						<a href="Shopping?id=7">
    						<i class="fa fa-arrow-circle-o-right" aria-hidden="true"></i> 购买 </a>
    					</div>
    				</div>
    			</div>
    			<div class="card card-pin">
    				<img class="card-img" src="style/img/p8.jpg" alt="Card image">
    				<div class="overlay">
    					<h2 class="card-title title">查看详情</h2>
    					<div class="more">
    						<a href="Shopping?id=8">
    						<i class="fa fa-arrow-circle-o-right" aria-hidden="true"></i> 购买 </a>
    					</div>
    				</div>
    			</div>
    			<div class="card card-pin">
    				<img class="card-img" src="style/img/p9.jpg" alt="Card image">
    				<div class="overlay">
    					<h2 class="card-title title">查看详情</h2>
    					<div class="more">
    						<a href="Shopping?id=9">
    						<i class="fa fa-arrow-circle-o-right" aria-hidden="true"></i> 购买 </a>
    					</div>
    				</div>
    			</div>
    			<div class="card card-pin">
    				<img class="card-img" src="style/img/p10.jpg" alt="Card image">
    				<div class="overlay">
    					<h2 class="card-title title">查看详情</h2>
    					<div class="more">
    						<a href="Shopping?id=10">
    						<i class="fa fa-arrow-circle-o-right" aria-hidden="true"></i> 购买 </a>
    					</div>
    				</div>
    			</div>
    			<div class="card card-pin">
    				<img class="card-img" src="style/img/p11.jpg" alt="Card image">
    				<div class="overlay">
    					<h2 class="card-title title">查看详情</h2>
    					<div class="more">
    						<a href="Shopping?id=11">
    						<i class="fa fa-arrow-circle-o-right" aria-hidden="true"></i> 购买 </a>
    					</div>
    				</div>
    			</div>
    		</div>
    	</div>
    </div>
    </section>
        
    </main>

    <script src="style/js/app.js"></script>
    <script src="style/js/theme.js"></script>
    
    <footer class="footer pt-5 pb-5 text-center">
        
     <div class="container">
          <p>©  <span class="credits font-weight-bold">        
            <a target="_blank" class="text-dark" href="About_us.jsp">制作：人民当家做组</a>
          </span>
          </p>
    </div>
        
    </footer>    
</body>
</html>