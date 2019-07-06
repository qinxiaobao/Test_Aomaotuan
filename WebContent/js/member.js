$(function() {
	// tab
	function navTab(canshu1,canshu2){
			$(canshu1).hover(function(event) {
				var navNum = $(this).index();
				$(canshu2).eq(navNum).css('display', 'block').siblings(canshu2).css('display', 'none');
				$(this).addClass('current').siblings(canshu1).removeClass('current');
			});
		}
	navTab(".CouponTabW  .CouponTab",".CouponTabarea");
	navTab(".inforAreaTitle .tab",".inforContent .inforContentW");
	// 选框效果
	function CheckBox (ele) {
		this.ele = ele;
		this.init();
	}
	CheckBox.prototype = {
		constructor: CheckBox,
		init: function () {
			this.bindEvent();
		},
		bindEvent: function () {
			this.ele.on('click', function(){
				if ($(this).hasClass('checked')) {
					$(this).removeClass('checked');
				} else{
					$(this).addClass('checked');
				};
			})
		}
	}
	var checkbox = new CheckBox($('.checkbox'));
	// 删除订单
	function del(canshu1,canshu2){
		$(canshu1).click(function(event) {
			$(this).parentsUntil(canshu2).css('display', 'none');
		});
	}
	del(".recentlyListArea .delete","form")
});