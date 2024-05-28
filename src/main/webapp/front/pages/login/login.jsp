<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page isELIgnored="true" %>
<!-- 登陆 -->
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
		<title>登录</title>
		<link rel="stylesheet" href="../../layui/css/layui.css">
		<!-- 样式 -->
		<link rel="stylesheet" href="../../css/style.css" />
		<!-- 主题（主要颜色设置） -->
		<link rel="stylesheet" href="../../css/theme.css" />
		<!-- 通用的css -->
		<link rel="stylesheet" href="../../css/common.css" />
			</head>
	<style type="text/css">
		html, body {
			height: 100%;
		}
		.login {
			display: flex;
			justify-content: center;
			align-items: center;
		    width: 100%;
		    height: 100%;
			background-attachment: fixed;
			background-size: cover;
			background-position: center;
									background-image: url(http://codegen.caihongy.cn/20211109/78358d07530c450898786fb63e35f8cc.jpg);
								}
		.login form {
			box-sizing: border-box;
			min-height: 400px;
			display: flex;
			flex-direction: column;
			justify-content: center;
			position: inherit;
		}
		.login .logo, .login .title {
			box-sizing: border-box;
		}
		.login .logo img {
			display: block;
		}
		.login .title {
			text-align: center;
		}
		.login .form-item {
			display: flex;
			align-items: center;
			flex-wrap: wrap;
			box-sizing: border-box;
		}
		.login .form-item input, .login .form-label {
			box-sizing: border-box;
		}
		.login .btn-submit {
			display: block;
			box-sizing: border-box;
            height: 44px !important;
		}
        .login .layui-btn-primary {
            height: 44px !important;
        }
		.login form p.txt {
			width: 100%;
			margin: 0;
			box-sizing: border-box;
		}
		.l-redio .layui-form-radio {
			margin: 0;
		}
		.l-redio .layui-form-radio>i {
			font-size: 16px;
			color: #DCDFE6;
		}
		.l-redio .layui-form-radio>div {
			font-size: 14px;
			color: #606266;
		}
		.l-redio .layui-form-radioed>i {
			font-size: 16px;
			color: rgba(98, 53, 106, 1);
		}
		.l-redio .layui-form-radioed>div {
			font-size: 14px;
			color: rgba(98, 53, 106, 1);
		}
		
		#loginForm .codes {
					}
			
			#loginForm .codes input {
				width: calc(100% - 84px);
				height: 44px;
				margin: 0;
				color: rgb(110, 22, 64);
				font-size: 14px;
				padding: 0 10px;
				border-radius: 8px 0 0 8px;
				border-width: 0;
				border-style: solid;
				border-color: rgb(110, 22, 64);
				background-color: rgba(249, 249, 249, 1);
				box-shadow: 0 0 6px rgba(30, 144, 255, 0);
				outline: none;
			}
			
			#loginForm .codes .nums {
				width: 84px;
				height: 44px;
				margin: 0;
				color: $template2.front.login.code.nums.color;
				font-size: $template2.front.login.code.nums.fontSize;
				padding: 0;
				border-radius: 0 8px 8px 0;
				border-width: 0;
				border-style: solid;
				border-color: rgb(110, 22, 64);
				background-color: rgba(214, 214, 214, 1);
				box-shadow: 0 0 6px rgba(30, 144, 255, 0);
				outline: none;
				box-sizing: border-box;
			}
	</style>
	<body>
				<div id="app" class="login" style="position:relative" >
			<form id="loginForm" class="layui-form login-form" :style='{"padding":"20px","boxShadow":"0 0 0px rgba(110,22,64,.8)","borderColor":"rgba(0,0,0,.3)","backgroundColor":"rgba(175, 103, 189, 0.5)","borderRadius":"20px","borderWidth":"0","width":"500px","borderStyle":"solid","justifyContent":"center","height":"auto"}'>
				<div class="logo" v-if="false" :style='{"padding":"0 10px","boxShadow":"0 0 6px rgba(110,22,64,.8)","margin":"10px auto 0","borderColor":"rgba(0,0,0,1)","backgroundColor":"#f7f7f7","color":"rgba(110,22,64,1)","isshow":false,"borderRadius":"8px","borderWidth":"0","width":"auto","lineHeight":"32px","fontSize":"12px","borderStyle":"solid"}'>USER / LOGIN</div>
				<div class="msg-warn hide title" v-if="true" :style='{"padding":"0","boxShadow":"0px 0px 0 0px rgba(110,22,64,.8)","margin":"10px auto","borderColor":"rgba(0,0,0,1)","backgroundColor":"rgba(0,0,0,0)","color":"rgba(255, 255, 255, 1)","isshow":true,"borderRadius":"100%","borderWidth":"0","width":"100%","lineHeight":"38px","fontSize":"20px","borderStyle":"solid"}'>校园饮品网络销售平台</div>
				
				<div :style='{"padding":"0","boxShadow":"0 0 6px rgba(255,0,0,0)","margin":"0 auto","borderColor":"rgba(0,0,0,1)","backgroundColor":"rgba(255, 255, 255, 0)","borderRadius":"0","borderWidth":"0","width":"80%","borderStyle":"solid","height":"64px"}' class="form-item">
				    <label v-if="false" :style='{"padding":"0 10px","boxShadow":"0 0 6px rgba(255,0,0,0)","borderColor":"rgba(0,0,0,0)","backgroundColor":"transparent","color":"#333","borderRadius":"0","textAlign":"right","borderWidth":"0","width":"84px","fontSize":"16px","borderStyle":"solid"}' class="form-label">账号</label>
					<input :style='{"padding":"0 10px","boxShadow":"0 0 0px rgba(0,0,0,.5)","borderColor":"#ccc","backgroundColor":"rgba(249, 249, 249, 1)","color":"#333","borderRadius":"8px","textAlign":"left","borderWidth":"0","width":"100%","fontSize":"14px","borderStyle":"solid","height":"44px"}' type="text" name="username" required lay-verify="required" placeholder="请输入账号" autocomplete="off" class="layui-input">
				</div>
				<div :style='{"padding":"0","boxShadow":"0 0 6px rgba(255,0,0,0)","margin":"0 auto","borderColor":"rgba(0,0,0,1)","backgroundColor":"rgba(255, 255, 255, 0)","borderRadius":"0","borderWidth":"0","width":"80%","borderStyle":"solid","height":"64px"}' class="form-item">
				    <label v-if="false" :style='{"padding":"0 10px","boxShadow":"0 0 6px rgba(255,0,0,0)","borderColor":"rgba(0,0,0,0)","backgroundColor":"transparent","color":"#333","borderRadius":"0","textAlign":"right","borderWidth":"0","width":"84px","fontSize":"16px","borderStyle":"solid"}' class="form-label">密码</label>
					<input :style='{"padding":"0 10px","boxShadow":"0 0 0px rgba(0,0,0,.5)","borderColor":"#ccc","backgroundColor":"rgba(249, 249, 249, 1)","color":"#333","borderRadius":"8px","textAlign":"left","borderWidth":"0","width":"100%","fontSize":"14px","borderStyle":"solid","height":"44px"}' type="password" name="password" required lay-verify="required" placeholder="请输入密码" autocomplete="off" class="layui-input">
				</div>
				<div v-if="roles.length>1" :style='{"padding":"0","boxShadow":"0 0 6px rgba(255,0,0,0)","margin":"0 auto","borderColor":"rgba(0,0,0,1)","backgroundColor":"rgba(255, 255, 255, 0)","borderRadius":"0","borderWidth":"0","width":"80%","borderStyle":"solid","height":"44px"}' class="form-item l-redio">
					<input v-for="(item,index) in roles" v-bind:key="index" type="radio" name="role" id="role" :value="item.tableName" :title="item.roleName">
				</div>

				<div style="display:flex;flex-wrap:wrap;">
					<button :style='{"padding":"0 10px","boxShadow":"0 0 0px rgba(110,22,64,.5)","margin":"10px auto","borderColor":"#ccc","backgroundColor":"rgba(255, 255, 255, 1)","color":"rgba(98, 53, 106, 1)","borderRadius":"30px","borderWidth":"0","width":"60%","lineHeight":"44px","fontSize":"20px","borderStyle":"solid"}' class="layui-btn btn-submit" lay-submit lay-filter="login">登录</button>
					<button :style='{"padding":"0 10px","boxShadow":"0 0 0px rgba(110,22,64,.5)","margin":"10px auto","borderColor":"#ccc","backgroundColor":"rgba(255, 255, 255, 0)","color":"rgba(255, 255, 255, 1)","borderRadius":"8px","borderWidth":"0","width":"100%","lineHeight":"44px","fontSize":"12px","borderStyle":"solid"}' type="reset" class="layui-btn layui-btn-primary">重置</button>
				</div>
				<p :style='{"color":"rgba(255, 255, 255, 1)","textAlign":"center","fontSize":"12px"}' class="txt"><a style="color: inherit;font-size: inherit;margin-right:8px" v-if="item.tableName!='users'&&item.hasFrontRegister=='是'" v-for="(item,index) in menu" v-bind:key="index" :href="'javascript:registerClick(\''+item.tableName+'\')'">注册{{item.roleName.replace('注册','')}}</a></p>
			</form>
		</div>

		<script src="../../layui/layui.js"></script>
		<script src="../../js/vue.js"></script>
		<!-- 组件配置信息 -->
		<script src="../../js/config.js"></script>
		<!-- 扩展插件配置信息 -->
		<script src="../../modules/config.js"></script>
		<!-- 工具方法 -->
		<script src="../../js/utils.js"></script>
				<script>
			var vue = new Vue({
				el: '#app',
				data: {
					menu: menu,
                    roles: []
				},
                created(){
                    for(let item in this.menu) {
                        if(this.menu[item].hasFrontLogin=='是') {
                                this.roles.push(this.menu[item]);
                        }
                    }       
                },
				methods: {
					jump(url) {
						jump(url)
					}
				}
			})
			
			var codes = [{
					num: 1,
					color: '#000',
					rotate: '10deg',
					size: '16px'
				  }, {
					num: 2,
					color: '#000',
					rotate: '10deg',
					size: '16px'
				  }, {
					num: 3,
					color: '#000',
					rotate: '10deg',
					size: '16px'
				  }, {
					num: 4,
					color: '#000',
					rotate: '10deg',
					size: '16px'
				  }]

			layui.use(['layer', 'element', 'carousel', 'form', 'http', 'jquery'], function() {
				var layer = layui.layer;
				var element = layui.element;
				var carousel = layui.carousel;
				var form = layui.form;
				var http = layui.http;
				var jquery = layui.jquery;
				
				function randomString() {
					var len = 4;
					var chars = [
					  'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k',
					  'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v',
					  'w', 'x', 'y', 'z', 'A', 'B', 'C', 'D', 'E', 'F', 'G',
					  'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R',
					  'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z', '0', '1', '2',
					  '3', '4', '5', '6', '7', '8', '9'
					]
					var colors = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f']
					var sizes = ['14', '15', '16', '17', '18']
					
					var output = []
					for (var i = 0; i < len; i++) {
					  // 随机验证码
					  var key = Math.floor(Math.random() * chars.length)
					  codes[i].num = chars[key]
					  // 随机验证码颜色
					  var code = '#'
					  for (var j = 0; j < 6; j++) {
					    var key = Math.floor(Math.random() * colors.length)
					    code += colors[key]
					  }
					  codes[i].color = code
					  // 随机验证码方向
					  var rotate = Math.floor(Math.random() * 45)
					  var plus = Math.floor(Math.random() * 2)
					  if (plus == 1) rotate = '-' + rotate
					  codes[i].rotate = 'rotate(' + rotate + 'deg)'
					  // 随机验证码字体大小
					  var size = Math.floor(Math.random() * sizes.length)
					  codes[i].size = sizes[size] + 'px'
					}
					
					var str = ''
					for(var i = 0;i<codes.length;i++) {
						str += '<span style="color:' + codes[i].color + ';transform:' + codes[i].rotate + ';fontSize:' + codes[i].size + ';padding: 0 3px;display:inline-block">'+codes[i].num+'</span>'
					}
					jquery('#nums').html('').append(str);
				}
				
				jquery('#nums').click(function(){
					randomString();
				})
				
				randomString();

				// 登录
				form.on('submit(login)', function(data) {
					data = data.field;
                    if (vue.roles.length!=1) {
                        if (!data.role) {
                            layer.msg('请选择登录用户类型', {
                            time: 2000,
                            icon: 5
                            });
                            return false;
                        }
                    } else {
                            data.role = vue.roles[0].tableName;
                    }
					
					http.request(data.role + '/login', 'get', data, function(res) {
						layer.msg('登录成功', {
							time: 2000,
							icon: 6
						});
						// 登录凭证
						localStorage.setItem('Token', res.token);
                        var roleName = "";
                        if(typeof(jquery('#role:checked').attr('title')) == "undefined") {
                            roleName = vue.roles[0].roleName;
                        } else {
                            roleName = jquery('#role:checked').attr('title');
                        }
                        localStorage.setItem('role', roleName);
						// 当前登录用户角色
						localStorage.setItem('userTable', data.role);
						localStorage.setItem('sessionTable', data.role);
						// 用户名称
						localStorage.setItem('adminName', data.username);
						http.request(data.role + '/session', 'get', {}, function(res) {
							// 用户id
							localStorage.setItem('userid', res.data.id);
							if(res.data.vip) {
								localStorage.setItem('vip', res.data.vip);
							}
							// 路径访问设置
							window.location.href = '../../index.jsp';
						})
						
					});
					return false
				});

			});

			/**
			 * 跳转登录
			 * @param {Object} tablename
			 */
			function registerClick(tablename) {
				window.location.href = '../' + tablename + '/register.jsp?tablename=' + tablename;
			}
		</script>
	</body>
</html>
