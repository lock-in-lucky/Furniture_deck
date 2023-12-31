<?xml version="1.0" encoding="utf-8" ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>付款方式</title>
<script type="text/javascript" src="style/js/jquery-1.11.min.js"></script>
    <script type="text/javascript" src="style/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="style/js/etao.js"></script>
	<script type="text/javascript" src="style/js/cart.js"></script>
	<link href="style/css/cart.css" media="screen" rel="stylesheet" type="text/css" />
	<link href="style/css/cart.css" media="screen" rel="stylesheet" type="text/css" />
	<link href="style/css/bootstrap.min.css" media="screen" rel="stylesheet" type="text/css" />
	<link rel="stylesheet" href="style/css/app.css">
    <link rel="stylesheet" href="style/css/theme.css">
</head>
<body class="container">
<script type="text/javascript">
    $(document).ready(function() {
        $("#new_address_dialog").on("show.bs.modal", function (e) {
            loadPage("new_address_content_div", "<?php echo $this->baseUrl . '/system/address/add.ajax/cid/' . $this->customerId . '/from/' . base64_encode($_SERVER['REQUEST_URI']); ?>");
        });

        $("#new_address_dialog").on("hidden.bs.modal", function (e) {
            $(this).removeData("bs.modal");
        });

        $("#new_address_button").click(function() {
            $.ajax({
                url: "<?php echo $this->baseUrl . '/system/address/save.ajax' ?>",
                type: 'POST',
                data: {"customer":$('#customer').val(),"address":$('#address').val(),"zip_code":$('#zip_code').val(),"telephone":$('#telephone').val(),"cell_phone":$('#cell_phone').val(),"contact_person":$('#contact_person').val(),"province_name":$('#province_name').val(),"city_name":$('#city_name').val(),"area_name":$('#area_name').val(),"is_default":0},
                error: function() { alert("添加收货地址出错!!"); },
                success: function(msg) {
                    //alert(msg);
                    $(".address-list li").removeClass("selected");
                    $(".address-list").append("<li class='selected'><input type='radio' id='addr_0' name='ship_to1' value='' checked /><label for='addr_0'>" + msg + "</label>");
                    $('#ship_to').val(msg);
                    $("#new_address_dialog").modal("hide");
                }
            });
        });

        $(".address-list li :radio").click(function() {
            $(this).parent().parent().addClass("selected").siblings().removeClass("selected");
        });

        $("#rebate").blur(function() { //确保返利的数字有效
            item_qty = parseInt($(this).val());
            if (isNaN(item_qty) || (item_qty == 0)) {
                $(this).val($("#max_rebate").val());
            }
        });

        $("#credit").blur(function() { //确保信用额度的数字有效
            item_qty = parseInt($(this).val());
            if (isNaN(item_qty) || (item_qty == 0)) {
                $(this).val(0);
            }
        });

        $("#new_iris_project_dialog").on("show.bs.modal", function (e) {
            loadPage("new_iris_project_content_div", "<?php echo $this->baseUrl . '/trans/iris/add.ajax/'; ?>");
        });

        $("#new_iris_project_dialog").on("hidden.bs.modal", function (e) {
            $(this).removeData("bs.modal");
        });

        $("#new_iris_project_button").click(function() {
            $.ajax({
                url: "<?php echo $this->baseUrl . '/trans/iris/save.ajax' ?>",
                type: 'POST',
                data: {"db_action":$('#db_action').val(),"customer_id":$('#customer_id').val(),"project_name":$('#project_name').val(),"project_site":$('#project_site').val(),"project_cycle":$('#project_cycle').val(),"project_vendor":$('#project_vendor').val(),"freezing_medium":$('#freezing_medium').val(),"is_valid":$('#is_valid').val()},
                error: function() { alert("添加出错!!"); },
                success: function(msg) {
                    $("#new_iris_project_dialog").modal("hide");
                    location.reload();
                }
            });
        });
    });
    
    function saveAddress() {
        $.ajax({
            type: "post",
            url: "<?php echo $this->baseUrl . '/system/address/save.ajax';?>",
            data: {"customer":$('#customer').val(),"address":$('#address').val(),"zip_code":$('#zip_code').val(),"telephone":$('#telephone').val(),"cell_phone":$('#cell_phone').val(),"contact_person":$('#contact_person').val(),"province_name":$('#province_name').val(),"city_name":$('#city_name').val(),"area_name":$('#area_name').val(),"is_default":0},
            error: function(msg) {alert("Error:" + msg);},
            success: function(msg) {
                $(".address-list li").removeClass("selected");
                $(".address-list").append("<li class='selected'><input type='radio' id='addr_0' name='ship_to1' value='' checked /><label for='addr_0'>" + msg + "</label>");
                $('#ship_to').val(msg);
                closeDiv('new_address_div');
            }
        });
    }

    //数据检查
    function beforePost() {
        if (isValid() == false) return false;
        if (($("#BTB2").prop("checked") == true) && (jQuery.trim($('#BTB_desc').val()) == "")) {
            alert("请注明最终用户名称和最终目的地！");
            return false;
        }
        if ($("#use_rebate").prop("checked") == true) {
            if (parseInt($("#rebate").val()) > parseInt($("#max_rebate").val())) {
                //alert($("#rebate").val());
                //alert($("#max_rebate").val());
                alert("返利使用金额超出最大值");
                $("#rebate").focus();
                return false;
            }
        }
        if ($("#terms").prop("checked") == false) {
            alert("提交订单前，请阅读《销售条款和条件》");
            return false;
        }
        return true;
    }
