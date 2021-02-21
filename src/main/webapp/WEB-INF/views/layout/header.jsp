<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>BAZIG</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="X-UA_Compatible" content="IE=chrome">
  
<!-- page-icon -->
<link rel="shortcut icon" href="images/logo.png">

<!-- stylesheet -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

<!-- stylesheet -->
<link rel="stylesheet" type="text/css" href="/css/common.css">
<link rel="stylesheet" type="text/css" href="css/lightslider.css">
<link rel="stylesheet" href="css/loginForm.css">

<!-- js -->
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/lightslider.js"></script>

<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<script type="text/javascript">
$(function() {
	$("#main-nav-wrapper li").mouseenter(function(event) {
/*  	$(this).find("div").parent().css("background", "#fff");
		$(this).find("div").parent().children("a").css("color", "#000");
		$(this).find("div").slideDown("fast");*/
		$("#sub-nav-wrapper li").find("div").slideDown("fast");
	}).mouseleave(function() {
		$("#sub-nav").find("div:visible").slideUp(50, function() {
			// #menubar-menus li:hover 처리를 하지 않을 경우 아래 라인 활성,
		});
	});
});
</script>
<%@ include file = "side_bar.jsp" %>
<div class="app">
	<!-- Header -->
		<div id="header">
			<!-- top-banner -->
			<div class="top-banner">
				애드센스
			</div>
			<!-- Main logo, search-bar, upper menu -->
			<div class="frame">
				<div class="main-logo-area">
					<h1 class="main-logo"><a href="/"><img src="images/logo.png" alt="BAZIG"></a></h1>
				</div>
				<div class="search-bar-area">
					<form>
						<input type="text" name="q" id="search_input" class="search_input">
						<button class="search_button"> </button>
					</form>
				</div>
				<c:choose>
					<c:when test="${empty sessionScope.principal }">
						<div class="upper-menu-area">
							<a href="#" target="_blank">베이직소개</a> |
							<a href="#" target="_blank">입점문의</a> |
							<a href="#">장바구니</a> |
							<a href="#">마이페이지</a> |
							<a class="login" href="#">로그인</a> |
						</div>
					</c:when>
					<c:otherwise>
						<div class="upper-menu-area">
							<a href="#" target="_blank">베이직소개</a> |
							<a href="#" target="_blank">입점문의</a> |
							<a href="#">장바구니</a> |
							<a href="#">마이페이지</a> |
							<a class="logout" href="#">로그아웃</a> |
						</div>
					</c:otherwise>
				</c:choose>			
			</div>
		</div>
		
		<!-- nav -->
		<div id="nav">
			<ul id="main-nav-wrapper">
				<li id="nav_home" class="swiper-slide-active"> <a href="/"> <span> 홈 </span> </a>
				<li id="nav_brand" class="swiper-slide-active"> <a href="#"> <span> 브랜드 </span> </a>
				<li id="nav_shoppingMall" class="swiper-slide-active"> <a href="#"> <span> 쇼핑몰 </span> </a>
				<li id="nav_life" class="swiper-slide-active"> <a href="#"> <span> 라이프 </span> </a>
				<li id="nav_highend" class="swiper-slide-active"> <a href="#"> <span> 하이엔드 </span> </a>
				<li id="nav_exhibitions" class="swiper-slide-active"> <a href="#"> <span> 기획전 </span> </a>
				<li id="nav_store" class="swiper-slide-active"> <a href="#"> <span> 스토어 </span> </a>
			</ul>
		</div>
	    <div id="sub-nav">
			<ul id="sub-nav-wrapper">
				<li><div class="gnb-sub-menu"><p>Sub menu 1<p></div></li>
			</ul>
		</div>
	    
		<!--  end navigation -->
	<!-- end header -->