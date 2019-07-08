<%@page import="com.oracle.shop.model.javabean.Goods"%>
<%@page import="java.util.Map"%>
<%@page import="com.oracle.shop.model.javabean.Shopcart"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html>
<html lang="en">
<head>
<base href="<%=basePath%>">
	<meta charset="UTF-8">
	<title>购物车-澳猫团</title>
	<link rel="shortcut icon" href="favicon.ico">
	<link rel="stylesheet" href="css/reset.css">
	<link rel="stylesheet" href="css/base.css">
	<link rel="stylesheet" href="css/Cart.css">
    <script >
    $(function() {
	// 购物车的复选框全选
	$('.Allcheck').click(function(event) {
		if ($(this).hasClass('checked')) {
			$(this).removeClass('checked');
			$('.indent .checkbox').removeClass('checked');
			setTotal(); 
		}else{
			$(this).addClass('checked');
			$('.indent .checkbox').addClass('checked');
			setTotal(); 
		}
	});
	$('.lincheck').click(function(event) {
			if ($(this).hasClass('checked')) {
				$(this).removeClass('checked');
				$('.Allcheck').removeClass('checked');
				setTotal(); 
			} else{
				$(this).addClass('checked');
				var flag = 1;
				$(".lincheck").each(function(){
        			if(!$(this).hasClass("checked")){
              		flag = 0;
        			}
				});
				if(flag == 0){
    				$(".Allcheck").removeClass("checked");
				}else{
      				$(".Allcheck").addClass("checked");

				}
				setTotal(); 
			};
	});
	// 删除
	$('.IAbdw .delet').click(function(event) {
		$(this).parentsUntil('.IAbdArea').remove();
	});
	// 购物车金额结算
	$('.IAul .reduce').click(function(event) {
		var n=parseFloat($(this).siblings('input').val());
		n--;
		if (n<0) {
			n=0;
		}
		$(this).siblings('input').val(n);
		var onePreice=parseFloat($(this).parent('.num').siblings('.price').find('u').html());
		var OlAll=n*onePreice;
		$(this).parent('li').siblings('.Lastprice').children('u').html(OlAll);
		console.log(OlAll);
		setTotal(); 
	});
	$('.IAul .add').click(function(event) {
		var n=parseFloat($(this).siblings('input').val());
		n++;
		$(this).siblings('input').val(n);
		var onePreice=parseFloat($(this).parent('.num').siblings('.price').find('u').html());
		var OlAll=n*onePreice;
		$(this).parent('li').siblings('.Lastprice').children('u').html(OlAll);
		setTotal(); 
	});
	function setTotal(){
		var s=0;
		var nu=0;
		$(".IAbdArea .IAbdw").each(function(){ 
			if ($(this).find('.lincheck').hasClass('checked')) {
				s+=parseInt($(this).find('.Lastprice u').html());
				nu+=parseInt($(this).find('.num input').val());
			} else{
				s=s;
				nu=nu;
			};
		}); 
		$("#allpri").html(s); 
		$('#allnum').html(nu);
		} 
		setTotal(); 
});</script>
</head>
<body>
<!-- 顶部 -->
	<header>
		<div class="head w1190">
			<div class="headLeft">
				<div class="loginuser">
					<a href="#">
						<span>您好，1536983711@qq.com </span>
						<span>|</span>
					</a>
				</div>
				<div class="loginout">
					<a href="#">退出</a>
					<span>|</span>
					<a href="#">返回首页</a>
				</div>
				<div class="phone loginphone">
					<a href="#">
						<em></em>
						<span>手机逛澳猫</span>
					</a>
				</div>
			</div>
			<div class="headRight">
			<ul>
				<li><a class="everday" href="#">每日签到</a></li><span>|</span>
				<li><a href="#">我的订单</a></li><span>|</span>
				<li class="erWrap">
					<strong></strong>
					<a href="#">个人中心</a>
					<em></em>
					<p class="headEr">
						<a href="#">我的优惠券</a>
						<a href="#">账户安全</a>
						<a class="last" href="#">售后管理</a>
					</p>
				</li>
				<span>|</span>
				<li class="erWrap">
					<a href="#">客户服务</a>
					<em></em>
					<p class="headEr">
						<a href="#">联系客服</a>
						<a href="#">购物指南</a>
						<a href="#">帮助中心</a>
						<a href="#">下单与配送</a>
						<a href="#">售后服务</a>
						<a href="#">商家服务</a>
						<a class="last" href="#">帮助中心</a>
					</p>
				</li>
				<span>|</span>
				<li class="erWrap">
					<a href="#">收藏夹</a>
					<em></em>
					<p class="headEr different">
						<a href="#">收藏的宝贝</a>
						<a class="last" href="#">收藏的品牌</a>
					</p>
				</li>
				<span>|</span>
				<li class="erWrap">
					<a href="#">帮助中心</a>
					<em></em>
					<p class="headEr">
						<a href="#">海外正品</a>
						<a href="#">服务保障</a>
						<a href="#">关税&清关</a>
						<a class="last" href="#">身份证报关</a>
					</p>
				</li>
				<span>|</span>
				<li class="er_warp">
						<a href="#">网站导航</a>
						<em></em>
						<div class="headEr clearfix">
							<div class="er_area">
								<h5>营养保健</h5>
								<a target="_blank" href="http://www.aumalls.com/Store/Search/?q=维生素&crossStore=true">维生素</a>
								<a target="_blank" href="http://www.aumalls.com/Store/Search/?q=矿物质&crossStore=true">矿物质</a>
								<a target="_blank" href="http://www.aumalls.com/Store/Search/?q=鱼油&crossStore=true">鱼油</a>
								<a href="#">降糖</a>
								<a target="_blank" href="http://www.aumalls.com/Store/Search/?q=维生素&crossStore=true">维生素</a>
								<a target="_blank" href="http://www.aumalls.com/Store/Search/?q=矿物质&crossStore=true">矿物质</a>
								<a target="_blank" href="http://www.aumalls.com/Store/Search/?q=鱼油&crossStore=true">鱼油</a>
								<a target="_blank" href="http://www.aumalls.com/Store/Search/?q=蜂胶&crossStore=true">蜂胶</a>
								<a href="#">蜂蜜</a>
								<a target="_blank" href="http://www.aumalls.com/Store/Search/?q=前列腺&crossStore=true">前列腺</a>
								<a target="_blank" href="http://www.aumalls.com/Store/Search/?q=强精&crossStore=true">强精</a>
								<a target="_blank" class="last" href="http://www.aumalls.com/Store/Search/?q=补肾&crossStore=true">补肾</a>
								<a target="_blank" href="http://www.aumalls.com/Store/Search/?q=护肝&crossStore=true">护肝</a>
								<a target="_blank" href="http://www.aumalls.com/Store/Search/?q=护眼&crossStore=true">护眼</a>
								<a target="_blank" class="last" href="http://www.aumalls.com/Store/Search/?q=职场&crossStore=true">其他</a>
								<a target="_blank" href="http://www.aumalls.com/Store/Search/?q=维骨力&crossStore=true">维骨力</a>
								<a target="_blank" href="http://www.aumalls.com/Store/Search/?q=高钙奶粉&crossStore=true">高钙奶粉</a>
								<a target="_blank" class="last" href="http://www.aumalls.com/Store/Search/?q=养心&crossStore=true">养心</a>
							</div>
							<div class="er_area">
								<h5>母婴特卖</h5>
								<a href="#">奶粉</a>
								<a target="_blank" href="http://www.aumalls.com/Store/Search/?q=孕前备孕&crossStore=true">孕前备孕</a>
								<a href="#">辅食</a>
								<a href="#">驱蚊</a>
								<a target="_blank" href="http://www.aumalls.com/Store/Search/?q=孕期营养&crossStore=true">孕期营养</a>
								<a target="_blank" href="http://www.aumalls.com/Store/Search/?q=孕前备孕&crossStore=true">孕前备孕</a>
								<a target="_blank" class="last" href="http://www.aumalls.com/Store/Search/?q=哺乳期&crossStore=true">哺乳期</a>
								<a target="_blank" href="http://www.aumalls.com/Store/Search/?q=营养品&crossStore=true">营养品</a>
								<a target="_blank" href="http://www.aumalls.com/Store/Search/?q=抗感冒/止咳&crossStore=true">抗感冒/止咳</a>
								<a target="_blank" href="http://www.aumalls.com/Store/Search/?q=辅食代餐&crossStore=true">辅食代餐</a>
								<a target="_blank" class="last" href="http://www.aumalls.com/Store/Search/?q=零食&crossStore=true">零食</a>
								<a target="_blank" href="http://www.aumalls.com/Store/Search/?q=奶粉1段&crossStore=true">1段 0-6个月</a>
								<a target="_blank" href="http://www.aumalls.com/Store/Search/?q=奶粉2段&crossStore=true">2段 6-12个月</a>
								<a target="_blank" href="http://www.aumalls.com/Store/Search/?q=奶粉3段&crossStore=true">3段 1-3岁</a>
								<a target="_blank" class="last" href="http://www.aumalls.com/Store/Search/?q=奶粉4段&crossStore=true">4段 3-6岁</a>
								<a target="_blank" href="#">洗漱</a>
								<a target="_blank" href="http://www.aumalls.com/Store/Search/?q=奶粉2段&crossStore=true">2段 6-12个月</a>
								<a target="_blank" href="#">护肤</a>
								<a target="_blank" class="last" href="#">驱蚊</a>
							</div>
							<div class="er_area">
								<h5>魅力女性</h5>
								<a target="_blank" class="last" href="http://www.aumalls.com/Store/Search/?q=补气养血&crossStore=true">补气养血</a>
								<a target="_blank" href="http://www.aumalls.com/Store/Search/?q=排毒养颜&crossStore=true">排毒养颜</a>
								<a href="#">洗液</a>
								<a target="_blank" href="http://www.aumalls.com/Store/Search/?q=排毒养颜&crossStore=true">排毒养颜</a>
								<a target="_blank" href="http://www.aumalls.com/Store/Search/?q=完美身材&crossStore=true">完美身材</a>
								<a target="_blank" href="http://www.aumalls.com/Store/Search/?q=胶原蛋白&crossStore=true">胶原蛋白</a>
								<a target="_blank" class="last" href="http://www.aumalls.com/Store/Search/?q=补气养血&crossStore=true">补气养血</a>
								<a target="_blank" href="#">卫生巾</a>
								<a target="_blank" class="last" href="#">洗液</a>
							</div>
							<div class="er_area">
								<h5>美妆个护</h5>
								<a href="#">面部</a>
								<a href="#">防嗮</a>
								<a href="#">祛斑祛痘</a>
								<a target="_blank" href="http://www.aumalls.com/Store/Search/?q=面部洗护&crossStore=true">面部洗护</a>
								<a target="_blank" href="http://www.aumalls.com/Store/Search/?q=眼部护理&crossStore=true">眼部护理</a>
								<a target="_blank" href="http://www.aumalls.com/Store/Search/?q=唇部护理&crossStore=true">唇部护理</a>
								<a target="_blank" class="last" href="#">祛斑祛痘</a>
								<a target="_blank" href="#">手足洗护</a>
								<a target="_blank" class="cAEE" href="http://www.aumalls.com/Store/Search/?q=眼部护理/&crossStore=true">眼部护理</a>
								<a target="_blank" class="last" href="http://www.aumalls.com/Store/Search/?q=防晒修复&crossStore=true">防晒修复</a>
							</div>
							<div class="er_area">
								<h5>个人洗护</h5>
								<a href="#">沐浴</a>
								<a href="#">洗发</a>
								<a href="#">消毒液</a>
								<a href="#">洗洁精</a>
								<a target="_blank" href="http://www.aumalls.com/Store/Search/?q=消毒液&crossStore=true">消毒液</a>
								<a target="_blank" class="last" href="http://www.aumalls.com/Store/Search/?q=洗洁精&crossStore=true">洗洁精</a>
							</div>
						</div>
					</li>
			</ul>
		</div>
		</div>
	</header>
	<!-- 搜索和logo -->
