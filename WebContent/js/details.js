$(function() {
	// 固定导航
	var PIH=$('.PI h3').offset().top;
	var evH=$('.evaluation .evaTitle').offset().top;
	$(window).scroll(function(event) {
		var winH=$(window).scrollTop();
		if (winH>PIH) {
			$('.PI h3').css({
				position: 'fixed',
				top: '0',
				zIndex: 3,
				background:'#fff'
			});
		} else{
			$('.PI h3').css({
				position: 'static'
			});
		};
	});
	$('.priyou em').hover(function() {
		$('.priyou strong').css({
				display: 'block'
	 		});
	}, function() {
		$('.priyou strong').css({
				display: 'none'
	 		});
	});
	// 鼠标跟随事件
	var PA=$('.PApic');
	var PAX=$(PA).offset().left;
	var PAY=$(PA).offset().top;
	$(PA).hover(function() {
		$('.PAhover,.PAbig').show();
		$(PA).mousemove(function(event) {
			var mx=event.pageX-PAX-100;
			var my=event.pageY-PAY-100;
			if(mx<0){
				mx=0;
			}
			if(my<0){
				my=0;
			}
			if(mx>398-200){
				mx=398-200;
			}
			if(my>398-200){
				my=398-200;
			}
			$('.PAhover').css({
				left: mx,
				top: my
			});
			var posX=-800*mx/398;
			var posY=-800*my/398;
			$('.PAbig').css({
				backgroundPosition: posX+'px '+posY+'px'
			});
		});
	}, function() {
		$('.PAhover,.PAbig').hide();
	});
	// 详情页轮播
	var REW_tag=$('.ReConW .ReConWuli:first').clone();
	var REWul=$('.ReContent .ReConWul');
	$(REWul).append(REW_tag);
	var REW_num=0;
	function REWautoPlay(){
		REW_num++;
		if (REW_num>3) {
			$(REWul).css('left', '0');
			REW_num=1;
		};
		$(REWul).stop().animate({left:-REW_num*100+'%'}, 1000);
	}
	function REWprevPlay(){
		REW_num--;
		if (REW_num<0) {
			$(REWul).css('left', -3*100+'%');
			REW_num=2;
		};
		$(REWul).stop().animate({left:-REW_num*100+'%'}, 1000);
	}
	$('.cup .right').click(function(event) {
		$(this).addClass('no').siblings('.left').removeClass('no');
		REWautoPlay();
	});
	$('.cup .left').click(function(event) {
		$(this).addClass('no').siblings('.right').removeClass('no');
		REWprevPlay();
	});
});