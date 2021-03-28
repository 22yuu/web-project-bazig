<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="layout/header.jsp" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>

<script>
$(document).ready(function(){		
	$('button[name=login_need]').click(function(){
		alert("로그인이 필요합니다.")
	});
	$('button[name=btn-zzim]').click(function(){
		$(this).toggleClass("done");
	});
	$(".slide-img a").click('click', function(){
		location.href="/auth/productDetail";
	});
	
	$('#top_btn').click(function () {
		$('html').animate({
			scrollTop:0
			}, 800);
		return false;
		});
	var scrollHeight = $(document).height();
	$('#bottom_btn').click(function() {
		$('html').animate({
			scrollTop: scrollHeight
			}, 800);
		return false;
		});

    $('#side-cart').mouseenter(function(event) {
        $('.side_content').css("display","block");
        $('.side_content').append("<h4 id='title'>장바구니<span class='cnt'></span></h4>");
    });
    $('#side-cart').mouseleave(function(event) {
        $('.side_content').css("display","none");
        $('.side_content h4').remove();
    });

    
    $('#side-zzim').mouseenter(function(event) {
        $('.side_content').css("display","block");
        $('.side_content').append("<h4 id='title'>찜 목록<span class='cnt'></span></h4>");
    });
    $('#side-zzim').mouseleave(function(event) {
        $('.side_content').css("display","none");
        $('.side_content h4').remove();
    });

    
    $('#side-recent-view').mouseenter(function(event) {
        $('.side_content').css("display","block");
        $('.side_content').append("<h4 id='title'>최근 본 상품<span class='cnt'></span></h4>");
    });
    $('#side-recent-view').mouseleave(function(event) {
        $('.side_content').css("display","none");
        $('.side_content h4').remove();
    });
	
	$(function() {
		$("#best_item_nav_menus li").mouseenter(function(event) {
 			$(this).find("div").parent().css("background", "#FFF");
			$(this).find("div").parent().children("a").css("color", "#000");
			$(this).find("div").slideDown("fast"); 
		}).mouseleave(function() {
			$(this).find("div:visible").slideUp(50, function() {
				// #menubar-menus li:hover 처리를 하지 않을 경우 아래 라인 활성,
			});
		});
	});
});


