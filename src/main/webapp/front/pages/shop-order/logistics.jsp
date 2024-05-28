<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page isELIgnored="true" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title></title>
		<link rel="stylesheet" type="text/css" href="../../elementui/elementui.css" />
		<style>
			html,body,#app {
				height: 100%;
			}
			body {
				margin: 0;
			}
			.chat-form {
				height: 100%;
				display: flex;
				flex-direction: column;
			}
			.chat-content {
			  overflow-y: scroll;
			  border: 1px solid #eeeeee;
			  margin: 0;
			  padding: 0;
			  width: 100%;
			      flex: 1;
			}
			.left-content {
			  float: left;
			  margin-bottom: 10px;
			  padding: 10px;
			}
			.right-content {
			  float: right;
			  margin-bottom: 10px;
			  padding: 10px;
			}
			.clear-float {
			  clear: both;
			}
			.btn-input {
				margin-left: 0px;
				display: flex;
				width: 100%;
				padding: 10px 12px;
				box-sizing: border-box;
			}
		</style>
	</head>
	<body style="overflow-y: hidden;overflow-x: hidden;">
		<div id="app">
			<el-form class="detail-form-content chat-form" ref="ruleForm" label-width="0">
				<div class="chat-content">
                    <div v-html="logistics"></div>
				</div>
			</el-form>
		</div>

		<!-- layui -->
		<script src="../../layui/layui.js"></script>
		<!-- vue -->
		<script src="../../js/vue.js"></script>
		<!-- elementui -->
		<script src="../../elementui/elementui.js"></script>
		<!-- 组件配置信息 -->
		<script src="../../js/config.js"></script>
		<!-- 扩展插件配置信息 -->
		<script src="../../modules/config.js"></script>
		<!-- 工具方法 -->
		<script src="../../js/utils.js"></script>
		<script type="text/javascript">
			var app = new Vue({
				el: "#app",
				data() {
					return {
                        logistics:'',
					}
				},
				methods: {
					// 初始化
					init(id) {
					},
				}
			})

			layui.use(['layer', 'element', 'http', 'jquery'], function() {
				var layer = layui.layer;
				var element = layui.element;
				var http = layui.http;
				var jquery = layui.jquery;

                var reg = new RegExp("(^|&)" + 'id' + "=([^&]*)(&|$)", "i");  
                var r = window.location.search.substr(1).match(reg);
                id = unescape(r[2]);
                http.request('orders/info/'+id, 'get', {
                }, function(res) {
                    app.logistics = res.data.logistics
                })
			});
		</script>
	</body>
</html>
