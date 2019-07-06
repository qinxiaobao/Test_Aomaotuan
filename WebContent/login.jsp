<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>登录页-澳猫团</title>
	<link rel="shortcut icon" href="favicon.ico">
	<link rel="stylesheet" href="css/reset.css">
	<link rel="stylesheet" href="css/base1.css">
	<link rel="stylesheet" href="css/login.css">
	<!-- 视图窗口，移动端特属的标签。 -->
    <meta name="viewport" content="width=device-width,initial-scale=1,maximum-scale=1,minimum-scale=1,user-scalable=no" />
	<link media="screen and (min-width: 992px) and (max-width:1200px)" rel="stylesheet" href="css/base1-small.css">
	<link media="screen and (min-width: 992px) and (max-width:1200px)" rel="stylesheet" href="css/login-small.css">
	<link media="screen and (min-width: 768px) and (max-width:991px)" rel="stylesheet" href="css/base1-pad.css">
	<link media="screen and (min-width: 768px) and (max-width:991px)" rel="stylesheet" href="css/login-pad.css">
</head>
<body>
	<!-- 顶部 -->
	<header>
		<!-- 搜索和logo -->
		<div class="logoAndSearch textWarp w1190 clearfix">
			<div class="logo">
				<a href="list.jsp">澳猫网</a>
			</div>
			<div class="LAStxt">
				欢迎登录
			</div>
			<div class="search">
				<div class="txt">
					<input type="text" placeholder="Swisse/澳洲">
					<em></em>
				</div>
				<a href="#" class="btn">
					搜索
				</a>
				<ul>
					<li><a target="_blank" href="#">胶原蛋白</a></li>
					<li><a target="_blank" href="#">叶绿素</a></li>
					<li><a target="_blank" href="#">睡眠片</a></li>
					<li><a target="_blank" href="#">儿童维生素</a></li>
					<li><a target="_blank" href="#">鱼肝油</a></li>
					<li><a target="_blank" href="#">保健品</a></li>
					<li><a target="_blank" href="#">美容</a></li>
					<li class="BN"><a target="_blank" href="#">运动保健</a></li>
				</ul>
			</div>
		</div>
	</header>
	<!-- 中间内容 -->
	<div class="mainArea">
		<div class="mainAreaW textWarp w1190">
			<div class="mainContent boxS">
				<div class="MCup clearfix">
					<div class="MCright W310">
						<h3 class="clearfix">
							<span>登录澳猫团</span>
							<a target="_blank" href="register.jsp">免费注册</a>
						</h3>
						<p class="userName">
							<em></em>
							<input class="W310" placeholder="请输入您的手机号/邮箱" type="text">
						</p>
						<p class="passWord">
							<em></em>
							<input class="W310" placeholder="请输入密码" type="password">
						</p>
						<p class="clearfix yzm">
							<input type="text" placeholder="验证码">
							<span class="Ypic">
								<span class="YP"></span>
								<a href="#">换一张</a>
							</span>
						</p>
						<p class="clearfix Jzmm">
							<span class="checkbox checked"></span>
							<span>记住密码</span>
							<a target="_blank" href="#">忘记密码？</a>
						</p>
						<a class="loGin W310" href="#">登录</a>
					</div>
					<div class="MCleft W115">
						<img src="images/AppEr.png" alt="二维码">
						<p>扫码下载客户端</p>
						<div class="pL">
							<span>手机可直接访问</span>
							<strong>m.aumalls.com</strong>
						</div>
					</div>
				</div>
				<div class="MCdown">
					<p>使用其他账户登录</p>
					<ul>
						<li class="clearfix">
							<em></em>
							<a href="#">QQ登录</a>
						</li>
						<li class="clearfix">
							<em></em>
							<a href="#">微博登录</a>
						</li>
						<li class="clearfix">
							<em></em>
							<a href="#">腾讯微博</a>
						</li>
						<li class="clearfix">
							<em></em>
							<a href="#">微信登录</a>
						</li>
						<li class="clearfix BN">
							<em></em>
							<a href="#">百度登录</a>
						</li>
					</ul>
				</div>
			</div>
		</div>
	</div>
	<!-- 底部 -->
	<footer>
		<div class="txt textWarp w1190">       
			<ul>
				<li><a href="#">关于澳猫海淘</a></li>
				<li><a href="#">商家入驻</a></li>
				<li><a href="#">网站合作</a></li>
				<li><a href="#">友情链接</a></li>
				<li><a href="#">澳猫公益</a></li>
				<li><a href="#">法律声明</a></li>
				<li><a href="#">诚聘英才</a></li>
				<li><a href="#">联系我们</a></li>
				<li><a href="#">网站地图</a></li>
			</ul>
			<p>
				澳大利亚Health more - 河南康多多贸易有限公司 - 河南澳蜜电子商务有限公司 版权所有<br>
				Copyright © 20015-2018  澳猫aumalls.com 版权所有, 豫ICP备15030837号-1
			</p>
			<div class="ALLN"></div>
		</div>
	</footer>
	<script src="js/jquery-1.7.2.min.js"></script>
	<script src="js/jquery.lazyload.min.js"></script>
	<script src="js/login.js"></script>
</body>
</html>