<section class="boxS">
	<div class="logoAndSearch w1190">
		<!-- logo -->
		<div class="logo">
			<a href="#">澳猫网</a>
		</div>
		<div class="LAStxt">
			购物车
		</div>
		<!-- 流程 -->
		<div class="flow">
			<ul>
				<li class="finish">1</li>
				<em class="finish"></em>
				<li>2</li>
				<em></em>
				<li>3</li>
				<em></em>
				<li>4</li>
			</ul>
			<ol>
				<li class="finish">我的购物车</li>
				<li>提交订单</li>
				<li>选择支付方式</li>
				<li class="last">支付成功</li>
			</ol>
		</div>
	</div>
</section>
<!-- 订单部分 -->
<div class="indent boxS" >
	<div class="indentAea w1190" style="height: 900px">
	<!-- 全选标题部分 -->
		<div class="IAhead">
			<span class="Allcheck checkbox"></span>
			<span>全选</span>
			<span class="Information">商品信息</span>
			<ul class="IAul">
				<li>关税</li>
				<li>单价（元）</li>
				<li>数量</li>
				<li>金额（元）</li>
				<li class="last">操作</li>
			</ul>
		</div> 
		<form method="post" action="order/add">
		<div class="IAbd">
			<h4>
				<span class="Allcheck checkbox"></span>
