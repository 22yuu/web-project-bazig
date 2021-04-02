<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<sec:authorize access="isAuthenticated()">
  <sec:authentication property="principal" var="principal"/>
</sec:authorize>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>BAZIG</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="X-UA_Compatible" content="IE=chrome">

<!-- page-icon -->
<link rel="shortcut icon" href="/images/logo.png">

      
<!-- stylesheet -->
<link rel="stylesheet" type="text/css" href="/css/common01.css">
<link rel="stylesheet" type="text/css" href="/css/lightslider.css">

<link rel="stylesheet" type="text/css" href="/css/swiper/swiper-bundle.css" />
<link rel="stylesheet" type="text/css" href="/css/swiper/swiper-bundle.min.css" />


<!-- js -->
<script  type="text/javascript" src="https://unpkg.com/swiper/swiper-bundle.js"></script>
<script  type="text/javascript" src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>

<script type="text/javascript" src="/js/jquery.js"></script>
<script type="text/javascript" src="/js/lightslider.js"></script>
<script type="text/javascript" src="/js/dropdown.js"></script>


<script>
$(document).ready(function(){
	$(".login").on('click', function() {
		$(".modal-content").load("/auth/modal_loginForm")
	});
	$('#mypage_login_need').click(function(){
		alert("로그인이 필요합니다.")
	});
});
</script>
</head>
<body>
<div class="app">
	    <!-- header -->
    <div id="header">
        <div class="top-adv-banner"> 에드센스 </div>
        <div class="header-frame">
            <div class="upper-menu">
                <c:choose>
                    <c:when test="${empty principal || principal.user.registed eq 0}">
                        <a href="/auth/bazigInfo">베이지그 소개</a>
                        <a href="/cart">장바구니</a>
                        <a href="/mypage">마이페이지</a>
                        <a id="login" class="login" data-toggle="modal" data-target="#modal" role="button" href="#">로그인</a>
                        <a href="/auth/joinForm">회원가입</a>
                    </c:when>
	                <c:otherwise>
	                    <a href="/auth/bazigInfo">베이지그 소개</a>
	                    <a href="/cart">장바구니</a>
	                    <a href="/mypage">마이페이지</a>
	                    <a id="logout">로그아웃</a>
	                </c:otherwise>
                </c:choose>
            </div>
            <div class="top-logo"><a href="#"> <img src="images/logo-bazig.jpg" alt="BAZIG"> </a></div>
            <div class="gnb-menu">
                <ul>
                    <li><a><span>EVENT</span></a></li>
                    <li><a><span>NEW</span></a></li>
                    <li><a><span>BEST</span></a></li>
                    <li><a><span>BRAND</span></a></li>
                    <li><a><span>LUXURY</span></a></li>
                    <li><a><span>RAFFLE</span></a></li>
                </ul>
            </div>
            <div class="search-bar-area">
                <form>
                    <input type="text" name="q" id="search_input" class="search_input" style="border:none; text-align: center;" placeholder="나이키 테일윈드">
                    <button class="search_button"> </button>
                </form>
            </div>
        </div>
    </div>
    <!-- 팝업 로그인 모달 영역 -->
		<div id="modal" class="modal fade" tabindex="-1" role="dialog">
            <div class="modal-dialog"> 
                <div class="modal-content">
                </div> 
            </div>
    </div>
    <!-- header end-->