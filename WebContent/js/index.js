$(function() {
	// 固定部分的搜索
	var WBannerH=$('.star_brand').offset().top;
	var winHeight=$(window).height();
	$(window).scroll(function(event) {
		var WinH=$(window).scrollTop();
		if (WinH>WBannerH) {
			$('.fixSearch').fadeIn(0);
		} else{
			$('.fixSearch').fadeOut(0);
		};
	});
	// 固定部分的搜索
	var winHeight=$(window).height();
	$('.fixNav').height(winHeight);
	// 固定部分的导航
	$('.FC').hover(function() {
		$(this).children('.FLhover').stop().fadeIn(0);
	}, function() {
		$(this).children('.FLhover').stop().fadeOut(0);
	});
	$('.fixNav .top').click(function(){
		$('html,body').animate({scrollTop: 0}, 500);
	});
});