<!-- 				<span class="tax">保税仓发货</span> -->
				<span>澳洲直邮</span>
			</h4>
			<ul class="IAbdArea">
				<% Map<Goods, Integer> sc=(Map<Goods, Integer>)request.getAttribute("sc");
					for(Goods c:sc.keySet()){
				%>
				<li class="IAbdw">
					<span class="lincheck checkbox"></span>
					<input type="checkbox"  name="pid" value="<%=c.getGoodsid()%>"/>
					<img src="<%=c.getGoodspic() %>" alt="">
					<p>
						<a class="pro" href="#"><%=c.getGoodsname() %></a>
<!-- 						<a class="use" href="#"> -->
<!-- 							适用税率：10% -->
<!-- 							<s></s> -->
<!-- 							<u> -->
<!-- 								<em></em> -->
<!-- 								税费 = 不含税价格 * 件数 * 商品税率<br> -->
<!-- 								根据海关规定，本商品适用税率 : 10%,<br> -->
<!-- 								若订单总税额 ≤ 50元，海关予以免征。<br> -->
<!-- 							</u> -->
<!-- 						</a> -->
					</p>
					<ul class="IAul">
						<li class="IAtax">￥<u>11.40</u></li>
						<li class="price">
							<strong>¥ <u><%=c.getGoodsprice() %></u></strong><br>
							<s><%=c.getGoodsprice()+50 %>元</s>
						</li>
						<li class="num">
							<span class="reduce">-</span>
							<input type="text" name="count" value="<%=sc.get(c) %>">
							<span class="add">+</span>
						</li>
						<li class="Lastprice">¥ <u><%=c.getGoodsprice()*sc.get(c) %></u></li>
						<li class="last btn">
							<button>移入收藏夹</button><br>
							<button class="delet">删除</button>
						</li>
					</ul>
				</li>
				
				
				<%} %>
			</ul>
			<div class="account">
				<ul>
					<li>收货人:<input type="text" name="name" style="height: 25px;font-size: 14px;box-shadow:0px 0px 3px orange"/></li>
					<li>收货地址:<input type="text" name="address" style="height: 25px;font-size: 14px;width: 400px;box-shadow:0px 0px 3px orange"/></li>
					<li>备注:<input type="text" name="remark" style="height: 25px;font-size: 14px;width: 400px;box-shadow:0px 0px 3px orange"/></li>
				</ul>
			</div>
			<div class="IAbdfoot">
				<span class="checkbox Allcheck"></span>
				<span>全选</span>
				<span class="Information">删除选中商品</span>
				<input type="submit"  value="提交订单"/>
				<p>
					<strong>已选商品<b id="allnum"> 1 </b>件</strong>
					<strong>总价（不含运费）：<b>￥<u id="allpri">114.00</u></b></strong><br>
					<em>活动优惠 ：-￥<u>0.00</u></em>
					<em>商品应付总计 ：￥<u>114.00</u></em>
					<em>订单关税：￥<u>0</u></em>
				</p>
			</div>
		</div>                          
		</form>
	
	</div>
