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
});