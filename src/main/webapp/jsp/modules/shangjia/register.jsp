<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="utf-8">
<title>注册</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">

<!-- Le styles -->
<script type="text/javascript"
	src="${pageContext.request.contextPath}/resources/assets2/js/jquery.min.js"></script>

<!--  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets2/css/style.css"> -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/assets2/css/loader-style.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/assets2/css/bootstrap.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/assets2/css/signin.css">

<!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
<!--[if lt IE 9]>
        <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
        <![endif]-->
<!-- Fav and touch icons -->
<link rel="shortcut icon"
	href="${pageContext.request.contextPath}/resources/assets2/ico/minus.png">
	</head>

<style>
	.error{
		color:red;
	}
	
	html {
		width: 100%;
		height: 100%;
	}
	body {
		background-position: center center;
		background-size: cover;
		background-repeat: no-repeat;
		overflow: hidden !important;
		width: 100%;
		height: 100%;
						background-image: url(http://codegen.caihongy.cn/20211109/78358d07530c450898786fb63e35f8cc.jpg) !important;
					}
	.container {
		padding: 0;
		margin: 0;
		display: flex;
		height: 100%;
		width: 100%;
		justify-content: flex-start;
		align-items: center;
	}
	
	#login-wrapper {
		display: flex;
		flex-direction: column;
		position: inherit;
		height: 680px;
		width: 680px;
		margin: 0 0 0 100px;
		padding: 100px 20px;
		border-radius: 50%;
		border-width: 0;
		border-style: solid;
		border-color: rgba(0,0,0,.3);
		background-color: rgba(186, 203, 238, 1);
		box-shadow: 14px 0 0px 14px #AFB0E7;
	}
	
	#login-wrapper h1 {
		line-height: 44px;
		width: 100%;
		color: #fff;
		font-size: 28px;
		margin: -20px auto 20px;
		padding: 0;
		border-radius: 0 0 36px 36px;
		border-width: 0;
		border-style: solid;
		border-color: rgba(0,0,0,.3);
		background-color: rgba(30, 144, 255, 0);
		box-shadow: 0 0 0px rgba(30, 144, 255, 0);
		text-align: center;
	}
	
	#registerForm .form-group-l-r {
		display: flex;
		flex-wrap: wrap;
	}
	
	#registerForm .form-group {
		display: flex;
		align-items: center;
		flex-wrap: wrap;
		height: auto;
		width: 40%;
		margin: -60px 0 60px 30px;
		padding: 0;
		border-radius: 0;
		border-width: 0;
		border-style: solid;
		border-color: rgba(0,0,0,1);
		background-color: rgba(0,0,0,0);
		box-shadow: 0 0 6px rgba(255,0,0,0);
	}
	
	#registerForm .form-group .label {
		display:none;
		width: 72px;
		line-height: 44px;
		margin: 0;
		color: #1e90ff;
		font-size: 16px;
		padding: 0;
		border-radius: 0;
		border-width: 0;
		border-style: solid;
		border-color: rgba(0,0,0,0);
		background-color: transparent;
		box-shadow: 0 0 6px rgba(255,0,0,0);
		text-align: left;
	}
	
	#registerForm .form-group .form-control-i {
		width: 100%;
		height: 44px;
		margin: 10px 0;
		color: rgba(0, 0, 0, 1);
		font-size: 14px;
		padding: 0 10px;
		border-radius: 8px;
		border-width: 0;
		border-style: solid;
		border-color: #ccc;
		background-color: rgba(255, 255, 255, 1);
		box-shadow: 0 0 0px rgba(30, 144, 255, .5);
		text-align: left;
	}
	
	#registerForm .form-group .form-control-i:focus {
	    outline: 0 none;
	}
    
    #registerForm .emails #email {
        width: 70%;
        height: 44px;
        margin: 0;
        color: rgba(0, 0, 0, 1);
        font-size: 14px;
        padding: 0 12px;
        border-radius: 4px 0 0 4px;
        border-width: 0;
        border-style: solid;
        border-color: #606266;
        background-color: rgba(255, 255, 255, 1);
        box-shadow: 0 0 0px rgba(0,0,0,.5);
        text-align: left;
    }
    #registerForm .emails .btn {
        width: 30%;
        height: 44px;
        line-height: 44px;
        margin: 0;
        color: #fff;
        font-size: 12px;
        padding: 0;
        border-radius: 0 4px 4px 0;
        border-width: 0;
        border-style: solid;
        border-color: rgba(255,0,0,0);
        background-color: #1e90ff;
        box-shadow: 0 0 0px rgba(0,0,0,.5);
    }
	
	#registerForm button.pull-right {
		outline: none;
		width: 90px;
		height: 90px;
		margin: -400px 0 0px 470px;
		color: #fff;
		font-size: 18px;
		padding: 0 10px;
		border-radius: 50%;
		border-width: 0;
		border-style: solid;
		border-color: #ccc;
		background-color: rgba(112, 112, 112, 1);
		box-shadow: 0 0 0px rgba(30, 144, 255, .5);
	}
	
	.r-login {
		display: flex;
		justify-content: center;
		align-items: center;
		width: auto;
		height: 28px;
		margin: -170px  0 0 400px;
		color: #fff;
		font-size: 14px;
		padding: 0;
		border-radius: 8px;
		border-width: 0;
		border-style: solid;
		border-color: #ccc;
		background-color: rgba(255, 0, 0, 0);
		box-shadow: 0 0 0px rgba(255,0,0,.5);
	}
	
	.r-login a {
		text-decoration: none;
		color: inherit;
	}