</script>
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
    		<a class="nav-link" href="Buycar.jsp">购物车</a>
    		</li>
    		<li class="nav-item">
    		<a class="nav-link" href="author.jsp"><img class="rounded-circle mr-2" src="style/img/av.png" width="30"><span class="align-middle">个人中心</span></a>
    		</li>
    	</ul>
    </div>
    </nav>    
    <main role="main">
	<div class="row">
		<div class="col-lg-2 col-md-2 col-sm-2 col-xs-3 hidden-print">
			
		</div>

		<div class="col-lg-10 col-md-10 col-sm-10 col-xs-9" id="workspace" role="main">

			<div class="row hidden-print">
				<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
					<ol class="breadcrumb">
						<li><a href="<%=application.getContextPath()%>">首页</a></li>
                        <li class="active">确认购买</li>
					</ol>
				</div>
			</div>

			<form style="margin-bottom:40px;" class="form-horizontal" id="order_confirm_form"
				name="order_confirm_form" method="get"
				action="<%=application.getContextPath()%>/order/save">
				<input type="hidden" id="db_action" name="db_action" value="insert" />
				<input type="hidden" id="freight_fee" name="freight_fee" value="0" />

				<!-- 订单信息 -->
				<div class="row">
					<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
					<div class="well well-sm">
					
						<fieldset>
							<legend>订单信息</legend>
							<div class="form-group">
								<label
									class="col-lg-2 col-md-2 col-sm-2 col-xs-12 control-label"
									for="customer_PO_num">客户订单号</label>
								<div class="col-lg-10 col-md-10 col-sm-10 col-xs-12">
									<input class="form-control input-sm" id="customer_PO_num"
										name="customer_PO_num" required requireText="请输入客户订单号"
										type="text" maxLength="50" autofocus />
									<p class="help-block">
										请确保该订单号在当前<abbr title="艾默生为经销商分配的唯一代码">客户代码</abbr>下是唯一的
									</p>
								</div>
							</div>
							<div class="form-group">
								<label
									class="col-lg-2 col-md-2 col-sm-2 col-xs-12 control-label">要求交期</label>
								<div class="col-lg-10 col-md-10 col-sm-10 col-xs-12">
									<input id="rtd" name="rtd" class="form-control input-sm Wdate"
										type="text" required requireText="请选择要求交期" maxLength="10"
										onfocus="WdatePicker({lang:'en',isShowWeek:true,isShowClear:false, dateFmt:'yyyy-MM-dd', minDate:'%y-%M-%d'})" />
								</div>
							</div>
							<div class="form-group">
								<label
									class="col-lg-2 col-md-2 col-sm-2 col-xs-12 control-label"
									for="deliver_type">运输方式</label>
								<div class="col-lg-10 col-md-10 col-sm-10 col-xs-12">
									<select class="form-control input-sm" id="deliver_type"
										name="deliver_type" required requireText="请选择运输方式">
									</select>
								</div>
							</div>
							<div class="form-group">
								<label
									class="col-lg-2 col-md-2 col-sm-2 col-xs-12 control-label"
									for="payment_term">付款方式</label>
								<div class="col-lg-10 col-md-10 col-sm-10 col-xs-12">
									<select class="form-control input-sm" id="payment_term"
										name="payment_term" required requireText="请选择付款方式">
									</select>
								</div>
							</div>
							<div class="form-group">
								<label
									class="col-lg-2 col-md-2 col-sm-2 col-xs-12 control-label"
									for="shipping_term">发货方式</label>
								<div class="col-lg-10 col-md-10 col-sm-10 col-xs-12">
									<select class="form-control input-sm" id="shipping_term"
										name="shipping_term" required requireText="请选择发货方式">
									</select>
								</div>
							</div>
							<div class="form-group">
								<label
									class="col-lg-2 col-md-2 col-sm-2 col-xs-12 control-label">发票地址</label>
								<div class="col-lg-10 col-md-10 col-sm-10 col-xs-12">
									<input class="form-control input-sm" id="bill_to"
										name="bill_to" type="text" required readonly
										requireText="请输入发票地址" maxLength="200" value="" />
								</div>
							</div>
							<div class="form-group">
								<label
									class="col-lg-2 col-md-2 col-sm-2 col-xs-12 control-label"
									for="mail_address">邮件地址</label>
								<div class="col-lg-10 col-md-10 col-sm-10 col-xs-12">
									<input class="form-control input-sm" id="mail_address"
										name="mail_address" required requireText="请输入邮件地址"
										type="email" maxLength="80" value="" />
									<p class="help-block">当您的订单发生变更时，系统会即时发送邮件到这个邮箱</p>
								</div>
							</div>
							<div class="form-group">
								<label
									class="col-lg-2 col-md-2 col-sm-2 col-xs-12 control-label">订单备注</label>
								<div class="col-lg-10 col-md-10 col-sm-10 col-xs-12">
									<textarea class="form-control input-sm" id="remark"
										name="remark" rows="5" maxLength="150"></textarea>
									<p class="help-block">留言请控制在150个汉字以内</p>
								</div>
							</div>
							<div class="form-group">
								<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
									<label class="control-label">本订单是否为按背对背基准与销售订单配对？<sup>1</sup></label>
									<blockquote>
										<div class="radio">
											<label> <input type="radio" id="BTB1" name="BTB"
												checked value="0" /> 不是，本采购订单为一般储存存货，并无按背对背基准与销售订单配对。
											</label>
										</div>
										<div class="radio">
											<label> <input type="radio" id="BTB2" name="BTB"
												value="1" /> 是的，本采购订单按背对背基准与销售订单配对。
											</label>
										</div>
										<textarea id="BTB_desc" name="BTB_desc" rows="5"
											class="form-control input-sm" maxLength="100"></textarea>
										<p class="help-block">请在此处注明最终用户名称和最终目的地(100字以内)</p>
									</blockquote>
								</div>
							</div>
							<div class="form-group">
								<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
									<label class="control-label">客户或最终用户的生产、服务、销售或执行行为会用于以下所列类别吗？<sup>2</sup></label>
									<blockquote>
										<label class="radio-inline"><input type="radio"
											id="for_use1" name="for_use" value="N/A" checked />无</label> <label
											class="radio-inline"><input type="radio"
											id="for_use2" name="for_use" value="atomic power" />原子能</label> <label
											class="radio-inline"><input type="radio"
											id="for_use3" name="for_use" value="biological" />生物</label> <label
											class="radio-inline"><input type="radio"
											id="for_use4" name="for_use" value="chemistry" />化学</label> <label
											class="radio-inline"><input type="radio"
											id="for_use5" name="for_use"
											value="missile research and development" />导弹研发</label> <label
											class="radio-inline"><input type="radio"
											id="for_use6" name="for_use" value="military" />军事</label>
									</blockquote>
								</div>
							</div>
							<div class="alert alert-warning">
								问题1回答"是"，或问题2所选类别为非“无”，客户和最终用途必须评估后确认销售是否可以进行。根据客户的业务、国家、参与多边协定等性质，该客户是"拒绝"或"适当接受"必须在客户文件里注明。
							</div>
						</fieldset>
						</div>
					</div>
				</div>

				<!-- 收货地址 -->
				<div class="row">
					<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
					<div class="well well-sm">
						<fieldset>
							<legend>
								收货地址
								<div class="btn-toolbar pull-right hidden-print" role="tolbar">
									<div class="btn-group btn-group-sm">
										<button type="button" class="btn btn-default"
											title="添加并使用新的收货地址" data-toggle="modal"
											data-target="#new_address_dialog">使用新地址</button>
									</div>
								</div>
							</legend>
							<div class="form-group">
								<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
									<div class="address">
										<ul class="address-list data-list">
											<li><label><input type="radio" name="ship_to1"
													onclick="$('#ship_to').val($(this).parent().text());" />这里是客户的收货地址</label>
										</ul>
									</div>
								</div>
							</div>
						</fieldset>
						</div>
					</div>
				</div>

				<!-- 购买明细 -->
				<div class="row">
					<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 ">
					<div class="well well-sm table-responsive">
						<fieldset>
							<legend>
								购买明细
								<div class="btn-toolbar pull-right hidden-print" role="tolbar">
									<div class="btn-group btn-group-sm">
										<a class="btn btn-default" role="button" href="<%=application.getContextPath()%>/cart/check/1">回到购物车，修改产品</a>
									</div>
								</div>
							</legend>
							<table class="table table-condensed table-hover">
								<thead>
								<tr>
									<th>产品型号</th>
									<th>产品描述</th>
									<th>生产工厂</th>
									<th>特价单号</th>
									<th>数量</th>
									<th>单价</th>
									<th>小计</th>
									</tr>
								</thead>
								<tbody>
								</tbody>
								<tfoot>
									<tr>
										<td colspan="7" class="text-right">
											<p class="form-control-static">
												产品合计：<span class="large-bold-red">￥</span>
											</p>
										</td>
									</tr>
								</tfoot>
							</table>
						</fieldset>
					</div>
					</div>
				</div>

				<!-- 客户返利 -->
				<div class="row ">
					<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
					<div class=" well well-sm table-responsive">
						<fieldset>
							<legend>我的返利</legend>
							<table class="table table-condensed table-hover">
								<thead>
								<tr>
									<th>客户代码</th>
									<th>客户名称</th>
									<th>财年</th>
									<th>返利金额</th>
									<th>已用金额</th>
									<th>剩余金额</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td colspan="6"><span class="empty-content">系统中没有您的返利数据。</span></td>
									</tr>
								</tbody>
								<tfoot>
									<tr>
										<td colspan="6">
											<div class="text-right">
												您最多可以使用返利支付<span class="smaller-bold-red">90%</span>的订单金额。
												本次可支付￥<input type="number" min="0" max="100"
													class="small-bold-red number" id="rebate" name="rebate"
													value="$rebate" style="width: 100px; margin: 0 3px;" />元，
												使用<input id="use_rebate" name="use_rebate" value="1"
													type="checkbox">
											</div>
										</td>
									</tr>
								</tfoot>
							</table>
						</fieldset>
					</div>
					</div>
				</div>

				<!-- 信息额度 -->
				<div class="row">
					<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
					<div class="well well-sm table-responsive">
						<fieldset>
							<legend>我的信用额度</legend>
							<table class="table table-condensed table-hover">
								<thead>
								<tr>
									<th>起始日</th>
									<th>结束日</th>
									<th>信用额度</th>
									<th>上期账单</th>
									<th>上期还款</th>
									<th>本期账单</th>
									<th>本期还款</th>
									<th>冻结金额</th>
									<th><abbr
										title="可用金额 = 信用额度 - 上期账单 + 上期还款 - 本期账单 + 本期还款 - 本期冻结金额 - 调整金额">可用金额</abbr></th>
								</tr>
								</thead>
								<tbody>
									<tr>
										<td colspan="9"><span class="empty-content">系统中没有您的信用额度数据。</span></td>
									</tr>
								</tbody>
								<tfoot>
									<tr>
										<td colspan="9">
											<div style="float: right; margin-right: 4px;">
												您可以使用信用额度支付￥<input type="number" min="0" max="100"
													class="small-bold-red number" id="credit" name="credit"
													value="88" style="width: 100px; margin: 0 3px;">
											</div>
										</td>
									</tr>
								</tfoot>
							</table>
						</fieldset>
					</div>
					</div>
				</div>

				<!-- 背对背订单、最终用途、销售条款 -->
				<div class="row" style="margin-bottom:20px;">
					<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 ">
						<div class="checkbox pull-right">
							<label> <input type="checkbox" id="terms" name="terms" />
								我已阅读并同意《<a target="_blank"
								href="<?php echo $this->baseUrl . '/default/index/terms';?>">艾默生销售条款和条件</a>》
							</label>
						</div>
					
					</div>
				</div>
				<div class="row">
					<div
						class="col-lg-offset-3 col-md-offset-3 col-sm-offset-3 col-lg-6 col-md-6 col-sm-6 col-xs-12">
						<form action="info.jsp">
						<button type="button" class="btn btn-lg btn-block btn-primary"
							id="btn_submit_order"
							onclick='location.href=("info.jsp")'>提交订单</button>
						</form>
					</div>
					
				</div>
			</form>

		</div>
					<!-- 添加收货地址模式窗体 -->
			<div class="modal fade" role="dialog" tabIndex="-1"
				id="new_address_dialog" aria-labelledby="new_address_modal_label"
				aria-hidden="true" data-backdrop="static">
				<div class="modal-dialog">
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal"
								aria-hidden="true">&times;</button>
							<h4 class="modal-title" id="new_address_modal_label">使用新收货地址</h4>
						</div>
						<div class="modal-body" id="new_address_content_div"></div>
						<div class="modal-footer">
							<button type="button" class="btn btn-default"
								data-dismiss="modal">关闭</button>
							<button type="button" class="btn btn-primary"
								id="new_address_button">保存并使用</button>
						</div>
					</div>
				</div>
			</div>

			<!-- 添加IRIS项目模式窗体 -->
			<div class="modal fade" role="dialog" tabIndex="-1"
				id="new_iris_project_dialog"
				aria-labelledby="new_iris_project_modal_label" aria-hidden="true"
				data-backdrop="static">
				<div class="modal-dialog">
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal"
								aria-hidden="true">&times;</button>
							<h4 class="modal-title" id="new_iris_project_modal_label">添加IRIS项目</h4>
						</div>
						<div class="modal-body" id="new_iris_project_content_div"></div>
						<div class="modal-footer">
							<button type="button" class="btn btn-default"
								data-dismiss="modal">关闭</button>
							<button type="button" class="btn btn-primary"
								id="new_iris_project_button">保存并使用</button>
						</div>
					</div>
				</div>
			</div>
			<!-- end -->
		
	</div>
</body>
</html>