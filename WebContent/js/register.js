$(function() {
	$('.PNunber .checkbox').click(function(event) {
		if ($('.PNunber .checkbox').hasClass('checked')) {
			$(this).removeClass('checked');
			$('.chp input').addClass('Cn');
		}else{
			$(this).addClass('checked');
			$('.chp input').removeClass('Cn');
		}
	});
	$('input').focusin(function(event) {
		$(this).css('borderColor', '#0079CC');
	});
	$('input').focusout(function(event) {
		$(this).css('borderColor', '#CACACA');
	});
});