</div>
<!-- 猜你喜欢和热门推荐 -->
<div class="LHarea boxS">
	<!-- 猜你喜欢 -->
	<div class="Recommend cartlike w1190">
		<h3>
			<strong>猜你喜欢</strong>
			<span class="others">根据你的浏览记录推荐的商品</span>
			<div class="cup">
				<span class="right">&gt;</span>
				<span class="left no">&lt;</span>
			</div>
		</h3>
		<div class="ReContent">
			<div class="ReConW CLConW">
				<ul class="ReConWul CLConWul">
					<li class="ReConWuli CLConWuli">
						<ul>
							<li>
								<div class="Repic">
									<img src="images/cart1.jpg" alt="">
								</div>
								<div class="ReTxt">
									<a href="#">Swisse 澳洲瑞思胶原蛋白补充胶原蛋白，让你更美...</a>
									<p><strong class="c065">￥256 </strong><s>￥388</s></p>
									<p class="collect">
										<a href="#">5185人已评价</a>
										<span><em></em>收藏商品</span>
									</p>
								</div>
							</li>
							<li>
								<div class="Repic">
									<img src="images/cart2.jpg" alt="">
								</div>
								<div class="ReTxt">
									<a href="#">Swisse 澳洲瑞思胶原蛋白补充胶原蛋白，让你更美...</a>
									<p><strong class="c065">￥256 </strong><s>￥388</s></p>
									<p class="collect">
										<a href="#">5185人已评价</a>
										<span><em></em>收藏商品</span>
									</p>
								</div>
							</li>
							<li>
								<div class="Repic">
									<img src="images/cart3.jpg" alt="">
								</div>
								<div class="ReTxt">
									<a href="#">Swisse 澳洲瑞思胶原蛋白补充胶原蛋白，让你更美...</a>
									<p><strong class="c065">￥256 </strong><s>￥388</s></p>
									<p class="collect">
										<a href="#">5185人已评价</a>
										<span><em></em>收藏商品</span>
									</p>
								</div>
							</li>
							<li>
								<div class="Repic">
									<img src="images/cart4.jpg" alt="">
								</div>
								<div class="ReTxt">
									<a href="#">Swisse 澳洲瑞思胶原蛋白补充胶原蛋白，让你更美...</a>
									<p><strong class="c065">￥256 </strong><s>￥388</s></p>
									<p class="collect">
										<a href="#">5185人已评价</a>
										<span><em></em>收藏商品</span>
									</p>
								</div>
							</li>
							<li>
								<div class="Repic">
									<img src="images/cart5.jpg" alt="">
								</div>
								<div class="ReTxt">
									<a href="#">Swisse 澳洲瑞思胶原蛋白补充胶原蛋白，让你更美...</a>
									<p><strong class="c065">￥256 </strong><s>￥388</s></p>
									<p class="collect">
										<a href="#">5185人已评价</a>
										<span><em></em>收藏商品</span>
									</p>
								</div>
							</li>
						</ul>
					</li>
					<li class="ReConWuli CLConWuli">
						<ul>
							<li>
								<div class="Repic">
									<img src="images/cart1.jpg" alt="">
								</div>
								<div class="ReTxt">
									<a href="#">Swisse 澳洲瑞思胶原蛋白补充胶原蛋白，让你更美...</a>
									<p><strong class="c065">￥256 </strong><s>￥388</s></p>
									<p class="collect">
										<a href="#">5185人已评价</a>
										<span><em></em>收藏商品</span>
									</p>
								</div>
							</li>
							<li>
								<div class="Repic">
									<img src="images/cart2.jpg" alt="">
								</div>
								<div class="ReTxt">
									<a href="#">Swisse 澳洲瑞思胶原蛋白补充胶原蛋白，让你更美...</a>
									<p><strong class="c065">￥256 </strong><s>￥388</s></p>
									<p class="collect">
										<a href="#">5185人已评价</a>
										<span><em></em>收藏商品</span>
									</p>
								</div>
							</li>
							<li>
								<div class="Repic">
									<img src="images/cart3.jpg" alt="">
								</div>
								<div class="ReTxt">
									<a href="#">Swisse 澳洲瑞思胶原蛋白补充胶原蛋白，让你更美...</a>
									<p><strong class="c065">￥256 </strong><s>￥388</s></p>
									<p class="collect">
										<a href="#">5185人已评价</a>
										<span><em></em>收藏商品</span>
									</p>
								</div>
							</li>
							<li>
								<div class="Repic">
									<img src="images/cart4.jpg" alt="">
								</div>
								<div class="ReTxt">
									<a href="#">Swisse 澳洲瑞思胶原蛋白补充胶原蛋白，让你更美...</a>
									<p><strong class="c065">￥256 </strong><s>￥388</s></p>
									<p class="collect">
										<a href="#">5185人已评价</a>
										<span><em></em>收藏商品</span>
									</p>
								</div>
							</li>
							<li>
								<div class="Repic">
									<img src="images/cart5.jpg" alt="">
								</div>
								<div class="ReTxt">
									<a href="#">Swisse 澳洲瑞思胶原蛋白补充胶原蛋白，让你更美...</a>
									<p><strong class="c065">￥256 </strong><s>￥388</s></p>
									<p class="collect">
										<a href="#">5185人已评价</a>
										<span><em></em>收藏商品</span>
									</p>
								</div>
							</li>
						</ul>
					</li>
					<li class="ReConWuli CLConWuli">
						<ul>
							<li>
								<div class="Repic">
									<img src="images/cart1.jpg" alt="">
								</div>
								<div class="ReTxt">
									<a href="#">Swisse 澳洲瑞思胶原蛋白补充胶原蛋白，让你更美...</a>
									<p><strong class="c065">￥256 </strong><s>￥388</s></p>
									<p class="collect">
										<a href="#">5185人已评价</a>
										<span><em></em>收藏商品</span>
									</p>
								</div>
							</li>
							<li>
								<div class="Repic">
									<img src="images/cart2.jpg" alt="">
								</div>
								<div class="ReTxt">
									<a href="#">Swisse 澳洲瑞思胶原蛋白补充胶原蛋白，让你更美...</a>
									<p><strong class="c065">￥256 </strong><s>￥388</s></p>
									<p class="collect">
										<a href="#">5185人已评价</a>
										<span><em></em>收藏商品</span>
									</p>
								</div>
							</li>
							<li>
								<div class="Repic">
									<img src="images/cart3.jpg" alt="">
								</div>
								<div class="ReTxt">
									<a href="#">Swisse 澳洲瑞思胶原蛋白补充胶原蛋白，让你更美...</a>
									<p><strong class="c065">￥256 </strong><s>￥388</s></p>
									<p class="collect">
										<a href="#">5185人已评价</a>
										<span><em></em>收藏商品</span>
									</p>
								</div>
							</li>
							<li>
								<div class="Repic">
									<img src="images/cart4.jpg" alt="">
								</div>
								<div class="ReTxt">
									<a href="#">Swisse 澳洲瑞思胶原蛋白补充胶原蛋白，让你更美...</a>
									<p><strong class="c065">￥256 </strong><s>￥388</s></p>
									<p class="collect">
										<a href="#">5185人已评价</a>
										<span><em></em>收藏商品</span>
									</p>
								</div>
							</li>
							<li>
								<div class="Repic">
									<img src="images/cart5.jpg" alt="">
								</div>
								<div class="ReTxt">
									<a href="#">Swisse 澳洲瑞思胶原蛋白补充胶原蛋白，让你更美...</a>
									<p><strong class="c065">￥256 </strong><s>￥388</s></p>
									<p class="collect">
										<a href="#">5185人已评价</a>
										<span><em></em>收藏商品</span>
									</p>
								</div>
							</li>
						</ul>
					</li>
				</ul>
			</div>
		</div>
	</div>
	<!-- 热门推荐 -->
	<div class="Recommend hotRecommend w1190">
		<h3>
			<strong>大家都在买</strong>
			<span class="others">全网最热门的商品推荐</span>
			<div class="cup">
				<span class="right">&gt;</span>
				<span class="left no">&lt;</span>
			</div>
		</h3>
		<div class="ReContent">
			<div class="ReConW HRConW">
				<ul class="ReConWul HRConWul">
					<li class="ReConWuli HRConWuli">
						<ul>
							<li>
								<div class="Repic">
									<img src="images/cart6.jpg" alt="">
								</div>
								<div class="ReTxt">
									<a href="#">Swisse 澳洲瑞思胶原蛋白补充胶原蛋白，让你更美...</a>
									<p><strong class="c065">￥256 </strong><s>￥388</s></p>
									<p class="collect">
										<a href="#">5185人已评价</a>
										<span><em></em>加入心愿单</span>
									</p>
								</div>
							</li>
							<li>
								<div class="Repic">
									<img src="images/cart7.jpg" alt="">
								</div>
								<div class="ReTxt">
									<a href="#">Swisse 澳洲瑞思胶原蛋白补充胶原蛋白，让你更美...</a>
									<p><strong class="c065">￥256 </strong><s>￥388</s></p>
									<p class="collect">
										<a href="#">5185人已评价</a>
										<span><em></em>加入心愿单</span>
									</p>
								</div>
							</li>
							<li>
								<div class="Repic">
									<img src="images/cart8.jpg" alt="">
								</div>
								<div class="ReTxt">
									<a href="#">Swisse 澳洲瑞思胶原蛋白补充胶原蛋白，让你更美...</a>
									<p><strong class="c065">￥256 </strong><s>￥388</s></p>
									<p class="collect">
										<a href="#">5185人已评价</a>
										<span><em></em>加入心愿单</span>
									</p>
								</div>
							</li>
							<li>
								<div class="Repic">
									<img src="images/cart9.jpg" alt="">
								</div>
								<div class="ReTxt">
									<a href="#">Swisse 澳洲瑞思胶原蛋白补充胶原蛋白，让你更美...</a>
									<p><strong class="c065">￥256 </strong><s>￥388</s></p>
									<p class="collect">
										<a href="#">5185人已评价</a>
										<span><em></em>加入心愿单</span>
									</p>
								</div>
							</li>
							<li>
								<div class="Repic">
									<img src="images/cart10.jpg" alt="">
								</div>
								<div class="ReTxt">
									<a href="#">Swisse 澳洲瑞思胶原蛋白补充胶原蛋白，让你更美...</a>
									<p><strong class="c065">￥256 </strong><s>￥388</s></p>
									<p class="collect">
										<a href="#">5185人已评价</a>
										<span><em></em>加入心愿单</span>
									</p>
								</div>
							</li>
						</ul>
					</li>
					<li class="ReConWuli HRConWuli">
						<ul>
							<li>
								<div class="Repic">
									<img src="images/cart6.jpg" alt="">
								</div>
								<div class="ReTxt">
									<a href="#">Swisse 澳洲瑞思胶原蛋白补充胶原蛋白，让你更美...</a>
									<p><strong class="c065">￥256 </strong><s>￥388</s></p>
									<p class="collect">
										<a href="#">5185人已评价</a>
										<span><em></em>加入心愿单</span>
									</p>
								</div>
							</li>
							<li>
								<div class="Repic">
									<img src="images/cart7.jpg" alt="">
								</div>
								<div class="ReTxt">
									<a href="#">Swisse 澳洲瑞思胶原蛋白补充胶原蛋白，让你更美...</a>
									<p><strong class="c065">￥256 </strong><s>￥388</s></p>
									<p class="collect">
										<a href="#">5185人已评价</a>
										<span><em></em>加入心愿单</span>
									</p>
								</div>
							</li>
							<li>
								<div class="Repic">
									<img src="images/cart8.jpg" alt="">
								</div>
								<div class="ReTxt">
									<a href="#">Swisse 澳洲瑞思胶原蛋白补充胶原蛋白，让你更美...</a>
									<p><strong class="c065">￥256 </strong><s>￥388</s></p>
									<p class="collect">
										<a href="#">5185人已评价</a>
										<span><em></em>加入心愿单</span>
									</p>
								</div>
							</li>
							<li>
								<div class="Repic">
									<img src="images/cart9.jpg" alt="">
								</div>
								<div class="ReTxt">
									<a href="#">Swisse 澳洲瑞思胶原蛋白补充胶原蛋白，让你更美...</a>
									<p><strong class="c065">￥256 </strong><s>￥388</s></p>
									<p class="collect">
										<a href="#">5185人已评价</a>
										<span><em></em>加入心愿单</span>
									</p>
								</div>
							</li>
							<li>
								<div class="Repic">
									<img src="images/cart10.jpg" alt="">
								</div>
								<div class="ReTxt">
									<a href="#">Swisse 澳洲瑞思胶原蛋白补充胶原蛋白，让你更美...</a>
									<p><strong class="c065">￥256 </strong><s>￥388</s></p>
									<p class="collect">
										<a href="#">5185人已评价</a>
										<span><em></em>加入心愿单</span>
									</p>
								</div>
							</li>
						</ul>
					</li>
					<li class="ReConWuli HRConWuli">
						<ul>
							<li>
								<div class="Repic">
									<img src="images/cart6.jpg" alt="">
								</div>
								<div class="ReTxt">
									<a href="#">Swisse 澳洲瑞思胶原蛋白补充胶原蛋白，让你更美...</a>
									<p><strong class="c065">￥256 </strong><s>￥388</s></p>
									<p class="collect">
										<a href="#">5185人已评价</a>
										<span><em></em>加入心愿单</span>
									</p>
								</div>
							</li>
							<li>
								<div class="Repic">
									<img src="images/cart7.jpg" alt="">
								</div>
								<div class="ReTxt">
									<a href="#">Swisse 澳洲瑞思胶原蛋白补充胶原蛋白，让你更美...</a>
									<p><strong class="c065">￥256 </strong><s>￥388</s></p>
									<p class="collect">
										<a href="#">5185人已评价</a>
										<span><em></em>加入心愿单</span>
									</p>
								</div>
							</li>
							<li>
								<div class="Repic">
									<img src="images/cart8.jpg" alt="">
								</div>
								<div class="ReTxt">
									<a href="#">Swisse 澳洲瑞思胶原蛋白补充胶原蛋白，让你更美...</a>
									<p><strong class="c065">￥256 </strong><s>￥388</s></p>
									<p class="collect">
										<a href="#">5185人已评价</a>
										<span><em></em>加入心愿单</span>
									</p>
								</div>
							</li>
							<li>
								<div class="Repic">
									<img src="images/cart9.jpg" alt="">
								</div>
								<div class="ReTxt">
									<a href="#">Swisse 澳洲瑞思胶原蛋白补充胶原蛋白，让你更美...</a>
									<p><strong class="c065">￥256 </strong><s>￥388</s></p>
									<p class="collect">
										<a href="#">5185人已评价</a>
										<span><em></em>加入心愿单</span>
									</p>
								</div>
							</li>
							<li>
								<div class="Repic">
									<img src="images/cart10.jpg" alt="">
								</div>
								<div class="ReTxt">
									<a href="#">Swisse 澳洲瑞思胶原蛋白补充胶原蛋白，让你更美...</a>
									<p><strong class="c065">￥256 </strong><s>￥388</s></p>
									<p class="collect">
										<a href="#">5185人已评价</a>
										<span><em></em>加入心愿单</span>
									</p>
								</div>
							</li>
						</ul>
					</li>
				</ul>
			</div>
		</div>
	</div>
