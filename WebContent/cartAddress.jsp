<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>提交订单-购物车-澳猫团</title>
	<link rel="shortcut icon" href="favicon.ico">
	<link rel="stylesheet" href="css/reset.css">
	<link rel="stylesheet" href="css/base.css">
	<link rel="stylesheet" href="css/Cart.css">
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
			提交订单
		</div>
		<!-- 流程 -->
		<div class="flow">
			<ul>
				<li class="finish">1</li>
				<em class="finished"></em>
				<li class="finish">2</li>
				<em class="finish"></em>
				<li>3</li>
				<em></em>
				<li>4</li>
			</ul>
			<ol>
				<li class="finish">我的购物车</li>
				<li class="finish">提交订单</li>
				<li>选择支付方式</li>
				<li class="last">支付成功</li>
			</ol>
		</div>
	</div>
</section>
<!-- 收货人信息 -->
<div class="Consigneew boxS w1190">
	<div class="Consignee clearfix">
		<h3 class="Contitle">
			收货人信息
		</h3>
		<ul class="address clearfix">
			<li class="checkbox checked">
				<p class="user">龙章辉</p>
				<p class="site">湖南长沙市芙蓉区朝阳街街道车站北路凯旋大厦26楼，京途教育</p>
				<p class="phonenum">18932479990</p>
			</li>
			<li class="checkbox">
				<p class="user">龙章辉</p>
				<p class="site">湖南长沙市芙蓉区朝阳街街道车站北路凯旋大厦26楼，京途教育</p>
				<p class="phonenum">18932479990</p>
			</li>
		</ul>
		<button>
			+添加收货地址
		</button>
	</div>
</div>
<!-- 商品信息 -->
<div class="Blurbw boxS w1190">
	<div class="Blur">
		<h3 class="Contitle">
			确认商品信息
		</h3>
	<div class="BlurArea">
		<h4>
			<ul class="blur clearfix">
				<li class="first">商品</li>
				<li>数量</li>
				<li>销售价</li>
				<li>重量</li>
				<li>关税</li>
				<li>小计</li>
			</ul>
		</h4>
		<div class="prouduct clearfix">
			<ul class="blur clearfix">
				<li class="first">
				<p>【全球购】澳佳宝Blackmores儿童益脑多维矿物质咀嚼片60粒营养健康澳洲直邮</p>
				</li>
				<li>1</li>
				<li>￥116.00</li>
				<li>200g</li>
				<li>￥114.0</li>
				<li>￥116.00</li>
			</ul>
		</div>
		<div class="freight Public clearfix">
			<span class="left">
				保税仓发货<b>0.00</b><em>免运费</em>
			</span>
			<span class="right">
				<em>运费</em>
				<em>￥0.00</em>
			</span>
		</div>
		<div class="Coupon Public clearfix">
			<span class="left">使用优惠券<s></s></span>
			<span class="right">
				<em>优惠金额</em>
				<em>￥0.00</em>
			</span>
		</div>
		<div class="Alladd Public clearfix">
			<span class="right">
				<em>合计</em>
				<em class="r">￥116.00</em>
			</span>
		</div>
	</div>
	<div class="blurFooterw clearfix">
		<div class="blurFooter">
			<p class="privilege clearfix">
				<span>优惠</span>
				<span>-￥0.00</span>
			</p>
			<p class="privilege clearfix">
				<span>运费</span>
				<span>￥0.00</span>
			</p>
			<p class="privilege clearfix">
				<span>关税</span>
				<span>￥0.00</span>
			</p>
			<p class="submit clearfix">
				<span>返回购物车</span>
				<span>实付总额： <em>￥116.00</em></span>  
				<a href="#">提交订单</a>  
			</p>
			<p class="protocol clearfix">
				<span class="checkbox checked"></span>
				<span>本人同意并接受《澳猫团海购服务协议》与《进口个人委托申报委托》</span>
			</p>
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
		<div class="txt  w1190">       
			<ul>
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
			<ul>
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
			</ul>
			<p>
				澳大利亚Health more - 河南康多多贸易有限公司 - 河南澳蜜电子商务有限公司 版权所有<br>
				Copyright © 20015-2018  澳猫aumalls.com 版权所有, 豫ICP备15030837号-1
			</p>
			<div class="ALLN"></div>
		</div>
	</div>
</footer>
<!-- 模态窗口 -->
<div class="mode">
	<div class="modeArea">
		<h4>新增地址</h4>
		<p class="Rpeople">
			<strong>
				<em>*</em>
				<span>收货人</span>
			</strong>
			<input class="w170" type="text" placeholder="限20个字">
		</p>
		<p class="Receiving">
			<strong>
				<em>*</em>
				<span>收货地址</span>
			</strong>
			<select class="w370">
    			<option>湖南 长沙市 芙蓉区 文艺路</option>
				<option>湖南 长沙市 芙蓉区 文艺路</option>
				<option>湖南 长沙市 芙蓉区 文艺路</option>
    		</select>
		</p>
		<p class="Detailed">
			<strong>
				<em>*</em>
				<span>详细地址</span>
			</strong>
			<input class="w370" type="text" placeholder="无需重复填写省市区，小于50个字">
		</p>
		<p class="IDcard">
			<strong>
				<span>身份证号</span>
			</strong>
			<input class="w370" type="text" placeholder="请填写收货人身份证信息">
			<em>?
				<u>
					<b>
						根据海关要求，购买跨境商品需实名认证，进行个人物品入境申报。因各保税区政策不同，郑州保税区需您提供收获人身份信息进行认证。其他报税区将通过支付平台实名信息进行入境申报，您可在支付平台进行认证（如已认证直接付款即可）。澳猫会对您的身份信息进行加密保管，绝不泄露！
					</b>
					有任何身份认证的问题请咨询我们<br>
					400-115-8086<br>
					09:00-24:00<br>
				</u>
			</em>
		</p>
		<p class="phonenum">
			<strong>
				<em>*</em>
				<span>收集</span>
			</strong>
			<input class="w170" type="text" placeholder="请输入正确的手机号">
		</p>
		<p class="Tel">
			<strong>
				<span>固定电话</span>
			</strong>
			<input class="w170" type="text">
		</p>
		<p class="default">
			<strong></strong>
			<span class="checkbox"></span>
			<span>设为默认地址</span>
		</p>
		<p class="sure">
			<strong></strong>
			<button>确定</button>
			<a href="#">取消</a>
		</p>
		<p class="close">+</p>
	</div>
</div>
<script src="js/jquery-1.7.2.min.js"></script>
<script src="js/jquery.lazyload.min.js"></script>
<script src="js/base.js"></script>
<script>
	// 提交订单
	$(function() {
		$('.protocol .checkbox').click(function(event) {
			if ($(this).hasClass('checked')) {
				$(this).removeClass('checked');
				$('.submit a').css('background', '#999');
				$('.submit a').removeAttr('href');
			}else{
				$(this).addClass('checked').siblings('li').removeClass('checked');
				$('.submit a').css('background', 'rgb(211, 32, 89)');
				$('.submit a').attr("href","#"); 
			}
		});
	});
</script>
</body>
</html>