</style>

<body>
	<!-- Preloader -->
		<div id="preloader">
		<div id="status">&nbsp;</div>
	</div>

	<div class="container" style="position: relative;">

		<div class="" id="login-wrapper">
			
			<!-- <div class="row">
				<div class="col-md-4 col-md-offset-4">
					<div id="logo-login">
						
					</div>
				</div>
			</div> -->
			
			<h1>注册</h1>
			<form id="registerForm" action="" method="post">
							<div class="form-group">
							<label class="label">商家账号</label> 
							<input  name="shangjiazhanghao" placeholder="商家账号" class="form-control-i">
							</div>
							<div class="form-group">
							<label class="label">密码</label> 
							<input type="password"#elsetype="text" name="mima" placeholder="密码" class="form-control-i">
							</div>
							<div class="form-group">
							<label class="label">确认密码</label> 
							<input type="password" name="mima2" placeholder="确认密码" class="form-control-i">
							</div>
							<div class="form-group">
							<label class="label">商家姓名</label> 
							<input  name="shangjiaxingming" placeholder="商家姓名" class="form-control-i">
							</div>
							<div class="form-group">
							<label class="label">商家电话</label> 
							<input  name="shangjiadianhua" placeholder="商家电话" class="form-control-i">
							</div>
				<div class="form-group-l-r">
					<button id="submitBtn" class="btn btn-primary pull-right" type="button">注 册</button>
				</div>
				<div class="r-login"><a href="javascript:window.location.href='../../login.jsp'">已有账号，直接登录</a></div>
			</form>
			
			<!-- <div class="row">
				<div class="col-md-4 col-md-offset-4">
					<div class="account-box">
						

						<div class="row-block">
							<div class="row"></div>
						</div>
					</div>
				</div>
			</div> -->
		</div>

		<p>&nbsp;</p>


	</div>

	<!--  END OF PAPER WRAP -->

	<!-- MAIN EFFECT -->
	<!--<script type="text/javascript" src="${pageContext.request.contextPath}/resources/assets2/js/preloader.js"></script>-->
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/resources/assets2/js/bootstrap.js"></script>
	<!--<script type="text/javascript" src="${pageContext.request.contextPath}/resources/assets2/js/app.js"></script>-->
	<!--<script type="text/javascript" src="${pageContext.request.contextPath}/resources/assets2/js/load.js"></script>-->
	<!--<script type="text/javascript" src="${pageContext.request.contextPath}/resources/assets2/js/main.js"></script>-->
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/resources/js/jquery.form.js"></script>

	<!--<script src="http://maps.googleapis.com/maps/api/js?sensor=false" type="text/javascript"></script> -->
	<!--<script type="text/javascript" src="${pageContext.request.contextPath}/resources/assets2/js/map/gmap3.js"></script> -->
	<script type="text/javascript" charset="utf-8" src="${pageContext.request.contextPath}/resources/js/validate/jquery.validate.min.js"></script>
	<script type="text/javascript" charset="utf-8" src="${pageContext.request.contextPath}/resources/js/validate/messages_zh.js"></script>
	<script type="text/javascript" charset="utf-8" src="${pageContext.request.contextPath}/resources/js/validate/card.js"></script>
		<script type="text/javascript">
		
	<%@ include file="../../utils/menu.jsp"%>
		
	<%@ include file="../../utils/baseUrl.jsp"%>

		// 表单校验
		function validform() {
			return $("#registerForm").validate({ 
				rules: {
							mima: {
								required: true,
							},
							shangjiaxingming: {
								required: true,
							},
							xingbie: {
							},
							shangjiadianhua: {
								isPhone: true,
							},
							touxiang: {
							},
							money: {
								number: true,
							},
				},
				messages: {
							mima: {
								required: "密码不能为空",
							},
							shangjiaxingming: {
								required: "商家姓名不能为空",
							},
							xingbie: {
							},
							shangjiadianhua: {
							},
							touxiang: {
							},
							money: {
								number: "请输入数字",
							},
				}
			}).form();
		}
		// 添加表单校验方法
		function addValidation(){
			jQuery.validator.addMethod("isPhone", function(value, element) {
					var length = value.length;
					var mobile = /^(((13[0-9]{1})|(15[0-9]{1})|(18[0-9]{1})|(17[0-9]{1}))+\d{8})$/;
					return this.optional(element) || (length == 11 && mobile.test(value));
			}, "请填写正确的手机号码");
			jQuery.validator.addMethod("isIdCardNo", function(value, element) {
				return this.optional(element) || value.length == 18;
			}, "请正确输入您的身份证号码");
			jQuery.validator.addMethod("isTel", function(value, element) {
		          var length = value.length;
		          var phone = /(^(\d{3,4}-)?\d{6,8}$)|(^(\d{3,4}-)?\d{6,8}(-\d{1,5})?$)|(\d{11})/;
		          return this.optional(element) || (phone.test(value));
		         }, "请填写正确的固定电话");//可以自定义默认提示信息
		}


		// 表单提交
		function submit() {
			if(validform() ==true){
				let data = {};
				let value = $('#registerForm').serializeArray();
				$.each(value, function (index, item) { 
							data[item.name] = item.value;
						});
                if(data.mima!=data.mima2) {
                    alert("两次密码输入不一致");
                    return;
                }
				let json = JSON.stringify(data);
				//console.log('json : ',json);
				var url = baseUrl + "shangjia/register";
				$.ajax({ 
					type: "POST",
					url: url,
					contentType: "application/json",
					data:json,
					beforeSend: function(xhr) {xhr.setRequestHeader("token", window.sessionStorage.getItem('token'));},
					success: function(res){    
						if(res.code == 0){
						alert("注册成功!");
						window.location.href="${pageContext.request.contextPath}/jsp/login.jsp";
						}else if(res.code == 401){
							<%@ include file="../../static/toLogin.jsp"%> 	
						}else{
							alert(res.msg)
						}
					},
				});      
			}else{
				alert("表单未填完整或有错误");
			}
		}    

		function ready() {
			addValidation();
			//注册表单验证
		    // $(validform());
			$('#submitBtn').on('click', function(e) {
				e.preventDefault();
				//console.log("点击了...提交按钮");
				submit();
			});
		}
		document.addEventListener("DOMContentLoaded", ready);
	</script>

</body>

</html>