</div>
<!-- 底部 -->
<div class="foot">
	<!-- 保证 -->
	<div class="BZ center_1200 textWarp">
		<ul class="footer_bg clearfix">
			<a target="_blank" class="first" href="http://www.aumalls.com/oversea">
				<div class="icon"></div>
				<p>100% 正品保障</p>
			</a>
			<a target="_blank" class="two" href="http://www.aumalls.com/oversea">
				<div class="icon"></div>
				<p>100% 海外进口</p>
			</a>
			<a target="_blank" class="three" href="http://www.aumalls.com/Logistics">
				<div class="icon"></div>
				<p>100% 极速发货</p>
			</a>
			<a target="_blank" class="four" href="http://www.aumalls.com/afterRules">
				<div class="icon"></div>
				<p>100% 无忧售后</p>
			</a>
		</ul>
	</div>
	<!-- 信息 -->
	<div class="information center_1200 textWarp">
		<div class="IRight">
			<span class="Iphone">
				<em></em>
				<strong>澳猫客服热线：</strong>
			</span>
			<span class="num c065">400-115-8086</span>
			<span class="time c065">工作时间：09:00-24:00(周一至周日)</span>
			<span class="email">澳猫邮箱：customer@aumalls.net</span>
		</div>
		<div class="ICenter">
			<div class="ICenW">
				<dl>
					<dt><a target="_blank" href="#">购物指南</a></dt>
					<dd><a target="_blank" href="#">· 购物流程</a></dd>
					<dd><a target="_blank" href="#">· 购物须知</a></dd>
					<dd><a target="_blank" href="#">· 免费注册</a></dd>
					<dd><a target="_blank" href="#">· 品牌大全</a></dd>
					<dd><a target="_blank" href="#">· 常见问题</a></dd>
				</dl>
				<dl>
					<dt><a target="_blank" href="#">帮助中心</a></dt>
					<dd><a target="_blank" href="#">· 帮助中心</a></dd>
					<dd><a target="_blank" href="#">· 海外正品</a></dd>
					<dd><a target="_blank" href="#">· 服务保障</a></dd>
					<dd><a target="_blank" href="#">· 关税&清关</a></dd>
					<dd><a target="_blank" href="#">· 身份证报关</a></dd>
				</dl>
				<dl>
					<dt><a target="_blank" href="">下单与配送</a></dt>
					<dd><a target="_blank" href="#">· 关于价格</a></dd>
					<dd><a target="_blank" href="#">· 关于支付</a></dd>
					<dd><a target="_blank" href="#">· 关于物流</a></dd>
					<dd><a target="_blank" href="#">· 关于优惠券</a></dd>
					<dd><a target="_blank" href="#">· 物流跟踪</a></dd>
				</dl>
				<dl>
					<dt><a target="_blank" href="#">售后服务</a></dt>
					<dd><a target="_blank" href="#">· 售后规则</a></dd>
					<dd><a target="_blank" href="#">· 退货政策</a></dd>
					<dd><a target="_blank" href="#">· 退货流程</a></dd>
					<dd><a target="_blank" href="#">· 退款说明</a></dd>
					<dd><a target="_blank" href="#">· 联系客服</a></dd>
				</dl>
				<dl class="MRn">
					<dt><a target="_blank" href="#">商家服务</a></dt>
					<dd><a target="_blank" href="#">· 平台规则</a></dd>
					<dd><a target="_blank" href="#">· 国际招商</a></dd>
					<dd><a target="_blank" href="#">· 商家入驻</a></dd>
					<dd><a target="_blank" href="#">· 商家中心</a></dd>
					<dd><a target="_blank" href="#">· 联系我们</a></dd>
				</dl>
			</div>
		</div>
		<div class="Ileft">
			<div class="er">
				<div class="erPic">
					<img src="images/WXe.png" alt="二维码">
				</div>
				<span>扫码下载澳猫APP</span>
			</div>
			<div class="fen">
				<a class="weixin" href="#">
					<em></em>
					<span>aumalls</span>
					<div class="WXer">
						<p>新鲜好玩的<br>
						澳洲货推荐<br>
						<strong>扫码加微信</strong>
						</p>
						<div class="wxe">
							<img src="images/WXe.png" alt="二维码">
						</div>
					</div>
				</a>
				<a class="sina" href="#">
					<em></em>
					<span>澳猫新浪微博</span>
				</a>
			</div>
		</div>
	</div>
