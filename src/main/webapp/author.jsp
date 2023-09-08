<?xml version="1.0" encoding="utf-8" ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>个人中心</title>
 <script type="text/javascript"> (function() { var css = document.createElement('link'); css.href = 'https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css'; css.rel = 'stylesheet'; css.type = 'text/css'; document.getElementsByTagName('head')[0].appendChild(css); })(); </script>
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
        
    
    <div class="jumbotron border-round-0 min-50vh" style="background-image:url(https://images.unsplash.com/photo-1522204657746-fccce0824cfd?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=84b5e9bea51f72c63862a0544f76e0a3&auto=format&fit=crop&w=1500&q=80);">
    </div>
    <div class="container mb-4">
    	<img src="style/img/av.png" class="mt-neg100 mb-4 rounded-circle" width="128">
    	<h1 class="font-weight-bold title">游客</h1>
    	<p>
    		这个人很懒，啥都没有写
    	</p>
    </div>
    <div class="container-fluid mb-5">
    	<div class="row">
    		<div class="card-columns">
    		</div>
    	</div>
    </div>
        
    </main>

    <script src="style/js/app.js"></script>
    <script src="style/js/theme.js"></script>
    
    <footer class="footer pt-5 pb-5 text-center">     
    <div class="container">
         <div class="container">
          <p>©  <span class="credits font-weight-bold">        
            <a target="_blank" class="text-dark" href="About_us.jsp">制作：人民当家做组</a>
          </span>
          </p>
   		 </div>
        </div>
    </footer>    
</body>
</html>