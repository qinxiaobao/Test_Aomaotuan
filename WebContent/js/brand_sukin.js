$(function(){
	//导航下边三角的移动
	$(".nav ul li a").hover(function(){
    $(this).find("span").animate({left:"30px"},500);
	},function(){
    $(this).find("span").animate({left:"-18px"},0);
	});
	// 导航下边的鼠标移动上去的效果
	$(".hotPro li a").hover(function(){
		$(this).find('.move_box').animate({bottom:"0px"},500);
	},function(){$(this).find('.move_box').animate({bottom:"-65px"},500);})
})