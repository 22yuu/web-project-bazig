$(function() {
	
	$("#main-nav-wrapper li").mouseenter(function(event) {
		$(this).children("a").children("span").css("border-bottom","3px solid #fff");
		$("#sub-nav-wrapper").css("display","block");
	}).mouseleave(function() {
		$(this).children("a").children("span").css("border-bottom","none");
		$("#sub-nav-wrapper").css("display","none");
	});
	
	
	
	$("#best_item_nav_menus li").mouseenter(function(event) {
		$(this).children("a").children("span").css("border-bottom","3px solid #222");
		$("#best-item-sub-nav").css("display","block");
	}).mouseleave(function() {
		$(this).children("a").children("span").css("border-bottom","none");
		$("#best-item-sub-nav").css("display","none");
	});
	
	$("#new_item_nav_menu li").mouseenter(function(event) {
		$(this).children("a").children("span").css("border-bottom","3px solid #222");
		$("#new-item-sub-nav").css("display","block");
	}).mouseleave(function() {
		$(this).children("a").children("span").css("border-bottom","none");
		$("#new-item-sub-nav").css("display","none");
	});
	
	
	
});