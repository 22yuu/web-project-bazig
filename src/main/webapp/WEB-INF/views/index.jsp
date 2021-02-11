<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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

<!-- js -->
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/lightslider.js"></script>

<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</head>
<body>
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
				
				<div class="upper-menu-area">
					<a href="#" target="_blank">베이직소개</a> |
					<a href="#" target="_blank">입점문의</a> |
					<a href="#">장바구니</a> |
					<a href="#">마이페이지</a> |
					<a href="#">로그인</a> |
				</div>
			</div>
		</div>
		
		<!-- nav -->
		<div id="nav">
			<div class="frame">
				<div class="swiper-container">
					<ul class="swiper-container-wrapper">
						<li id="nav_home" class="swiper-slide-active"> <a href="/"> <span> 홈 </span> </a>
						<li id="nav_brand" class="swiper-slide-active"> <a href="#"> <span> 브랜드 </span> </a>
						<li id="nav_shoppingMall" class="swiper-slide-active"> <a href="#"> <span> 쇼핑몰 </span> </a>
						<li id="nav_life" class="swiper-slide-active"> <a href="#"> <span> 라이프 </span> </a>
						<li id="nav_highend" class="swiper-slide-active"> <a href="#"> <span> 하이엔드 </span> </a>
						<li id="nav_exhibitions" class="swiper-slide-active"> <a href="#"> <span> 기획전 </span> </a>
						<li id="nav_store" class="swiper-slide-active"> <a href="#"> <span> 스토어 </span> </a>
					</ul>
				</div>
			</div>
		</div>
		<!--  end navigation -->
	<!-- end header -->
	
	<!-- Main banner, Sub banner -->
	<div id="main_banner_frame">
		<div id="inner_main_div">
			이벤트/기획전 배너
		</div>
		
		<div id="inner_sub_div">
			인스타 연동 배너
		</div>
		<div id="bullets"></div>
	</div>

	<!-- Best items Slider -->
	 <div id="best_item_frame">
	 	<span style="font-size:32px">BEST</span>
	 	<div class="best_item_nav">
	 		<ul class="best_item_nav_menu">
					<li id="best_item_nav" class="swiper-slide-active"> <a href="#"> <span> BAZIG1 </span> </a>
					<li id="best_item_nav" class="swiper-slide-active"> <a href="#"> <span> BAZIG2 </span> </a>
					<li id="best_item_nav" class="swiper-slide-active"> <a href="#"> <span> BAZIG3 </span> </a>
					<li id="best_item_nav" class="swiper-slide-active"> <a href="#"> <span> BAZIG4 </span> </a>
					<li id="best_item_nav" class="swiper-slide-active"> <a href="#"> <span> BAZIG5 </span> </a>
					<li id="best_item_nav" class="swiper-slide-active"> <a href="#"> <span> BAZIG6 </span> </a>
					<li id="best_item_nav" class="swiper-slide-active"> <a href="#"> <span> BAZIG7 </span> </a>
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
				<div class="slide-img">
				<img src="images/best_item/1.jpg" alt="1">
				<!-- overlayer -->
				<div class="overlay">
				<!-- -buy-btn -->
				<a href="#" class="buy-btn">Buy Now</a>
				</div>
				</div>
				<!-- detail-box -->
				<div class="detail-box">
				<!-- type -->
				<div class="type">
				<a href="#">
						ETIAM ERAT VELT <br>
						<span>
							SCELERISQ<br>
							UE IN DICTUM NON<br>
							CONSECTETUR A EART.<br>
						<span>
						<div class="detail-price">
							<del class="origin-price">69,000원 <br></del> 
							<strong class="current-price">39,000원</strong>
						</div>
						<div class="discount-percent"> 42% </div>
					</a>
				</div>
				</div>
			  </li>
			  <!-- 2 -->
			  <li class="item-b">
			  	<!-- box-slider -->
				<div class="box">
				<!-- img-box -->
				<div class="slide-img">
				<img src="images/best_item/2.jpg" alt="2">
				<!-- overlayer -->
				<div class="overlay">
				<!-- -buy-btn -->
				<a href="#" class="buy-btn">Buy Now</a>
				</div>
				</div>
				<!-- detail-box -->
				<div class="detail-box">
				<!-- type -->
				<div class="type">
				<a href="#">
						ETIAM ERAT VELT <br>
						<span>
							SCELERISQ<br>
							UE IN DICTUM NON<br>
							CONSECTETUR A EART.<br>
						<span>
						<div class="detail-price">
							<del class="origin-price">69,000원 <br></del> 
							<strong class="current-price">39,000원</strong>
						</div>
						<div class="discount-percent"> 42% </div>
					</a>
				</div>
				</div>
			  </li>
			  <!-- 3 -->
			  <li class="item-c">
			  	<!-- box-slider -->
				<div class="box">
				<!-- img-box -->
				<div class="slide-img">
				<img src="images/best_item/3.jpg" alt="3">
				<!-- overlayer -->
				<div class="overlay">
				<!-- -buy-btn -->
				<a href="#" class="buy-btn">Buy Now</a>
				</div>
				</div>
				<!-- detail-box -->
				<div class="detail-box">
				<!-- type -->
				<div class="type">
				<a href="#">
						ETIAM ERAT VELT <br>
						<span>
							SCELERISQ<br>
							UE IN DICTUM NON<br>
							CONSECTETUR A EART.<br>
						<span>
						<div class="detail-price">
							<del class="origin-price">69,000원 <br></del> 
							<strong class="current-price">39,000원</strong>
						</div>
						<div class="discount-percent"> 42% </div>
					</a>
				</div>
				</div>
			  </li>
			  <!-- 4 -->
			  <li class="item-d">
			  	<!-- box-slider -->
				<div class="box">
				<!-- img-box -->
				<div class="slide-img">
				<img src="images/best_item/4.jpg" alt="4">
				<!-- overlayer -->
				<div class="overlay">
				<!-- -buy-btn -->
				<a href="#" class="buy-btn">Buy Now</a>
				</div>
				</div>
				<!-- detail-box -->
				<div class="detail-box">
				<!-- type -->
				<div class="type">
				<a href="#">
						ETIAM ERAT VELT <br>
						<span>
							SCELERISQ<br>
							UE IN DICTUM NON<br>
							CONSECTETUR A EART.<br>
						<span>
						<div class="detail-price">
							<del class="origin-price">69,000원 <br></del> 
							<strong class="current-price">39,000원</strong>
						</div>
						<div class="discount-percent"> 42% </div>
					</a>
				</div>
				</div>
			  </li>
			  <!-- 5 -->
			  <li class="item-e">
			  	<!-- box-slider -->
				<div class="box">
				<!-- img-box -->
				<div class="slide-img">
				<img src="images/best_item/5.jpg" alt="5">
				<!-- overlayer -->
				<div class="overlay">
				<!-- -buy-btn -->
				<a href="#" class="buy-btn">Buy Now</a>
				</div>
				</div>
				<!-- detail-box -->
				<div class="detail-box">
				<!-- type -->
				<div class="type">
				<a href="#">
						ETIAM ERAT VELT <br>
						<span>
							SCELERISQ<br>
							UE IN DICTUM NON<br>
							CONSECTETUR A EART.<br>
						<span>
						<div class="detail-price">
							<del class="origin-price">69,000원 <br></del> 
							<strong class="current-price">39,000원</strong>
						</div>
						<div class="discount-percent"> 42% </div>
					</a>
				</div>
				</div>
			  </li>
			  <!-- 6 -->
			  <li class="item-f">
			  	<!-- box-slider -->
				<div class="box">
				<!-- img-box -->
				<div class="slide-img">
				<img src="images/best_item/6.jpg" alt="6">
				<!-- overlayer -->
				<div class="overlay">
				<!-- -buy-btn -->
				<a href="#" class="buy-btn">Buy Now</a>
				</div>
				</div>
				<!-- detail-box -->
				<div class="detail-box">
				<!-- type -->
				<div class="type">
				<a href="#">
						ETIAM ERAT VELT <br>
						<span>
							SCELERISQ<br>
							UE IN DICTUM NON<br>
							CONSECTETUR A EART.<br>
						<span>
						<div class="detail-price">
							<del class="origin-price">69,000원 <br></del> 
							<strong class="current-price">39,000원</strong>
						</div>
						<div class="discount-percent"> 42% </div>
					</a>
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
				<div class="slide-img">
				<img src="images/best_item/1.jpg" alt="1">
				<!-- overlayer -->
				<div class="overlay">
				<!-- -buy-btn -->
				<a href="#" class="buy-btn">Buy Now</a>
				</div>
				</div>
				<!-- detail-box -->
				<div class="detail-box">
				<!-- type -->
				<div class="type">
				<a href="#">
						ETIAM ERAT VELT <br>
						<span>
							SCELERISQ<br>
							UE IN DICTUM NON<br>
							CONSECTETUR A EART.<br>
						<span>
						<div class="detail-price">
							<del class="origin-price">69,000원 <br></del> 
							<strong class="current-price">39,000원</strong>
						</div>
						<div class="discount-percent"> 42% </div>
					</a>
				</div>
				</div>
			  </li>
			  <!-- 2 -->
			  <li class="item-b">
			  	<!-- box-slider -->
				<div class="box">
				<!-- img-box -->
				<div class="slide-img">
				<img src="images/best_item/2.jpg" alt="2">
				<!-- overlayer -->
				<div class="overlay">
				<!-- -buy-btn -->
				<a href="#" class="buy-btn">Buy Now</a>
				</div>
				</div>
				<!-- detail-box -->
				<div class="detail-box">
				<!-- type -->
				<div class="type">
				<a href="#">
						ETIAM ERAT VELT <br>
						<span>
							SCELERISQ<br>
							UE IN DICTUM NON<br>
							CONSECTETUR A EART.<br>
						<span>
						<div class="detail-price">
							<del class="origin-price">69,000원 <br></del> 
							<strong class="current-price">39,000원</strong>
						</div>
						<div class="discount-percent"> 42% </div>
					</a>
				</div>
				</div>
			  </li>
			  <!-- 3 -->
			  <li class="item-c">
			  	<!-- box-slider -->
				<div class="box">
				<!-- img-box -->
				<div class="slide-img">
				<img src="images/best_item/3.jpg" alt="3">
				<!-- overlayer -->
				<div class="overlay">
				<!-- -buy-btn -->
				<a href="#" class="buy-btn">Buy Now</a>
				</div>
				</div>
				<!-- detail-box -->
				<div class="detail-box">
				<!-- type -->
				<div class="type">
				<a href="#">
						ETIAM ERAT VELT <br>
						<span>
							SCELERISQ<br>
							UE IN DICTUM NON<br>
							CONSECTETUR A EART.<br>
						<span>
						<div class="detail-price">
							<del class="origin-price">69,000원 <br></del> 
							<strong class="current-price">39,000원</strong>
						</div>
						<div class="discount-percent"> 42% </div>
					</a>
				</div>
				</div>
			  </li>
			  <!-- 4 -->
			  <li class="item-d">
			  	<!-- box-slider -->
				<div class="box">
				<!-- img-box -->
				<div class="slide-img">
				<img src="images/best_item/4.jpg" alt="4">
				<!-- overlayer -->
				<div class="overlay">
				<!-- -buy-btn -->
				<a href="#" class="buy-btn">Buy Now</a>
				</div>
				</div>
				<!-- detail-box -->
				<div class="detail-box">
				<!-- type -->
				<div class="type">
				<a href="#">
						ETIAM ERAT VELT <br>
						<span>
							SCELERISQ<br>
							UE IN DICTUM NON<br>
							CONSECTETUR A EART.<br>
						<span>
						<div class="detail-price">
							<del class="origin-price">69,000원 <br></del> 
							<strong class="current-price">39,000원</strong>
						</div>
						<div class="discount-percent"> 42% </div>
					</a>
				</div>
				</div>
			  </li>
			  <!-- 5 -->
			  <li class="item-e">
			  	<!-- box-slider -->
				<div class="box">
				<!-- img-box -->
				<div class="slide-img">
				<img src="images/best_item/5.jpg" alt="5">
				<!-- overlayer -->
				<div class="overlay">
				<!-- -buy-btn -->
				<a href="#" class="buy-btn">Buy Now</a>
				</div>
				</div>
				<!-- detail-box -->
				<div class="detail-box">
				<!-- type -->
				<div class="type">
				<a href="#">
						ETIAM ERAT VELT <br>
						<span>
							SCELERISQ<br>
							UE IN DICTUM NON<br>
							CONSECTETUR A EART.<br>
						<span>
						<div class="detail-price">
							<del class="origin-price">69,000원 <br></del> 
							<strong class="current-price">39,000원</strong>
						</div>
						<div class="discount-percent"> 42% </div>
					</a>
				</div>
				</div>
			  </li>
			  <!-- 6 -->
			  <li class="item-f">
			  	<!-- box-slider -->
				<div class="box">
				<!-- img-box -->
				<div class="slide-img">
				<img src="images/best_item/6.jpg" alt="6">
				<!-- overlayer -->
				<div class="overlay">
				<!-- -buy-btn -->
				<a href="#" class="buy-btn">Buy Now</a>
				</div>
				</div>
				<!-- detail-box -->
				<div class="detail-box">
				<!-- type -->
				<div class="type">
				<a href="#">
						ETIAM ERAT VELT <br>
						<span>
							SCELERISQ<br>
							UE IN DICTUM NON<br>
							CONSECTETUR A EART.<br>
						<span>
						<div class="detail-price">
							<del class="origin-price">69,000원 <br></del> 
							<strong class="current-price">39,000원</strong>
						</div>
						<div class="discount-percent"> 42% </div>
					</a>
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
				<div class="slide-img">
				<img src="images/best_item/1.jpg" alt="1">
				<!-- overlayer -->
				<div class="overlay">
				<!-- -buy-btn -->
				<a href="#" class="buy-btn">Buy Now</a>
				</div>
				</div>
				<!-- detail-box -->
				<div class="detail-box">
				<!-- type -->
				<div class="type">
				<a href="#">
						ETIAM ERAT VELT <br>
						<span>
							SCELERISQ<br>
							UE IN DICTUM NON<br>
							CONSECTETUR A EART.<br>
						<span>
						<div class="detail-price">
							<del class="origin-price">69,000원 <br></del> 
							<strong class="current-price">39,000원</strong>
						</div>
						<div class="discount-percent"> 42% </div>
					</a>
				</div>
				</div>
			  </li>
			  <!-- 2 -->
			  <li class="item-b">
			  	<!-- box-slider -->
				<div class="box">
				<!-- img-box -->
				<div class="slide-img">
				<img src="images/best_item/2.jpg" alt="2">
				<!-- overlayer -->
				<div class="overlay">
				<!-- -buy-btn -->
				<a href="#" class="buy-btn">Buy Now</a>
				</div>
				</div>
				<!-- detail-box -->
				<div class="detail-box">
				<!-- type -->
				<div class="type">
				<a href="#">
						ETIAM ERAT VELT <br>
						<span>
							SCELERISQ<br>
							UE IN DICTUM NON<br>
							CONSECTETUR A EART.<br>
						<span>
						<div class="detail-price">
							<del class="origin-price">69,000원 <br></del> 
							<strong class="current-price">39,000원</strong>
						</div>
						<div class="discount-percent"> 42% </div>
					</a>
				</div>
				</div>
			  </li>
			  <!-- 3 -->
			  <li class="item-c">
			  	<!-- box-slider -->
				<div class="box">
				<!-- img-box -->
				<div class="slide-img">
				<img src="images/best_item/3.jpg" alt="3">
				<!-- overlayer -->
				<div class="overlay">
				<!-- -buy-btn -->
				<a href="#" class="buy-btn">Buy Now</a>
				</div>
				</div>
				<!-- detail-box -->
				<div class="detail-box">
				<!-- type -->
				<div class="type">
				<a href="#">
						ETIAM ERAT VELT <br>
						<span>
							SCELERISQ<br>
							UE IN DICTUM NON<br>
							CONSECTETUR A EART.<br>
						<span>
						<div class="detail-price">
							<del class="origin-price">69,000원 <br></del> 
							<strong class="current-price">39,000원</strong>
						</div>
						<div class="discount-percent"> 42% </div>
					</a>
				</div>
				</div>
			  </li>
			  <!-- 4 -->
			  <li class="item-d">
			  	<!-- box-slider -->
				<div class="box">
				<!-- img-box -->
				<div class="slide-img">
				<img src="images/best_item/4.jpg" alt="4">
				<!-- overlayer -->
				<div class="overlay">
				<!-- -buy-btn -->
				<a href="#" class="buy-btn">Buy Now</a>
				</div>
				</div>
				<!-- detail-box -->
				<div class="detail-box">
				<!-- type -->
				<div class="type">
				<a href="#">
						ETIAM ERAT VELT <br>
						<span>
							SCELERISQ<br>
							UE IN DICTUM NON<br>
							CONSECTETUR A EART.<br>
						<span>
						<div class="detail-price">
							<del class="origin-price">69,000원 <br></del> 
							<strong class="current-price">39,000원</strong>
						</div>
						<div class="discount-percent"> 42% </div>
					</a>
				</div>
				</div>
			  </li>
			  <!-- 5 -->
			  <li class="item-e">
			  	<!-- box-slider -->
				<div class="box">
				<!-- img-box -->
				<div class="slide-img">
				<img src="images/best_item/5.jpg" alt="5">
				<!-- overlayer -->
				<div class="overlay">
				<!-- -buy-btn -->
				<a href="#" class="buy-btn">Buy Now</a>
				</div>
				</div>
				<!-- detail-box -->
				<div class="detail-box">
				<!-- type -->
				<div class="type">
				<a href="#">
						ETIAM ERAT VELT <br>
						<span>
							SCELERISQ<br>
							UE IN DICTUM NON<br>
							CONSECTETUR A EART.<br>
						<span>
						<div class="detail-price">
							<del class="origin-price">69,000원 <br></del> 
							<strong class="current-price">39,000원</strong>
						</div>
						<div class="discount-percent"> 42% </div>
					</a>
				</div>
				</div>
			  </li>
			  <!-- 6 -->
			  <li class="item-f">
			  	<!-- box-slider -->
				<div class="box">
				<!-- img-box -->
				<div class="slide-img">
				<img src="images/best_item/6.jpg" alt="6">
				<!-- overlayer -->
				<div class="overlay">
				<!-- -buy-btn -->
				<a href="#" class="buy-btn">Buy Now</a>
				</div>
				</div>
				<!-- detail-box -->
				<div class="detail-box">
				<!-- type -->
				<div class="type">
				<a href="#">
						ETIAM ERAT VELT <br>
						<span>
							SCELERISQ<br>
							UE IN DICTUM NON<br>
							CONSECTETUR A EART.<br>
						<span>
						<div class="detail-price">
							<del class="origin-price">69,000원 <br></del> 
							<strong class="current-price">39,000원</strong>
						</div>
						<div class="discount-percent"> 42% </div>
					</a>
				</div>
				</div>
			  </li>
			</ul>
		</section>
	</div>
	<!-- Footer -->
	<footer>
	<div id="footer">
		<div class="footer_sec_1">
			<span>BAZIG에서 판매하는 모든 브랜드 상품은 <b>정식제조, 정식 수입 절차를 통해 유통되는 100% 정품임</b>을 보증합니다.</span>
			<a href="#"> 입점문의 </a>
			<a href="#"> 이용약관 </a>
			<a href="#"> 개인정보처리방침 </a>
	
		
		</div>
		
		<div class="footer_sec_2">
				1544-8998<br>
				<span>평일 09 : 00 ~ 18 : 00 | 공휴일휴무</span>
				<a href="https://m.facebook.com/BAZIG-111005253850108/" target="_blank"> <img src="/images/facebook_logo.png"></a>
				<a href="https://www.instagram.com/bazig_official/" target="_blank"> <img src="/images/instagram_logo.png"></a>
			
			<div class="footer_sec_3">
				<p>
				OMPANY. (주)트렉시 OWNER. 강부석 TEL. 070-883-1201 PRIVACY MANAGER. 박현진(HYUNJIN@TREXI.CO.KR) <br>
				ADDRESS. 04083 서울특별시 마포구 성지길 45 (합정동) 2층 <br>
				BUSINESS LICENSE. 12-886-40473 [사업자정보확인] MALL ORDER LICENSE. 2018-서울마포-2209호 <br>
				COPYRIGHTⓒ(주)트렉시 ALL RIGHTS RESERVED.
				</p>
			</div>
		</div>
	</div>
	</footer>
	
	
	
	</div>
	
<!-- script-link -->
<script type="text/javascript" src="js/script.js"></script>
</body>
</html>