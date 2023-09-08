<?xml version="1.0" encoding="utf-8" ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>树上优家——您的家具好帮手</title>

    <link rel="stylesheet" href="style/css/app.css">
    <link rel="stylesheet" href="style/css/theme.css">
</head>
<body>
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
        
<form action="ShoppingServlet.java" method="get">
    <section class="mt-4 mb-5">
    <div class="container mb-4">
    	<h1 class="font-weight-bold title" style="
    text-align: center;
">树上优家产品展示</h1>
    </div>
    <div class="container-fluid">
    	<div class="row">
    		<div class="card-columns">
    			<div class="card card-pin">
    				<img class="card-img" src="style/img/p1.jpg" alt="Card image">
    				<div class="overlay">
    					<h2 class="card-title title">查看详情</h2>
    					<div class="more">
    						<a name="good01" href="Shopping?id=1">
    						<i class="fa fa-arrow-circle-o-right" aria-hidden="true"></i> 购买 </a>
    					</div>
    				</div>
    			</div>
    			<div class="card card-pin">
    				<img class="card-img" src="style/img/p2.jpg" alt="Card image">
    				<div class="overlay">
    					<h2 class="card-title title">查看详情</h2>
    					<div class="more">
    						<a name="good02" href="Shopping?id=2">
    						<i class="fa fa-arrow-circle-o-right" aria-hidden="true"></i> 购买 </a>
    					</div>
    				</div>
    			</div>
    			<div class="card card-pin">
    				<img class="card-img" src="style/img/p3.jpg" alt="Card image">
    				<div class="overlay">
    					<h2 class="card-title title">查看详情</h2>
    					<div class="more">
    						<a name="good03" href="Shopping?id=3">
    						<i class="fa fa-arrow-circle-o-right" aria-hidden="true"></i> 购买 </a>
    					</div>
    				</div>
    			</div>
    			<div class="card card-pin">
    				<img class="card-img" src="style/img/p4.jpg" alt="Card image">
    				<div class="overlay">
    					<h2 class="card-title title">查看详情</h2>
    					<div class="more">
    						<a name="good04" href="Shopping?id=4">
    						<i class="fa fa-arrow-circle-o-right" aria-hidden="true"></i> 购买 </a>
    					</div>
    				</div>
    			</div>
    			<div class="card card-pin">
    				<img class="card-img" src="style/img/p5.jpg" alt="Card image">
    				<div class="overlay">
    					<h2 class="card-title title">查看详情</h2>
    					<div class="more">
    						<a name="good05" href="Shopping?id=5">
    						<i class="fa fa-arrow-circle-o-right" aria-hidden="true"></i> 购买 </a>
    					</div>
    				</div>
    			</div>
    			<div class="card card-pin">
    				<img class="card-img" src="style/img/p6.jpg" alt="Card image">
    				<div class="overlay">
    					<h2 class="card-title title">查看详情</h2>
    					<div class="more">
    						<a name="good06" href="Shopping?id=6">
    						<i class="fa fa-arrow-circle-o-right" aria-hidden="true"></i> 购买 </a>
    					</div>
    				</div>
    			</div>
    			<div class="card card-pin">
    				<img class="card-img" src="style/img/p7.jpg" alt="Card image">
    				<div class="overlay">
    					<h2 class="card-title title">查看详情</h2>
    					<div class="more">
    						<a name="good07" href="Shopping?id=7">
    						<i class="fa fa-arrow-circle-o-right" aria-hidden="true"></i> 购买 </a>
    					</div>
    				</div>
    			</div>
    			<div class="card card-pin">
    				<img class="card-img" src="style/img/p8.jpg" alt="Card image">
    				<div class="overlay">
    					<h2 class="card-title title">查看详情</h2>
    					<div class="more">
    						<a name="good08" href="Shopping?id=8">
    						<i class="fa fa-arrow-circle-o-right" aria-hidden="true"></i> 购买 </a>
    					</div>
    				</div>
    			</div>
    			<div class="card card-pin">
    				<img class="card-img" src="style/img/p9.jpg" alt="Card image">
    				<div class="overlay">
    					<h2 class="card-title title">查看详情</h2>
    					<div class="more">
    						<a name="good09" href="Shopping?id=9">
    						<i class="fa fa-arrow-circle-o-right" aria-hidden="true"></i> 购买 </a>
    					</div>
    				</div>
    			</div>
    			<div class="card card-pin">
    				<img class="card-img" src="style/img/p10.jpg" alt="Card image">
    				<div class="overlay">
    					<h2 class="card-title title">查看详情</h2>
    					<div class="more">
    						<a name="good10" href="Shopping?id=10">
    						<i class="fa fa-arrow-circle-o-right" aria-hidden="true"></i> 购买 </a>
    					</div>
    				</div>
    			</div>
    			<div class="card card-pin">
    				<img class="card-img" src="style/img/p11.jpg" alt="Card image">
    				<div class="overlay">
    					<h2 class="card-title title">查看详情</h2>
    					<div class="more">
    						<a name="good11" href="Shopping?id=11">
    						<i class="fa fa-arrow-circle-o-right" aria-hidden="true"></i> 购买 </a>
    					</div>
    				</div>
    			</div>
    			<div class="card card-pin">
    				<img class="card-img" src="style/img/p12.jpg" alt="Card image">
    				<div class="overlay">
    					<h2 class="card-title title">查看详情</h2>
    					<div class="more">
    						<a name="good12" href="Shopping?id=12">
    						<i class="fa fa-arrow-circle-o-right" aria-hidden="true"></i> 购买 </a>
    					</div>
    				</div>
    			</div>
    			<div class="card card-pin">
    				<img class="card-img" src="style/img/p13.jpg" alt="Card image">
    				<div class="overlay">
    					<h2 class="card-title title">查看详情</h2>
    					<div class="more">
    						<a name="good13" href="Shopping?id=13">
    						<i class="fa fa-arrow-circle-o-right" aria-hidden="true"></i> 购买 </a>
    					</div>
    				</div>
    			</div>
    			<div class="card card-pin">
    				<img class="card-img" src="style/img/p14.jpg" alt="Card image">
    				<div class="overlay">
    					<h2 class="card-title title">查看详情</h2>
    					<div class="more">
    						<a name="good14" href="Shopping?id=14">
    						<i class="fa fa-arrow-circle-o-right" aria-hidden="true"></i> 购买 </a>
    					</div>
    				</div>
    			</div>
    			<div class="card card-pin">
    				<img class="card-img" src="style/img/p15.jpg" alt="Card image">
    				<div class="overlay">
    					<h2 class="card-title title">查看详情</h2>
    					<div class="more">
    						<a name="good15" href="Shopping?id=15">
    						<i class="fa fa-arrow-circle-o-right" aria-hidden="true"></i> 购买 </a>
    					</div>
    				</div>
    			</div>
    			<div class="card card-pin">
    				<img class="card-img" src="style/img/p16.jpg" alt="Card image">
    				<div class="overlay">
    					<h2 class="card-title title">查看详情</h2>
    					<div class="more">
    						<a name="good16" href="Shopping?id=16">
    						<i class="fa fa-arrow-circle-o-right" aria-hidden="true"></i> 购买 </a>
    					</div>
    				</div>
    			</div>
    			<div class="card card-pin">
    				<img class="card-img" src="style/img/p17.jpg" alt="Card image">
    				<div class="overlay">
    					<h2 class="card-title title">查看详情</h2>
    					<div class="more">
    						<a name="good17" href="Shopping?id=17">
    						<i class="fa fa-arrow-circle-o-right" aria-hidden="true"></i> 购买 </a>
    					</div>
    				</div>
    			</div>
    			<div class="card card-pin">
    				<img class="card-img" src="style/img/p18.jpg" alt="Card image">
    				<div class="overlay">
    					<h2 class="card-title title">查看详情</h2>
    					<div class="more">
    						<a name="good18" href="Shopping?id=18">
    						<i class="fa fa-arrow-circle-o-right" aria-hidden="true"></i> 购买 </a>
    					</div>
    				</div>
    			</div>
    			<div class="card card-pin">
    				<img class="card-img" src="style/img/p19.jpg" alt="Card image">
    				<div class="overlay">
    					<h2 class="card-title title">查看详情</h2>
    					<div class="more">
    						<a name="good19" href="Shopping?id=19">
    						<i class="fa fa-arrow-circle-o-right" aria-hidden="true"></i> 购买 </a>
    					</div>
    				</div>
    			</div>
    			<div class="card card-pin">
    				<img class="card-img" src="style/img/p20.jpg" alt="Card image">
    				<div class="overlay">
    					<h2 class="card-title title">查看详情</h2>
    					<div class="more">
    						<a name="good20" href="Shopping?id=20">
    						<i class="fa fa-arrow-circle-o-right" aria-hidden="true"></i> 购买 </a>
    					</div>
    				</div>
    			</div>
    		</div>
    	</div>
    </div>
    </section>
     </form>   
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