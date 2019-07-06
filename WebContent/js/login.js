$(function() {
	$('.checkbox').click(function(event) {
		if ($(this).hasClass('checked')) {
			$(this).removeClass('checked');
		}else{
			$(this).addClass('checked');
		}
	});
	$('input').focusin(function(event) {
		$(this).css('borderColor', '#0079CC');
	});
	$('input').focusout(function(event) {
		$(this).css('borderColor', '#cacaca');
	});
});