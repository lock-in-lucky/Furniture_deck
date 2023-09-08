<?xml version="1.0" encoding="utf-8" ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@page import="com.cc.pojo.Car"%>
<%@page import="java.util.ArrayList"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>购物车</title>

<style type="text/css">
tr>td:nth-child(3) {
	text-align: center;
}
li{
	list-style: none;
}
</style>
<script type="text/javascript" src="style/js/jquery-1.11.min.js"></script>
<script type="text/javascript" src="style/js/etao.js"></script>
<script type="text/javascript" src="style/js/cart.js"></script>
<link href="style/css/cart.css" media="screen" rel="stylesheet"
	type="text/css" />
<link href="style/css/bootstrap.min.css" media="screen" rel="stylesheet"
	type="text/css" />
<link rel="stylesheet" href="style/css/app.css">
	<link rel="stylesheet" href="style/css/theme.css">
</head>
<body class="container">
	<%
	ArrayList<Car> list = (ArrayList<Car>) request.getAttribute("list");
	%>
	<nav class="navbar navbar-expand-lg navbar-light bg-white fixed-top">
	<button class="navbar-light navbar-toggler" type="button"
		data-toggle="collapse" data-target="#navbarsDefault"
		aria-controls="navbarsDefault" aria-expanded="false"
		aria-label="Toggle navigation">
		<span class="navbar-toggler-icon"></span>
	</button>
	<div class="collapse navbar-collapse" id="navbarsDefault">
		<ul class="navbar-nav mr-auto align-items-center">
			<form class="bd-search hidden-sm-down">
				<input type="text"
					class="form-control bg-graylight border-0 font-weight-bold"
					id="search-input" placeholder="Search..." autocomplete="off">
					<div class="dropdown-menu bd-search-results" id="search-results">
					</div>
			</form>
		</ul>
		<li class="nav-item"><a class="nav-link active" href="index.jsp">主页</a>
		</li>
		<li class="nav-item"><a class="nav-link" href="ShopCar">购物车</a></li>
		</li>
		<li class="nav-item"><a class="nav-link" href="login.jsp">登录</a>
		</li>
		<li class="nav-item"><a class="nav-link" href="register.jsp">注册</a>
		</li>
		<li class="nav-item"><a class="nav-link" href="About_us.jsp">关于我们</a>
		</li>

		<li class="nav-item"><a class="nav-link" href="author.jsp"><img
				class="rounded-circle mr-2" src="style/img/av.png" width="30"><span
					class="align-middle">个人中心</span></a></li>
		</ul>
	</div>
	</nav>
	<main role="main">
	<div class="row hidden-print">
		<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
			<ol class="breadcrumb">
				<li><a href="<%=application.getContextPath()%>">首页</a></li>
				<li class="active">查看购物车</li>
			</ol>
		</div>
	</div>
	<div class="cart-wrap">
		<table id="cartTable" class="cart table table-condensed"">
			<thead>
				<tr>
					<th class="t-checkbox"><label style="width: 60px;"><input
							class="check-all check" type="checkbox" />全选</label></th>
					<th class="t-goods text-center"><label>产品型号</label></th>
					<th class="text-center">产品备注</th>
					<th class="t-selling-price text-center"><label>销售单价</label></th>
					<th class="t-qty text-center"><label>采购数量</label></th>
					<th class="t-subtotal text-center"><label>金额小计</label></th>
					<th class="t-action"><label>操作</label></th>
				</tr>
			</thead>
			<tbody>


				<c:forEach items="${list}" var="car">
					<tr>
						<td colspan="2" class="goods"><label> <input
								type="checkbox" class="check-one check" />${car.car_name}</label></td>
						<td style="text-align: center">${car.car_remarks}</td>
						<td class="selling-price number small-bold-red text-right"
							style="padding-top: 1.1rem;" data-bind="${car.car_price}">${car.car_price}</td>
						<td>
							<div class="input-group input-group-sm">
								<span class="input-group-addon minus">-</span> <input
									type="text" class="number form-control input-sm" value="1" />
								<span class="input-group-addon plus">+</span>
							</div>
						</td>
						<td class="subtotal number small-bold-red text-right"
							style="padding-top: 1.1rem;"></td>
						<td class="action" style="padding-top: 1.1rem;"><span
							class="delete btn btn-xs btn-warning">删除</span></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>

		<div class="row">
			<div class="col-md-12 col-lg-12 col-sm-12">
				<div class="cart-summary">
					<div style="margin-left: 2rem;" class="pull-right">
						<a href="confirmation.jsp" id="btn_settlement" type="button"
							class="btn btn-primary" disabled>去结算</a>
					</div>
					<div style="margin-left: 1rem; margin-top: 0.4rem;"
						class="pull-right total">
						<label>金额合计:<span id="priceTotal"
							class="price-total large-bold-red">0.00</span></label>
					</div>
					<div style="margin-top: 4px;" class="pull-right">
						<label>您选择了<span id="itemCount" class="large-bold-red"
							style="margin: 0 4px;"></span>种产品型号，共计<span id="qtyCount"
							class="large-bold-red" style="margin: 0 4px;"></span>件
						</label>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>