</script>
</head>
<body>

    <!-- 오른쪽 사이드바 -->
    <div class="wrapper">
        <div class="side_content">

            <div class="paging">
                <span class="paging_cnt">
                    <span class="now" id="cur_p_cnt">0</span>
                    /
                    <span id="tol_p_cnt">0</span>
                </span>
                <a href="" class="btn_prev"></a>
                <a href="" class="btn_next"></a>
            </div>
        </div>
        <div class="sidebar_frame">
            <div class="quick_menu">
                <!-- 장바구니 -->
                <div id="side-cart">
                    <a href="#" class="cart-btn" title="장바구니"></a>
                </div>
                <!-- 찜 목록 -->
                <div id="side-zzim">
                    <a href="#" class="zzim-btn" title="찜 목록"></a>
                </div>
                <!-- 최근 본 상품 -->
                <div id="side-recent-view">
                    <a href="#" class="recent-view-btn" title="최근 본 상품"></a>
                </div>
                <!-- button-->
                <div>
                    <a id="top_btn" class="go-top-btn"></a>
                </div>
                <div>
                    <a id="bottom_btn" class="go-bottom-btn" ></a>
                </div>
            </div>
            <div class="chat_menu">
                <a href="#"></a>
            </div>
        </div>
    </div>
    <!-- 오른쪽 사이드바 끝 -->
	<!-- Main banner, Sub banner -->
	<div id="banner-frame">
		<!-- Slider main container -->
		<div id="main_banner" class="swiper-container">
		  <!-- Additional required wrapper -->
		  <div class="swiper-wrapper">
		    <!-- Slides -->
		    <div class="swiper-slide"><a><img>Image 1</a></div>
		    <div class="swiper-slide"><a><img>Image 2</a></div>
		    <div class="swiper-slide"><a><img>Image 3</a></div>
   		    <div class="swiper-slide"><a><img>Image 4</a></div>
		    <div class="swiper-slide"><a><img>Image 5</a></div>
		    <div class="swiper-slide"><a><img>Image 6</a></div>
		  </div>
		  <!-- If we need pagination -->
		  <div class="swiper-pagination"></div>
		</div>
		
	  <div id="sub_banner">
			인스타 연동 배너
	  </div>
	</div>

	 <!-- Best items Slider -->
	<div id="best_item_frame">
	 	<span style="font-size:32px">BEST</span>
	 	<div class="best_item_nav">
	 		<ul id="best_item_nav_menus" class="best_item_nav_menu">
				<li> <a href="#"> <span> BEST1 </span> </a>
				</li>
				<li> <a href="#"> <span> BEST2 </span> </a>
				</li>
				<li> <a href="#"> <span> BEST3 </span> </a>
				</li>
				<li> <a href="#"> <span> BEST4 </span> </a>
				</li>
				<li> <a href="#"> <span> BEST5 </span> </a>
				</li>
				<li> <a href="#"> <span> BEST6 </span> </a>
				</li>
				<li> <a href="#"> <span> BEST7 </span> </a>
				</li>
			</ul>
		</div>
		
	</div>
	<!-- Best Items Sub Menu -->
	<div id="best-item-sub-frame">
		<div id="best-item-sub-nav"> BEST 서브 메뉴 </div>
	</div>
	
	
	<div class="slider_frame">
		<section class="slider">
		<ul id="autoWidth" class="cs-hidden">
			  <!-- 1 -->
			  <li class="item-a">
			  	<!-- box-slider -->
				<div class="box">
				<!-- img-box -->
				<div class="overlay">
					<div class="slide-img"><a><img></a></div>
				</div>
				<!-- detail-box -->
				<div class="detail-box">
				<!-- type -->
				<div class="type">
				<ul>
					<li class="prd-name">ETIAM ERAT VELT</li>
					<li class="sub-name">SCELERISQ</li>
					<li class="prd-info">UE IN DICTUM NON<br>
										 CONSECTETUR A EART.<br></li>
					<li class="detail-price">
						<del class="origin-price">69,000원 <br></del> 
						<strong class="current-price">39,000원 </strong>
					</li>
					<li class="discount-percent"> 42%  </li>
					<li class="zzim">
						<c:choose>
						  <c:when test="${empty principal}">
						  	<button class="btn-zzim" name="login_need"></button>
						  </c:when>
						  <c:otherwise>
							<button class="btn-zzim" name="btn-zzim"></button>
						  </c:otherwise>
						</c:choose>
					</li>
				</ul>
				</div>
				</div>
				</div>
			  </li>
			  <!-- 2 -->
			  <li class="item-b">
			  	<!-- box-slider -->
				<div class="box">
				<!-- img-box -->
				<div class="overlay">
					<div class="slide-img"><a><img></a></div>
				</div>
				<!-- detail-box -->
				<div class="detail-box">
				<!-- type -->
				<div class="type">
				<ul>
					<li class="prd-name">ETIAM ERAT VELT</li>
					<li class="sub-name">SCELERISQ</li>
					<li class="prd-info">UE IN DICTUM NON<br>
										 CONSECTETUR A EART.<br></li>
					<li class="detail-price">
						<del class="origin-price">69,000원 <br></del> 
						<strong class="current-price">39,000원 </strong>
					</li>
					<li class="discount-percent"> 42%  </li>
					<li class="zzim">
						<c:choose>
						  <c:when test="${empty principal}">
						  	<button class="btn-zzim" name="login_need"></button>
						  </c:when>
						  <c:otherwise>
							<button class="btn-zzim" name="btn-zzim"></button>
						  </c:otherwise>
						</c:choose>
					</li>
				</ul>
				</div>
				</div>
				</div>
			  </li>
			  <!-- 3 -->
			  <li class="item-c">
			  	<!-- box-slider -->
				<div class="box">
				<!-- img-box -->
				<div class="overlay">
					<div class="slide-img"><a><img></a></div>
				</div>
				<!-- detail-box -->
				<div class="detail-box">
				<!-- type -->
				<div class="type">
				<ul>
					<li class="prd-name">ETIAM ERAT VELT</li>
					<li class="sub-name">SCELERISQ</li>
					<li class="prd-info">UE IN DICTUM NON<br>
										 CONSECTETUR A EART.<br></li>
					<li class="detail-price">
						<del class="origin-price">69,000원 <br></del> 
						<strong class="current-price">39,000원 </strong>
					</li>
					<li class="discount-percent"> 42%  </li>
					<li class="zzim">
						<c:choose>
						  <c:when test="${empty principal}">
						  	<button class="btn-zzim" name="login_need"></button>
						  </c:when>
						  <c:otherwise>
							<button class="btn-zzim" name="btn-zzim"></button>
						  </c:otherwise>
						</c:choose>
					</li>
				</ul>
				</div>
				</div>
				</div>
			  </li>
			  <!-- 4 -->
			  <li class="item-d">
			  	<!-- box-slider -->
				<div class="box">
				<!-- img-box -->
				<div class="overlay">
					<div class="slide-img"><a><img></a></div>
				</div>
				<!-- detail-box -->
				<div class="detail-box">
				<!-- type -->
				<div class="type">
				<ul>
					<li class="prd-name">ETIAM ERAT VELT</li>
					<li class="sub-name">SCELERISQ</li>
					<li class="prd-info">UE IN DICTUM NON<br>
										 CONSECTETUR A EART.<br></li>
					<li class="detail-price">
						<del class="origin-price">69,000원 <br></del> 
						<strong class="current-price">39,000원 </strong>
					</li>
					<li class="discount-percent"> 42%  </li>
					<li class="zzim">
						<c:choose>
						  <c:when test="${empty principal}">
						  	<button class="btn-zzim" name="login_need"></button>
						  </c:when>
						  <c:otherwise>
							<button class="btn-zzim" name="btn-zzim"></button>
						  </c:otherwise>
						</c:choose>
					</li>
				</ul>
				</div>
				</div>
				</div>
			  </li>
			  <!-- 5 -->
			  <li class="item-e">
			  	<!-- box-slider -->
				<div class="box">
				<!-- img-box -->
				<div class="overlay">
					<div class="slide-img"><a><img></a></div>
				</div>
				<!-- detail-box -->
				<div class="detail-box">
				<!-- type -->
				<div class="type">
				<ul>
					<li class="prd-name">ETIAM ERAT VELT</li>
					<li class="sub-name">SCELERISQ</li>
					<li class="prd-info">UE IN DICTUM NON<br>
										 CONSECTETUR A EART.<br></li>
					<li class="detail-price">
						<del class="origin-price">69,000원 <br></del> 
						<strong class="current-price">39,000원 </strong>
					</li>
					<li class="discount-percent"> 42%  </li>
					<li class="zzim">
						<c:choose>
						 <c:when test="${empty principal}">
						  	<button class="btn-zzim" name="login_need"></button>
						  </c:when>
						  <c:otherwise>
							<button class="btn-zzim" name="btn-zzim"></button>
						  </c:otherwise>
						</c:choose>
					</li>
				</ul>
				</div>
				</div>
				</div>
			  </li>
			  <!-- 6 -->
			  <li class="item-f">
			  	<!-- box-slider -->
				<div class="box">
				<!-- img-box -->
				<div class="overlay">
					<div class="slide-img"><a><img></a></div>
				</div>
				<!-- detail-box -->
				<div class="detail-box">
				<!-- type -->
				<div class="type">
				<ul>
					<li class="prd-name">ETIAM ERAT VELT</li>
					<li class="sub-name">SCELERISQ</li>
					<li class="prd-info">UE IN DICTUM NON<br>
										 CONSECTETUR A EART.<br></li>
					<li class="detail-price">
						<del class="origin-price">69,000원 <br></del> 
						<strong class="current-price">39,000원 </strong>
					</li>
					<li class="discount-percent"> 42%  </li>
					<li class="zzim">
						<c:choose>
						  <c:when test="${empty principal}">
						  	<button class="btn-zzim" name="login_need"></button>
						  </c:when>
						  <c:otherwise>
							<button class="btn-zzim" name="btn-zzim"></button>
						  </c:otherwise>
						</c:choose>
					</li>
				</ul>
				</div>
				</div>
				</div>
			  </li>
		</ul>
		</section>
	</div>
	
	<div class="slider_frame">
		<section class="slider">
		<ul id="autoWidth2" class="cs-hidden">
			  <!-- 1 -->
			  <li class="item-a">
			  	<!-- box-slider -->
				<div class="box">
				<!-- img-box -->
				<div class="overlay">
					<div class="slide-img"><a><img></a></div>
				</div>
				<!-- detail-box -->
				<div class="detail-box">
				<!-- type -->
				<div class="type">
				<ul>
					<li class="prd-name">ETIAM ERAT VELT</li>
					<li class="sub-name">SCELERISQ</li>
					<li class="prd-info">UE IN DICTUM NON<br>
										 CONSECTETUR A EART.<br></li>
					<li class="detail-price">
						<del class="origin-price">69,000원 <br></del> 
						<strong class="current-price">39,000원 </strong>
					</li>
					<li class="discount-percent"> 42%  </li>
					<li class="zzim">
						<c:choose>
						  <c:when test="${empty principal}">
						  	<button class="btn-zzim" name="login_need"></button>
						  </c:when>
						  <c:otherwise>
							<button class="btn-zzim" name="btn-zzim"></button>
						  </c:otherwise>
						</c:choose>
					</li>
				</ul>
				</div>
				</div>
			  </li>
			  <!-- 2 -->
			  <li class="item-b">
			  <!-- box-slider -->
				<div class="box">
				<!-- img-box -->
				<div class="overlay">
					<div class="slide-img"><a><img></a></div>
				</div>
				<!-- detail-box -->
				<div class="detail-box">
				<!-- type -->
				<div class="type">
				<ul>
					<li class="prd-name">ETIAM ERAT VELT</li>
					<li class="sub-name">SCELERISQ</li>
					<li class="prd-info">UE IN DICTUM NON<br>
										 CONSECTETUR A EART.<br></li>
					<li class="detail-price">
						<del class="origin-price">69,000원 <br></del> 
						<strong class="current-price">39,000원 </strong>
					</li>
					<li class="discount-percent"> 42%  </li>
					<li class="zzim">
						<c:choose>
						 <c:when test="${empty principal}">
						  	<button class="btn-zzim" name="login_need"></button>
						  </c:when>
						  <c:otherwise>
							<button class="btn-zzim" name="btn-zzim"></button>
						  </c:otherwise>
						</c:choose>
					</li>
				</ul>
				</div>
				</div>
				</div>
			  </li>
			  <!-- 3 -->
			  <li class="item-c">
			  	<!-- box-slider -->
				<div class="box">
				<!-- img-box -->
				<div class="overlay">
					<div class="slide-img"><a><img></a></div>
				</div>
				<!-- detail-box -->
				<div class="detail-box">
				<!-- type -->
				<div class="type">
				<ul>
					<li class="prd-name">ETIAM ERAT VELT</li>
					<li class="sub-name">SCELERISQ</li>
					<li class="prd-info">UE IN DICTUM NON<br>
										 CONSECTETUR A EART.<br></li>
					<li class="detail-price">
						<del class="origin-price">69,000원 <br></del> 
						<strong class="current-price">39,000원 </strong>
					</li>
					<li class="discount-percent"> 42%  </li>
					<li class="zzim">
						<c:choose>
						  <c:when test="${empty principal}">
						  	<button class="btn-zzim" name="login_need"></button>
						  </c:when>
						  <c:otherwise>
							<button class="btn-zzim" name="btn-zzim"></button>
						  </c:otherwise>
						</c:choose>
					</li>
				</ul>
				</div>
				</div>
				</div>
			  </li>
			  <!-- 4 -->
			  <li class="item-d">
			  	<!-- box-slider -->
				<div class="box">
				<!-- img-box -->
				<div class="overlay">
					<div class="slide-img"><a><img></a></div>
				</div>
				<!-- detail-box -->
				<div class="detail-box">
				<!-- type -->
				<div class="type">
				<ul>
					<li class="prd-name">ETIAM ERAT VELT</li>
					<li class="sub-name">SCELERISQ</li>
					<li class="prd-info">UE IN DICTUM NON<br>
										 CONSECTETUR A EART.<br></li>
					<li class="detail-price">
						<del class="origin-price">69,000원 <br></del> 
						<strong class="current-price">39,000원 </strong>
					</li>
					<li class="discount-percent"> 42%  </li>
					<li class="zzim">
						<c:choose>
						  <c:when test="${empty principal}">
						  	<button class="btn-zzim" name="login_need"></button>
						  </c:when>
						  <c:otherwise>
							<button class="btn-zzim" name="btn-zzim"></button>
						  </c:otherwise>
						</c:choose>
					</li>
				</ul>
				</div>
				</div>
				</div>
			  </li>
			  <!-- 5 -->
			  <li class="item-e">
			  	<!-- box-slider -->
				<div class="box">
				<!-- img-box -->
				<div class="overlay">
					<div class="slide-img"><a><img></a></div>
				</div>
				<!-- detail-box -->
				<div class="detail-box">
				<!-- type -->
				<div class="type">
				<ul>
					<li class="prd-name">ETIAM ERAT VELT</li>
					<li class="sub-name">SCELERISQ</li>
					<li class="prd-info">UE IN DICTUM NON<br>
										 CONSECTETUR A EART.<br></li>
					<li class="detail-price">
						<del class="origin-price">69,000원 <br></del> 
						<strong class="current-price">39,000원 </strong>
					</li>
					<li class="discount-percent"> 42%  </li>
					<li class="zzim">
						<c:choose>
						 <c:when test="${empty principal}">
						  	<button class="btn-zzim" name="login_need"></button>
						  </c:when>
						  <c:otherwise>
							<button class="btn-zzim" name="btn-zzim"></button>
						  </c:otherwise>
						</c:choose>
					</li>
				</ul>
				</div>
				</div>
				</div>
			  </li>
			  <!-- 6 -->
			  <li class="item-f">
			  <!-- box-slider -->
				<div class="box">
				<!-- img-box -->
				<div class="overlay">
					<div class="slide-img"><a><img></a></div>
				</div>
				<!-- detail-box -->
				<div class="detail-box">
				<!-- type -->
				<div class="type">
				<ul>
					<li class="prd-name">ETIAM ERAT VELT</li>
					<li class="sub-name">SCELERISQ</li>
					<li class="prd-info">UE IN DICTUM NON<br>
										 CONSECTETUR A EART.<br></li>
					<li class="detail-price">
						<del class="origin-price">69,000원 <br></del> 
						<strong class="current-price">39,000원 </strong>
					</li>
					<li class="discount-percent"> 42%  </li>
					<li class="zzim">
						<c:choose>
						  <c:when test="${empty principal}">
						  	<button class="btn-zzim" name="login_need"></button>
						  </c:when>
						  <c:otherwise>
							<button class="btn-zzim" name="btn-zzim"></button>
						  </c:otherwise>
						</c:choose>
					</li>
					</ul>
				</div>
				</div>
				</div>
			  </li>
			</ul>
		</section>
	</div>		
	
	
	<!-- MD PICK -->
	
	<div class="md-pick-area">
		<!-- title -->
		<div class="md-pick">
			MD PICK
		</div>
		<div class="md-pick-card-box-frame">
		<ul>
			<li>
				<!-- 1 -->
				<!-- md pick card box -->
				<div class="md-pick-card_box">
					<!-- md pick card thumb -->
					<div class="md-pcik-card"></div>
					<!-- card detail -->
					<div class="md-pick-card-detail">
					<p>
						POSURE <br>
						UT SEM NULLA PHARETRA DIAM.<br>
						FAMES AC TURPIS EGESTAS<br>
						MAECENAS.<br>
						BIBENDUM NEQUE EGESTAS CONGUE<br>
						QUISQUE EGESTAS DIAM.<br>
						LAOREET ID DONEC ULTRICES<br>
						TINCIDUNT<br>
						ARCU NON SODALES<br>
					</p>
					</div>
				</div>
			</li>
		</ul>
		<ul>
			<li>
				<!-- 2 -->
				<!-- md pick card box -->
				<div class="md-pick-card_box">
					<!-- md pick card thumb -->
					<div class="md-pcik-card"></div>
					<!-- card detail -->
					<div class="md-pick-card-detail">
					<p>
						POSURE <br>
						UT SEM NULLA PHARETRA DIAM.<br>
						FAMES AC TURPIS EGESTAS<br>
						MAECENAS.<br>
						BIBENDUM NEQUE EGESTAS CONGUE<br>
						QUISQUE EGESTAS DIAM.<br>
						LAOREET ID DONEC ULTRICES<br>
						TINCIDUNT<br>
						ARCU NON SODALES<br>
					</p>
					</div>
				</div>
			</li>
			</ul>
		<!-- 3 -->
		<ul>
			<li>
				<!-- 1 -->
				<!-- md pick card box -->
				<div class="md-pick-card_box">
					<!-- md pick card thumb -->
					<div class="md-pcik-card"></div>
					<!-- card detail -->
					<div class="md-pick-card-detail">
					<p>
						POSURE <br>
						UT SEM NULLA PHARETRA DIAM.<br>
						FAMES AC TURPIS EGESTAS<br>
						MAECENAS.<br>
						BIBENDUM NEQUE EGESTAS CONGUE<br>
						QUISQUE EGESTAS DIAM.<br>
						LAOREET ID DONEC ULTRICES<br>
						TINCIDUNT<br>
						ARCU NON SODALES<br>
					</p>
					</div>
				</div>
			</li>
		</ul>
		<!-- 4 -->
		<ul>
				<li>
					<!-- 1 -->
					<!-- md pick card box -->
					<div class="md-pick-card_box">
						<!-- md pick card thumb -->
						<div class="md-pcik-card"></div>
						<!-- card detail -->
						<div class="md-pick-card-detail">
						<p>
							POSURE <br>
							UT SEM NULLA PHARETRA DIAM.<br>
							FAMES AC TURPIS EGESTAS<br>
							MAECENAS.<br>
							BIBENDUM NEQUE EGESTAS CONGUE<br>
							QUISQUE EGESTAS DIAM.<br>
							LAOREET ID DONEC ULTRICES<br>
							TINCIDUNT<br>
							ARCU NON SODALES<br>
						</p>
						</div>
					</div>
				</li>
			</ul>

		</div>
		
	</div>
	
	<div class="md-pick-area">
		<!-- title -->
		<div class="md-pick">
			MD PICK
		</div>
		<div class="md-pick-card-box-frame">
		<ul>
			<li>
				<!-- 1 -->
				<!-- md pick card box -->
				<div class="md-pick-card_box">
					<!-- md pick card thumb -->
					<div class="md-pcik-card"></div>
					<!-- card detail -->
					<div class="md-pick-card-detail">
					<p>
						POSURE <br>
						UT SEM NULLA PHARETRA DIAM.<br>
						FAMES AC TURPIS EGESTAS<br>
						MAECENAS.<br>
						BIBENDUM NEQUE EGESTAS CONGUE<br>
						QUISQUE EGESTAS DIAM.<br>
						LAOREET ID DONEC ULTRICES<br>
						TINCIDUNT<br>
						ARCU NON SODALES<br>
					</p>
					</div>
				</div>
			</li>
		</ul>
		<ul>
			<li>
				<!-- 2 -->
				<!-- md pick card box -->
				<div class="md-pick-card_box">
					<!-- md pick card thumb -->
					<div class="md-pcik-card"></div>
					<!-- card detail -->
					<div class="md-pick-card-detail">
					<p>
						POSURE <br>
						UT SEM NULLA PHARETRA DIAM.<br>
						FAMES AC TURPIS EGESTAS<br>
						MAECENAS.<br>
						BIBENDUM NEQUE EGESTAS CONGUE<br>
						QUISQUE EGESTAS DIAM.<br>
						LAOREET ID DONEC ULTRICES<br>
						TINCIDUNT<br>
						ARCU NON SODALES<br>
					</p>
					</div>
				</div>
			</li>
			</ul>
		<!-- 3 -->
		<ul>
			<li>
				<!-- 1 -->
				<!-- md pick card box -->
				<div class="md-pick-card_box">
					<!-- md pick card thumb -->
					<div class="md-pcik-card"></div>
					<!-- card detail -->
					<div class="md-pick-card-detail">
					<p>
						POSURE <br>
						UT SEM NULLA PHARETRA DIAM.<br>
						FAMES AC TURPIS EGESTAS<br>
						MAECENAS.<br>
						BIBENDUM NEQUE EGESTAS CONGUE<br>
						QUISQUE EGESTAS DIAM.<br>
						LAOREET ID DONEC ULTRICES<br>
						TINCIDUNT<br>
						ARCU NON SODALES<br>
					</p>
					</div>
				</div>
			</li>
		</ul>
		<!-- 4 -->
		<ul>
				<li>
					<!-- 1 -->
					<!-- md pick card box -->
					<div class="md-pick-card_box">
						<!-- md pick card thumb -->
						<div class="md-pcik-card"></div>
						<!-- card detail -->
						<div class="md-pick-card-detail">
						<p>
							POSURE <br>
							UT SEM NULLA PHARETRA DIAM.<br>
							FAMES AC TURPIS EGESTAS<br>
							MAECENAS.<br>
							BIBENDUM NEQUE EGESTAS CONGUE<br>
							QUISQUE EGESTAS DIAM.<br>
							LAOREET ID DONEC ULTRICES<br>
							TINCIDUNT<br>
							ARCU NON SODALES<br>
						</p>
						</div>
					</div>
				</li>
			</ul>

		</div>
	</div>
	
	<!-- NEW Itmes -->
	<!-- NEW items Slider -->
	 <div id="new_item_frame">
	 	<span style="font-size:32px">NEW</span>
	 	<div id="new_item_nav">
	 		<ul id="new_item_nav_menu">
					<li> <a href="#"> <span> NEW </span> </a>
					<li> <a href="#"> <span> NEW </span> </a>
					<li> <a href="#"> <span> NEW </span> </a>
					<li> <a href="#"> <span> NEW </span> </a>
					<li> <a href="#"> <span> NEW </span> </a>
					<li> <a href="#"> <span> NEW </span> </a>
					<li> <a href="#"> <span> NEW </span> </a>
			</ul>
		</div>
	</div>
	<!-- NEW Items sub menu -->
	<div id="new-item-sub-frame">
		<div id="new-item-sub-nav"> NEW 서브 메뉴 </div>
	</div>
	
	<div class="slider_frame">
		<section class="slider">
		<ul id="new-items-slider" class="cs-hidden">
			  <!-- 1 -->
			  <li class="item-a">
			  	<!-- box-slider -->
				<div class="box">
				<!-- img-box -->
				<div class="overlay">
					<div class="slide-img"><a><img></a></div>
				</div>
				<!-- detail-box -->
				<div class="detail-box">
				<!-- type -->
				<div class="type">
				<ul>
					<li class="prd-name">ETIAM ERAT VELT</li>
					<li class="sub-name">SCELERISQ</li>
					<li class="prd-info">UE IN DICTUM NON<br>
										 CONSECTETUR A EART.<br></li>
					<li class="detail-price">
						<del class="origin-price">69,000원 <br></del> 
						<strong class="current-price">39,000원 </strong>
					</li>
					<li class="discount-percent"> 42%  </li>
					<li class="zzim">
						<c:choose>
						  <c:when test="${empty principal}">
						  	<button class="btn-zzim" name="login_need"></button>
						  </c:when>
						  <c:otherwise>
							<button class="btn-zzim" name="btn-zzim"></button>
						  </c:otherwise>
						</c:choose>
					</li>
				</ul>
				</div>
				</div>
				</div>
			  </li>
			  <!-- 2 -->
			  <li class="item-b">
			  	<!-- box-slider -->
				<div class="box">
				<!-- img-box -->
				<div class="overlay">
					<div class="slide-img"><a><img></a></div>
				</div>
				<!-- detail-box -->
				<div class="detail-box">
				<!-- type -->
				<div class="type">
				<ul>
					<li class="prd-name">ETIAM ERAT VELT</li>
					<li class="sub-name">SCELERISQ</li>
					<li class="prd-info">UE IN DICTUM NON<br>
										 CONSECTETUR A EART.<br></li>
					<li class="detail-price">
						<del class="origin-price">69,000원 <br></del> 
						<strong class="current-price">39,000원 </strong>
					</li>
					<li class="discount-percent"> 42%  </li>
					<li class="zzim">
						<c:choose>
						  <c:when test="${empty principal}">
						  	<button class="btn-zzim" name="login_need"></button>
						  </c:when>
						  <c:otherwise>
							<button class="btn-zzim" name="btn-zzim"></button>
						  </c:otherwise>
						</c:choose>
					</li>
				</ul>
				</div>
				</div>
				</div>
			  </li>
			  <!-- 3 -->
			  <li class="item-c">
			  	<!-- box-slider -->
				<div class="box">
				<!-- img-box -->
				<div class="overlay">
					<div class="slide-img"><a><img></a></div>
				</div>
				<!-- detail-box -->
				<div class="detail-box">
				<!-- type -->
				<div class="type">
				<ul>
					<li class="prd-name">ETIAM ERAT VELT</li>
					<li class="sub-name">SCELERISQ</li>
					<li class="prd-info">UE IN DICTUM NON<br>
										 CONSECTETUR A EART.<br></li>
					<li class="detail-price">
						<del class="origin-price">69,000원 <br></del> 
						<strong class="current-price">39,000원 </strong>
					</li>
					<li class="discount-percent"> 42%  </li>
					<li class="zzim">
						<c:choose>
						  <c:when test="${empty principal}">
						  	<button class="btn-zzim" name="login_need"></button>
						  </c:when>
						  <c:otherwise>
							<button class="btn-zzim" name="btn-zzim"></button>
						  </c:otherwise>
						</c:choose>
					</li>
				</ul>
				</div>
				</div>
				</div>
			  </li>
			  <!-- 4 -->
			  <li class="item-d">
			  	<!-- box-slider -->
				<div class="box">
				<!-- img-box -->
				<div class="overlay">
					<div class="slide-img"><a><img></a></div>
				</div>
				<!-- detail-box -->
				<div class="detail-box">
				<!-- type -->
				<div class="type">
				<ul>
					<li class="prd-name">ETIAM ERAT VELT</li>
					<li class="sub-name">SCELERISQ</li>
					<li class="prd-info">UE IN DICTUM NON<br>
										 CONSECTETUR A EART.<br></li>
					<li class="detail-price">
						<del class="origin-price">69,000원 <br></del> 
						<strong class="current-price">39,000원 </strong>
					</li>
					<li class="discount-percent"> 42%  </li>
					<li class="zzim">
						<c:choose>
						  <c:when test="${empty principal}">
						  	<button class="btn-zzim" name="login_need"></button>
						  </c:when>
						  <c:otherwise>
							<button class="btn-zzim" name="btn-zzim"></button>
						  </c:otherwise>
						</c:choose>
					</li>
				</ul>
				</div>
				</div>
				</div>
			  </li>
			  <!-- 5 -->
			  <li class="item-e">
			  	<!-- box-slider -->
				<div class="box">
				<!-- img-box -->
				<div class="overlay">
					<div class="slide-img"><a><img></a></div>
				</div>
				<!-- detail-box -->
				<div class="detail-box">
				<!-- type -->
				<div class="type">
				<ul>
					<li class="prd-name">ETIAM ERAT VELT</li>
					<li class="sub-name">SCELERISQ</li>
					<li class="prd-info">UE IN DICTUM NON<br>
										 CONSECTETUR A EART.<br></li>
					<li class="detail-price">
						<del class="origin-price">69,000원 <br></del> 
						<strong class="current-price">39,000원 </strong>
					</li>
					<li class="discount-percent"> 42%  </li>
					<li class="zzim">
						<c:choose>
						  <c:when test="${empty principal}">
						  	<button class="btn-zzim" name="login_need"></button>
						  </c:when>
						  <c:otherwise>
							<button class="btn-zzim" name="btn-zzim"></button>
						  </c:otherwise>
						</c:choose>
					</li>
				</ul>
				</div>
				</div>
				</div>
			  </li>
			  <!-- 6 -->
			  <li class="item-f">
			  	<!-- box-slider -->
				<div class="box">
				<!-- img-box -->
				<div class="overlay">
					<div class="slide-img"><a><img></a></div>
				</div>
				<!-- detail-box -->
				<div class="detail-box">
				<!-- type -->
				<div class="type">
				<ul>
					<li class="prd-name">ETIAM ERAT VELT</li>
					<li class="sub-name">SCELERISQ</li>
					<li class="prd-info">UE IN DICTUM NON<br>
										 CONSECTETUR A EART.<br></li>
					<li class="detail-price">
						<del class="origin-price">69,000원 <br></del> 
						<strong class="current-price">39,000원 </strong>
					</li>
					<li class="discount-percent"> 42%  </li>
					<li class="zzim">
						<c:choose>
						 <c:when test="${empty principal}">
						  	<button class="btn-zzim" name="login_need"></button>
						  </c:when>
						  <c:otherwise>
							<button class="btn-zzim" name="btn-zzim"></button>
						  </c:otherwise>
						</c:choose>
					</li>
				</ul>
				</div>
				</div>
				</div>
			  </li>
			</ul>
		</section>
	</div>

<%-- <%@ include file="layout/side_bar.jsp" %> --%>
<%@ include file="layout/footer.jsp" %>
<script type="text/javascript" src="/js/swiper.js"></script>
</body>
<!-- script-link -->
<script type="text/javascript" src="/js/script.js"></script>

</html>