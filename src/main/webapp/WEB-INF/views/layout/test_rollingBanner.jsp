<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link rel="stylesheet" type="text/css" href="/css/swiper/swiper-bundle.css" />
<link rel="stylesheet" type="text/css" href="/css/swiper/swiper-bundle.min.css" />

<script  type="text/javascript" src="https://unpkg.com/swiper/swiper-bundle.js"></script>
<script  type="text/javascript" src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>


<style>
	#frame_div{
		width:100px;
		height: 100px;
		position: relative;
		overflow: hidden;
	}
	#inner_div {
		width:500px;
		height:100px;
		left:0px;
		background-color: blue;
		position: absolute;
		transition: left 0.5s;
	}
	.block_div {
		width: 100px;
		height: 100px;
		float: left;
	}
	.block_div:nth-child(1) {background-color: red;}
	.block_div:nth-child(2) {background-color: blue;}
	.block_div:nth-child(3) {background-color: green;}
	.block_div:nth-child(4) {background-color: yellow;}
	.block_div:nth-child(5) {background-color: purple;}
	
	.swiper-container {
	width:640px;
	height:420px;
	}
	.swiper-slide {
		text-align:center;
		display:flex; /* 내용을 중앙정렬 하기위해 flex 사용 */
		align-items:center; /* 위아래 기준 중앙정렬 */
		justify-content:center; /* 좌우 기준 중앙정렬 */
		background-color:grey;
	}
	.swiper-slide img {
		background-color:grey;
		box-shadow:0 0 5px #555;
	}
	
	.social-login{
		width: 500px;
		margin : 10px auto;
		border : 1px solid red;
	}
	.social-login h2 {
		display:block;
	    position: relative;
	    margin: 0;
	    text-align: center;
	    line-height: 18px;
	}

	.social-login .social-login-text {
	    display: inline-block;
	    max-width: 70%;
	    padding: 0 12px;
	    font-weight: 400;
	    font-size: 13px;
	    color: #808893;
	    word-wrap: break-word;
	    vertical-align: top;
	    background: red;
	    line-height:20px;
	    z-index: 1;
	}
	.social-login h2:before {
	    display: block;
	    position: absolute;
	    top: 50%;
	    left: 0;
	    width: 100%;
	    height: 1px;
	    background-color: hsla(215,8%,54%,.3);
	    transform: translateY(-50%);
	    content: "";
	}
</style>

<script type="text/javascript">
	var left_value = 0;
	function left_func() {
		var inner = document.getElementById("inner_div");
		left_value = left_value - 100;
		if(left_value <= - 400) {
			left_value= -400;
		}
		inner.style.left = left_value+"px"; // -100px, -200px, -300px
	}
	function right_func() {
		var inner = document.getElementById("inner_div");
		left_value = left_value + 100;
		if(left_value > 0) {
			left_value=0;
		}
		inner.style.left = left_value+"px"; // 100px, 200px, 300px
	}


</script>
</head>
<body>
	<div id="frame_div">
		<ul id="inner_div">
			<li class="block_div">1</li>
			<li class="block_div">2</li>
			<li class="block_div">3</li>
			<li class="block_div">4</li>
			<li class="block_div">5</li>			
		</ul>
	</div>
	
	<button onclick="left_func();">left</button>
	<button onclick="right_func();">right</button>
	
<!-- swiper api -->
<!-- Slider main container -->
<div id="test-slide"class="swiper-container">
  <!-- Additional required wrapper -->
  <div class="swiper-wrapper">
    <!-- Slides -->
    <div class="swiper-slide"><a><img>Image 1</a></div>
    <div class="swiper-slide"><a><img>Image 2</a></div>
    <div class="swiper-slide"><a><img>Image 3</a></div>
  </div>
  <!-- If we need pagination -->
  <div class="swiper-pagination"></div>
</div>

<div data-8 class="social-login">
	<h2><span class="social-login-text">SNS 로그인 / 가입</span></h2>
</div>
<!-- <script>
var swiper = new Swiper('#test-slide', {
	/* 	slidesPerView : 'auto',
		pagination : { // 페이징 설정
			el : '.swiper-pagination',
			clickable : true, // 페이징을 클릭하면 해당 영역으로 이동, 필요시 지정해 줘야 기능 작동
		}, */

		sliderPerView : 'auto',
		loop : true,
		loopAdditionalSlides : 1,
		pagination : true,
		autoplay : {
			delay : 3000,
			disableOnInteraction : false,
		},
		pagination: {
		    el: '.swiper-pagination',
		    clickable : true,
		    type: 'bullets',
		  },
	})
</script> -->

<script src="/js/swiper.js"></script>
</body>
</html>