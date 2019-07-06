$(function(){
	// 返回顶部
	var winHeight=$(window).height();
	$(window).scroll(function(event) {
		var WinH=$(window).scrollTop();
		if (WinH>winHeight) {
			$('.top').fadeIn(400);
		} else{
			$('.top').fadeOut(400);
		};
	});
	$('.top').click(function(event) {
		$('html,body').animate({scrollTop: 0}, 500);
	});
	var docH=$('html,body').height();
	$('.mode').height(docH);
	$('.header .share').click(function(event) {
		$('.mode').fadeIn(400);
	});
	$('.mode').click(function(event) {
		$('.mode').fadeOut(400);
	});
	//选择购买数量
    function changeNumber(opts){
      $('.changenum').on('click','i', function(event) {
        var num = $(this).siblings('.num'),
            n = num.html();
        if(this.className == opts.add){
          num.html(++n);
          if(num.siblings('.sub').hasClass('del')){
          	num.siblings('.sub').removeClass('del')
          }
        }else{
          num.html(n>1?--n:1);
          if(n==1){
          	if(!$(this).hasClass('del')){
          		$(this).addClass('del')
          	}else{
          		$(this).parents('.e-flex').addClass('in')
          	}
          }
        }
        $(this).parents('.e-flex').find('.e-radio input').data('num', n)
        getSet()
        return false;
      });
    };
    changeNumber({
      sub:'sub',
      add:'add'
    })
    //商品删除
    $(document).on('click', '.deleate', function(event) {
    	event.preventDefault();
    	var funs = $(this).parents('.e-flex');
    	funs.removeClass('in');
    	funs.remove()
    	getSet();
    });
    //删除取消
    $(document).on('click', '.car .opt,.car img', function(event) {
    	if($(this).parents().hasClass('in')){
    		$(this).parents().removeClass('in')
    	}
    });
    //商品勾选
    $('.e-radio input').change(function(){
    	if(this.className=='all'){
    		var son = $(this).parents('.car').find('.w2 input');
    		if($(this).prop('checked')){
    			son.prop('checked',true)
    		}else{
    			son.prop('checked',false)
    		}
    	}
    	//计算
    	getSet()
    })
    //页面载入计算一次
    getSet();

    //订单中心
    $('.tabp a').click(function(event) {
    	event.preventDefault();
    	var index = $(this).index();
    	$(this).addClass('cur').siblings().removeClass('cur');
    	$('.tabson .one').eq(index).show().siblings().hide()
    });
});
/*Pub*/
//金额计算
function getSet(){
	var usa = {
    		num:0,
    		ps:0
    	},
		japan = {
    		num:0,
    		ps:0
    	},
		baosui = {
    		num:0,
    		ps:0
    	};
	$('.e-radio input:not(.all)').each(function(index, el) {
		if($(el).prop('checked')){
			var type = $(this).data('type'),
				num = Number($(this).data('num')),
				price = Number($(this).data('price'));
				console.log(type);
			switch(type){
				case 'usa':
					usa.num+=num;
					usa.ps+=num*price;
					break;
				case 'japan':
					japan.num+=num;
					japan.ps+=num*price;
					break;
				case 'baosui':
					baosui.num+=num;
					baosui.ps+=num*price;
					break;
			}
		}
	});
	$('.usa .number').html(usa.num)
	$('.usa .tprice em').html(usa.ps)
	$('.japan .number').html(japan.num)
	$('.japan .tprice em').html(japan.ps)
	$('.baosui .number').html(baosui.num)
	$('.baosui .tprice em').html(baosui.ps)
	$('.aom').html(usa.ps+japan.ps+baosui.ps)
}      
