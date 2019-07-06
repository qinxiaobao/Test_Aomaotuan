$(function() {
	// 二级导航
	$('nav .navLi').hover(function() {
		$(this).children('.NavEr').css('display', 'block');
	}, function() {
		$(this).children('.NavEr').css('display', 'none');
	});
	// 顶部新手APP
	$('.logoAndSearch .app').hover(function() {
		$(this).toggleClass('ApM');
		$(this).children('.SAEr').stop().slideToggle(0);
	});
	// 底部微信
	$('.fen .weixin').hover(function() {
		$(this).children('.WXer').css('display', 'block');
	}, function() {
		$(this).children('.WXer').css('display', 'none');
	});
	// 点击展开事件
	$('.ClaCont dd em').click(function(event) {
		$(this).parent('dd').addClass('cli').siblings('dd').removeClass('cli');
	});
	// 焦点图
	var win_w=$(window).width();
	var myIndex=1;
	$('.banner ol li').click(function(event) {
		myIndex++;
		$(this).addClass('currentOl').siblings('li').removeClass('currentOl');
		var index=$(this).index();
		if(index > num){
			$('.banner ul li').eq(index).css({left: win_w,zIndex:myIndex}).stop().animate({left: 0}, 500);
			$('.banner ul li').eq(num).stop().animate({left: -win_w}, 500);
		}else if(index<num){
			$('.banner ul li').eq(index).css({left: -win_w,zIndex:myIndex}).stop().animate({left: 0}, 500);
			$('.banner ul li').eq(num).stop().animate({left: win_w}, 500);
		}
		num=index;
	});
	var timer=null;
	var num=0;
	function autoPlay(){
		if(!$('.banner ul li').is(':animated')){
			num++;
			myIndex++;
			if (num>3) {
				num=0;
			};
			$('.banner ol li').eq(num).addClass('currentOl').siblings('li').removeClass('currentOl');
			$('.banner ul li').eq(num).css({left: win_w,zIndex: myIndex}).stop().animate({left: 0}, 500);
			$('.banner ul li').eq(num-1).animate({left: -win_w}, 500);
		}
		
	}
	function prevPlay(){
		if (!$('.banner ul li').is(':animated')) {
			num--;
			myIndex++;
			if (num<0) {
				num=3
						};
			$('.banner ol li').eq(num).addClass('currentOl').siblings('li').removeClass('currentOl');
			$('.banner ul li').eq(num).css({
				left: -win_w,
				zIndex: myIndex
			}).animate({left: 0}, 500);
			if (num+1<=3) {
				$('.banner ul li').eq(num+1).animate({left: win_w}, 500);
			}else{
				$('.banner ul li').eq(0).animate({left: win_w}, 500);
			}
		};
		
	}
	timer=setInterval(autoPlay, 3000)
	$('.banner').hover(function() {
		clearInterval(timer);
		$('.banner span').fadeIn(400);
	}, function() {
		clearInterval(timer);
		timer=setInterval(autoPlay, 3000);
		$('.banner span').fadeOut(400);
	});
	$('.banner .right').click(function(event) {
		autoPlay();
	});
	$('.banner .left').click(function(event) {
		prevPlay();
	});
	// 添加地址的模态窗口
	var win_h=$(window).height();
	$('.mode').width(win_w);
	$('.mode').height(win_h);
	$('.Consignee button').click(function(event) {
		$('.mode').fadeIn(400);
	});
	$('.mode .close,.sure a').click(function(event) {
		$('.mode').fadeOut(400);
	});
	// 购物车的猜你喜欢轮播
	var CL_tag=$('.CLConW .CLConWuli:first').clone();
	var CLWul=$('.cartlike .CLConWul');
	$(CLWul).append(CL_tag);
	var CLW_num=0;
	function CLWautoPlay(){
		CLW_num++;
		if (CLW_num>3) {
			$(CLWul).css('left', '0');
			CLW_num=1;
		};
		$(CLWul).stop().animate({left:-CLW_num*100+'%'}, 1000);
	}
	function CLWprevPlay(){
		CLW_num--;
		if (CLW_num<0) {
			$(CLWul).css('left', -3*100+'%');
			CLW_num=2;
		};
		$(CLWul).stop().animate({left:-CLW_num*100+'%'}, 1000);
	}
	$('.cartlike .cup .right').click(function(event) {
		$(this).addClass('no').siblings('.left').removeClass('no');
		CLWautoPlay();
	});
	$('.cartlike .cup .left').click(function(event) {
		$(this).addClass('no').siblings('.right').removeClass('no');
		CLWprevPlay();
	});
	// 购物车的猜你喜欢轮播
	var HR_tag=$('.HRConW .HRConWuli:first').clone();
	var HRWul=$('.hotRecommend .HRConWul');
	$(HRWul).append(HR_tag);
	var HRW_num=0;
	function HRWautoPlay(){
		HRW_num++;
		if (HRW_num>3) {
			$(HRWul).css('left', '0');
			HRW_num=1;
		};
		$(HRWul).stop().animate({left:-HRW_num*100+'%'}, 1000);
	}
	function HRWprevPlay(){
		HRW_num--;
		if (HRW_num<0) {
			$(HRWul).css('left', -3*100+'%');
			HRW_num=2;
		};
		$(HRWul).stop().animate({left:-HRW_num*100+'%'}, 1000);
	}
	$('.hotRecommend .cup .right').click(function(event) {
		$(this).addClass('no').siblings('.left').removeClass('no');
		HRWautoPlay();
	});
	$('..hotRecommend .cup .left').click(function(event) {
		$(this).addClass('no').siblings('.right').removeClass('no');
		HRWprevPlay();
	});
	// 详情页获取点击
	var PSL=$('.PSmall li')
	$(PSL).hover(function(event) {
		$(this).addClass('focued').siblings('li').removeClass('focued');
		var pslIndex = $(this).index();
		$('.PApic li').eq(pslIndex).css({
			display: 'block'
		}).siblings('li').css({
			display: 'none'
		});
	});
	var PSmNum=$(PSL).index();
	$('.PSmall .left').click(function(event) {
		PSmNum--;
		if (PSmNum<0) {
			PSmNum=$('.PSmall ul').length;
		} ;
		$(PSL).eq(PSmNum).addClass('focued').siblings('li').removeClass('focued');
		$('.PApic li').eq(PSmNum).css({
			display: 'block'
		}).siblings('li').css({
			display: 'none'
		});
	});
	$('.PSmall .right').click(function(event) {
		PSmNum++;
		if (PSmNum>$('.PSmall ul').length) {
			PSmNum=0;
		} ;
		$(PSL).eq(PSmNum).addClass('focued').siblings('li').removeClass('focued');
		$('.PApic li').eq(PSmNum).css({
			display: 'block'
		}).siblings('li').css({
			display: 'none'
		});
	});
	// 提交订单的复选框
	$('.address .checkbox').click(function(event) {
		if ($(this).hasClass('checked')) {
			$(this).removeClass('checked');
		}else{
			$(this).addClass('checked').siblings('li').removeClass('checked');
		}
	});
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
	// 品牌馆
	$('.BArea li').hover(function() {
		$(this).children('p').stop().animate({top: 0}, 800);
	}, function() {
		$(this).children('p').stop().animate({top: "-120px"}, 400);
	});
	// 列表页
	$('.collect').click(function(event) {
		$(this).children('em').toggleClass('fish');
	});
	$('.brand li').click(function(event) {
	 	$(this).toggleClass('sreA');
	 	$('.BStroy').css('display', 'none');
	 });
	// 模态窗口
	$('.mode .checkbox').click(function(event) {
		if ($(this).hasClass('checked')) {
			$(this).removeClass('checked');
		}else{
			$(this).addClass('checked');
		}
	});
	$(".contentArea").width(win_w-35+"px");
    //导航效果
    $(".nav_list").find('li').each(function(index, el) {
    	$(el).on('mouseover', function (e) {
    		var left;
    		if (!index) {
    			left = 4;
    		} else {
    			left = 135 * index + 4;
    		}
    		$(".nav_list_bg").stop(true, true).animate({"left": left}, 300);
    	});   	
    });
    $('.nav_list_parent').on('mouseleave', function () {
		$(".nav_list_bg").stop(true, true).animate({"left": "4px"}, 300);
	})
	// 懒加载
	$("img.lazy").lazyload({
			event:"sporty",
			threshold : 200,
			effect : "fadeIn"
		});
	$(window).bind("load", function() { 
    var timeout = setTimeout(function() {$("img.lazy").trigger("sporty")}, 100);
	});
});