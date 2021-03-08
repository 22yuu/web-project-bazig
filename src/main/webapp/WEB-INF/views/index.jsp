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
<%-- <%
     try {
        int checkPermit = (int)pageContext.getSession().getAttribute("permit");
        if (checkPermit != 1)
        {
           response.sendRedirect("testLogin.jsp");
        }
     } catch (Exception e) {
        response.sendRedirect("testLogin.jsp");
     } finally {
        
     }
  %> --%>
	<!-- Main banner, Sub banner -->
	<div id="main_banner_frame">
		<div class="inner_main_div">
			이벤트/기획전 배너
		</div>
	
		<div class="inner_sub_div">
			인스타 연동 배너
		</div>
		<div id="bullets"></div>
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
	<!-- Best items Slider -->
	 <div id="new_item_frame">
	 	<span style="font-size:32px">NEW</span>
	 	<div class="new_item_nav">
	 		<ul class="new_item_nav_menu">
					<li id="best_item_nav_1" class="swiper-slide-active"> <a href="#"> <span> NEW </span> </a>
					<li id="best_item_nav_2" class="swiper-slide-active"> <a href="#"> <span> NEW </span> </a>
					<li id="best_item_nav_3" class="swiper-slide-active"> <a href="#"> <span> NEW </span> </a>
					<li id="best_item_nav_4" class="swiper-slide-active"> <a href="#"> <span> NEW </span> </a>
					<li id="best_item_nav_5" class="swiper-slide-active"> <a href="#"> <span> NEW </span> </a>
					<li id="best_item_nav_6" class="swiper-slide-active"> <a href="#"> <span> NEW </span> </a>
					<li id="best_item_nav_7" class="swiper-slide-active"> <a href="#"> <span> NEW </span> </a>
			</ul>
		</div>
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
			  </li>
			</ul>
		</section>
	</div>
	

<%@ include file="layout/side_bar.jsp" %>
<%@ include file="layout/footer.jsp" %>
</body>
<!-- script-link -->
<script type="text/javascript" src="/js/script.js"></script>
</html>