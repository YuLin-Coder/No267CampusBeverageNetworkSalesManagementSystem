<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page isELIgnored="true" %>
<!-- 论坛中心 -->
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
		<title>论坛中心</title>
		<link rel="stylesheet" href="../../layui/css/layui.css">
		<!-- 样式 -->
		<link rel="stylesheet" href="../../css/style.css" />
		<!-- 主题（主要颜色设置） -->
		<link rel="stylesheet" href="../../css/theme.css" />
		<!-- 通用的css -->
		<link rel="stylesheet" href="../../css/common.css" />
	</head>
	<style>
		#swiper {
			overflow: hidden;
		}
		#swiper .layui-carousel-ind li {
			width: 16px;
			height: 10px;
			border-width: 0;
			border-style: solid;
			border-color: rgba(0,0,0,.3);
			border-radius: 3px;
			background-color: #f7f7f7;
			box-shadow: 0 0 6px rgba(110,22,64,.8);
		}
		#swiper .layui-carousel-ind li.layui-this {
			width: 24px;
			height: 10px;
			border-width: 0;
			border-style: solid;
			border-color: rgba(0,0,0,.3);
			border-radius: 0;
			background-color: rgba(110,22,64,1);
			box-shadow: 0 0 6px rgba(110,22,64,.8);
		}
		
		.index-title {
		    text-align: center;
		    box-sizing: border-box;
		    width: 980px;
		    display: flex;
		    justify-content: center;
		    align-items: center;
		    flex-direction: column;
		}
	
		.paper-container thead tr {
			background-color: rgba(255, 255, 255, 1);
			color: #000;
		}
	</style>
	<body>

		<div id="app">
			<!-- 轮播图 -->
			<div class="layui-carousel" id="swiper" :style='{"boxShadow":"0 0 0px rgba(110,22,64,.8)","margin":"0 auto","borderColor":"rgba(0,0,0,.3)","borderRadius":"20px","borderWidth":"0","width":"100%","borderStyle":"solid"}'>
			  <div carousel-item id="swiper-item">
				<div v-for="(item,index) in swiperList" :key="index">
					<img style="width: 100%;height: 100%;object-fit:cover;" :src="item.img" />
				</div>
			  </div>
			</div>
			<!-- 轮播图 -->

			<!-- 标题 -->
			<div class="index-title" :style='{"padding":"10px","boxShadow":"0 6px 6px #4B0E74 inset","margin":"10px auto","borderColor":"rgba(0, 0, 0, 1)","backgroundColor":"rgba(255, 255, 255, 1)","color":"rgba(0, 0, 0, 1)","borderRadius":"0","borderWidth":"2px","fontSize":"20px","borderStyle":"solid","height":"auto"}'>
			  <span>SHOP / CART</span><span>购物车</span>
			</div>
			<!-- 标题 -->

			<div class="paper-container">
				<table class="layui-table" lay-skin="nob">
					<thead>
						<tr>
                            <th>
                                <input checked type="checkbox" id="checkAll" @click="selectAll()">
                            </th>
							<th>购买商品</th>
							<th>价格</th>
							<th>数量</th>
							<th>总价</th>
							<th>操作</th>
						</tr>
					</thead>
					<tbody>
						<tr v-for="(item,index) in dataList" v-bind:key="index" style="height: 110px">
                            <td>
                                <label>
                                  <input checked type="checkbox" name="good" value="index" @click="selectOne()">
                                </label>
                            </td>
							<td style="display: flex;text-align: left;">
								<img :src="baseurl+item.picture" style="width: 100px;height: 100px;object-fit: cover;">
								<div style="margin-left: 10px;margin-top: 10px;">
									{{item.goodname}}
								</div>
							</td>
							<td style="width: 100px;"><span :style='{"fontSize":"12px"}'>￥</span>{{item.price.toFixed(2)}}</td>
							<td style="width: 140px;">
								<div class="num-picker">
									<button type="button" @click="reduceCartNum(index)" class="layui-btn layui-btn-primary">-</button>
									<input style="height: 38px;" type="number" :value="item.buynumber" id="buynumber" name="buynumber" class="layui-input"
									 disabled="disabled"></input>
									<button type="button" @click="addCartNum(index)" class="layui-btn layui-btn-primary">+</button>
								</div>
							</td>
							<td style="width: 100px;"><span :style='{"fontSize":"12px"}'>￥</span>{{(item.price*item.buynumber).toFixed(2)}}</td>
							<td style="width: 100px;">
								<button @click="deleteCart(index)" type="button" class="layui-btn layui-btn-radius btn-theme">
									<i class="layui-icon">&#xe640;</i> 删除
								</button>
							</td>
						</tr>
					</tbody>
				</table>

				<div class="btn-container">
					<span style="font-size: 18px;font-weight: bold;color: rgba(209, 10, 10, 1);margin-right: 20px;">
						总价：{{totalPrice}}RMB
					</span>
					<button :style='{"padding":"0 20px","boxShadow":"0 0 0px rgba(110,22,64,.3)","margin":"0 5px","borderColor":"rgba(0,0,0,.3)","backgroundColor":"rgba(98, 53, 106, 1)","color":"rgba(255, 255, 255, 1)","borderRadius":"44px","borderWidth":"0","width":"auto","lineHeight":"34px","fontSize":"14px","borderStyle":"solid"}'  @click="buyClick" type="button" class="layui-btn layui-btn-lg btn-theme">
						<i class="layui-icon">&#xe657;</i> 点击购买
					</button>
				</div>
			</div>
		</div>

		<!-- layui -->
		<script src="../../layui/layui.js"></script>
		<!-- vue -->
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
					// 轮播图
					swiperList: [{
						img: '../../img/banner.jpg'
					}],
					baseurl: '',
					dataList: [],
                    selectDataList: []
				},
				computed: {
					totalPrice: function() {
						var total = 0;
						for (var item of this.selectDataList) {
							total += item.price * item.buynumber
						}
						return total.toFixed(2);
					}
				},
				methods: {
					jump(url) {
						jump(url)
					},
                    selectAll() {
                        var objs = document.getElementsByName('good');
                        var i;
                        if(document.getElementById("checkAll").checked) {
                            for(i = 0; i < objs.length; i++) {
                                if(objs[i].type == "checkbox") {
                                    objs[i].checked = true;
                                }
                            }
                            this.selectDataList = this.dataList;
                        } else {
                            for(i = 0; i < objs.length; i++) {
                                if(objs[i].type == "checkbox") {
                                    objs[i].checked = false;
                                }
                            }
                            this.selectDataList = [];
                        }
                    },
                    selectOne() {
                        var objs = document.getElementsByName('good');
                        var nDataList = []
                        var i;
                        for(i = 0; i < objs.length; i++) {
                            if(objs[i].type == "checkbox") {
                                if(objs[i].checked) {
                                    nDataList.push(this.dataList[i])
                                }
                            }
                        }
                        this.selectDataList = nDataList;
                        if(this.selectDataList.length!=this.dataList.length) {
                            document.getElementById("checkAll").checked = false;
                        } else {
                            document.getElementById("checkAll").checked = true;
                        }
                    },
					// 添加数量
					addCartNum(index) {
						// 查询对应的商品的详情信息，判断是否有商品限次，库存的判断
						var item = this.dataList[index];
						layui.http.request(`${item.tablename}/info/${item.goodid}`, 'get', {}, function(res) {
							// 单次购买限制
							if (res.data.onelimittimes && res.data.onelimittimes > 0 && res.data.onelimittimes <= item.buynumber) {
								layui.layer.msg(`每人单次只能购买${res.data.onelimittimes}件`, {
									time: 2000,
									icon: 5
								});
								return
							}
							// 库存限制
							if (res.data.alllimittimes && res.data.alllimittimes > 0 && res.data.alllimittimes <= item.buynumber) {
								layui.layer.msg(`库存不足`, {
									time: 2000,
									icon: 5
								});
								return
							}
							item.buynumber = parseInt(item.buynumber) + 1;
							layui.http.requestJson(`cart/update`, 'post', item, function(res) {});
						});
					},
					// 减少数量
					reduceCartNum(index) {
						var item = this.dataList[index];
						if (item.buynumber > 1) {
							item.buynumber = item.buynumber - 1;
							layui.http.requestJson(`cart/update`, 'post', item, function(res) {});
						}
					},
					// 删除
					deleteCart(index) {
						var item = this.dataList[index];
						layui.http.requestJson(`cart/delete`, 'post', [item.id], function(res) {
							window.location.reload();
						});
					},
					// 购买商品	
					buyClick() {
                        if(this.selectDataList.length==0) {
                            layui.layer.msg(`请选择商品`, {
                                time: 2000,
                                icon: 5
                            });
                            return
                        }
						localStorage.setItem('orderGoods', JSON.stringify(this.selectDataList));
						window.location.href = '../shop-order/confirm.jsp'
					}
				}
			})

			layui.use(['layer', 'element', 'carousel', 'laypage', 'http', 'jquery'], function() {
				var layer = layui.layer;
				var element = layui.element;
				var carousel = layui.carousel;
				var laypage = layui.laypage;
				var http = layui.http;
				var jquery = layui.jquery;
				vue.baseurl = http.baseurl;

				var limit = 10;

				// 获取轮播图 数据
				http.request('config/list', 'get', {
					page: 1,
					limit: 5
				}, function(res) {
					if (res.data.list.length > 0) {
						var swiperItemHtml = '';
						for (let item of res.data.list) {
							if (item.name.indexOf('picture') >= 0 && item.value && item.value != "" && item.value != null) {
								swiperItemHtml +=
									'<div>' +
									'<img class="swiper-item" style="width: 100%;height: 100%;object-fit:cover;" src="' + http.baseurl+item.value + '">' +
									'</div>';
							}
						}
						jquery('#swiper-item').html(swiperItemHtml);
						// 轮播图
						vue.$nextTick(() => {
						  carousel.render({
						  	elem: '#swiper',
							width: '100%',
						  	height: '250px',
						  	arrow: 'hover',
						  	anim: 'default',
						  	autoplay: 'true',
						  	interval: '3000',
						  	indicator: 'none'
						  });
						
						})
					}
				});

				// 获取列表数据
				http.request('cart/list', 'get', {
					page: 1,
					limit: limit,
					userid: localStorage.getItem('userid')
				}, function(res) {
					vue.dataList = res.data.list
                    vue.selectDataList = res.data.list
					// 分页
					laypage.render({
						elem: 'pager',
						count: res.data.total,
						limit: limit,
						jump: function(obj, first) {
							//首次不执行
							if (!first) {
								http.request('news/list', 'get', {
									page: obj.curr,
									limit: obj.limit,
									userid: localStorage.getItem('userid')
								}, function(res) {
									vue.dataList = res.data.list
								})
							}
						}
					});
				})

			});
		</script>
	</body>
</html>