</div>
<footer>
	<div class="up">
		<div class="txt textWarp  w1190">       
			<!-- <ul>
				<li><a target="_blank" href="#">关于澳猫海淘</a></li>
				<li><a target="_blank" href="#">商家入驻</a></li>
				<li><a target="_blank" href="#">网站合作</a></li>
				<li><a target="_blank" href="#">友情链接</a></li>
				<li><a target="_blank" href="#">澳猫公益</a></li>
				<li><a target="_blank" href="#">法律声明</a></li>
				<li><a target="_blank" href="#">诚聘英才</a></li>
				<li><a target="_blank" href="#">联系我们</a></li>
				<li><a target="_blank" href="#">网站地图</a></li>
			</ul>
			<ul class="twoArea">
				<li><a target="_blank" href="#">澳猫云商</a></li>
				<li><a target="_blank" href="#">澳洲澳猫</a></li><span>|</span>
				<li><a target="_blank" href="#">康多多</a></li><span>|</span>
				<li><a target="_blank" href="#">PPTV</a></li><span>|</span>
				<li><a target="_blank" href="#">红孩子</a></li><span>|</span>
				<li><a target="_blank" href="#">缤购</a></li><span>|</span>
				<li><a target="_blank" href="#">乐购仕</a></li><span>|</span>
				<li><a target="_blank" href="#">澳猫物流</a></li><span>|</span>
				<li><a target="_blank" href="#">澳猫澳大利亚</a></li><span>|</span>
				<li><a target="_blank" href="#">澳猫新西兰</a></li><span>|</span>
				<li><a target="_blank" href="#">澳猫物流</a></li><span>|</span>
				<li><a target="_blank" href="#">澳猫澳大利亚</a></li><span>|</span>
				<li><a target="_blank" href="#">澳猫新西兰</a></li><span>|</span>
				<li><a target="_blank" href="#">澳猫物流</a></li><span>|</span>
				<li><a target="_blank" href="#">澳猫澳大利亚</a></li><span>|</span>
				<li><a target="_blank" href="#">澳猫新西兰</a></li>
			</ul> -->
			<p>
				澳大利亚Health more - 河南康多多贸易有限公司 - 河南澳蜜电子商务有限公司 版权所有<br>
				Copyright © 20015-2018  澳猫aumalls.com 版权所有, 豫ICP备15030837号-1
			</p>
			<div class="ALLN"></div>
		</div>
	</div>
</footer>
<script src="js/jquery-1.7.2.min.js"></script>
<script src="js/jquery.lazyload.min.js"></script>
<script src="js/cart.js"></script>
<script src="js/base.js"></script>

</body>
</html>