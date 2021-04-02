<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="layout/header.jsp" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<link rel="stylesheet" type="text/css" href="/css/loginForm.css">

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
			});
		return false;
		});
	var scrollHeight = $(document).height();
	$('#bottom_btn').click(function() {
		$('html').animate({
			scrollTop: scrollHeight
			});
		return false;
		});

	 $('#top_btn').mouseenter(function(event) {
		 $('.side_content').css("display","none");
	    });
	 $('#bottom_btn').mouseenter(function(event) {
		 $('.side_content').css("display","none");
	    });
	$('.wrapper').mouseleave(function(event) {
        $('.side_content').css("display","none");
    });
	
    $('#side-cart').mouseenter(function(event) {
    	$('.side_content h4').remove();
        $('.side_content').css("display","block");
        $('.side_content').append("<h4 id='title'>장바구니<span class='cnt'></span></h4>");
    });
    $('.side_content').mouseleave(function(event) {
        $('.side_content').css("display","none");
        $('.side_content h4').remove();
    });

    
    $('#side-zzim').mouseenter(function(event) {
    	$('.side_content h4').remove();
        $('.side_content').css("display","block");
        $('.side_content').append("<h4 id='title'>찜 목록<span class='cnt'></span></h4>");
    });
    $('.side_content').mouseleave(function(event) {
        $('.side_content').css("display","none");
        $('.side_content h4').remove();
    });

    
    $('#side-recent-view').mouseenter(function(event) {
    	$('.side_content h4').remove();
        $('.side_content').css("display","block");
        $('.side_content').append("<h4 id='title'>최근 본 상품<span class='cnt'></span></h4>");
    });
    $('.side_content').mouseleave(function(event) {
        $('.side_content').css("display","none");
        $('.side_content h4').remove();
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
                <div id="top_btn">
                    <a class="go-top-btn"></a>
                </div>
                <div id="bottom_btn">
                    <a  class="go-bottom-btn"></a>
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
		    <div class="swiper-slide"><a><img src="images/index/mainimg-1.jpg"></a></div>
		    <div class="swiper-slide"><a><img>Image 2</a></div>
		    <div class="swiper-slide"><a><img>Image 3</a></div>
   		    <div class="swiper-slide"><a><img>Image 4</a></div>
		    <div class="swiper-slide"><a><img>Image 5</a></div>
		    <!-- <div class="swiper-slide"><a><img>Image 6</a></div> -->
		  </div>
		  <!-- If we need pagination -->
		  <div class="swiper-pagination"></div>
		</div>
		
	  <div id="sub_banner">
			<div class="sub_banner_container">
				<a><img src="images/index/mainimg-2.jpg"></a>
			</div>
	  </div>
	</div>

	    <div id="contents-wrapper">
       <!-- Weekly Best -->
        <div id="weekly-best-wrapper">
            <div class="contents-title">
                <span class="category-title">WEEKLY BEST</span><br>
                <span class="category-sub-title">한 주의 실시간 판매 베스트 상품입니다.</span>

                <div class="category-menu">
                    <ul>
                        <li>전체</li>
                        <li>상의</li>
                        <li>하의</li>
                        <li>세트</li>
                        <li>신발</li>
                        <li>액세사리</li>
                    </ul>
                </div>
            </div>

            <div class="slider-frame">
                <section class="slider">
            <ul id="autoWidth" class="cs-hidden">
              <!-- 1 -->
              <li class="item-a">
                    <!-- box-slider -->
                    <div class="box">
                        <!-- img-box -->
                        <div class="overlay">
                            <div class="slide-img"><a><img src="images/index/mainimg-12.jpg"></a></div>
                        </div>
                        <!-- detail-box -->
                        <div class="detail-box">
                        <!-- type -->
                            <div class="type">
                                <span class="brand-name">NIKE <div class="zzim"><button class="btn-zzim" name="btn-zzim"></div></span>
                                <a href="#" class="prd-name">ENIMM PRAESENT ELEMENTUM</a>
                                <div class="prd-price">
                                    <del class="origin-price">69,000원</del>
                                    <strong class="current-price">39,000원 </strong>
                                    <div class="discount-percent">42%</div>
                                </div>
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
                            <div class="slide-img"><a><img src="images/index/mainimg-13.jpg"></a></div>
                        </div>
                        <!-- detail-box -->
                        <div class="detail-box">
                        <!-- type -->
                            <div class="type">
                                <span class="brand-name">NIKE <div class="zzim"><button class="btn-zzim" name="btn-zzim"></div></span>
                                <a href="#" class="prd-name">ENIMM PRAESENT ELEMENTUM</a>
                                <div class="prd-price">
                                    <del class="origin-price">69,000원</del>
                                    <strong class="current-price">39,000원 </strong>
                                    <div class="discount-percent">42%</div>
                                </div>
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
                            <div class="slide-img"><a><img src="images/index/mainimg-14.jpg"></a></div>
                        </div>
                        <!-- detail-box -->
                        <div class="detail-box">
                        <!-- type -->
                            <div class="type">
                                <span class="brand-name">NIKE <div class="zzim"><button class="btn-zzim" name="btn-zzim"></div></span>
                                <a href="#" class="prd-name">ENIMM PRAESENT ELEMENTUM</a>
                                <div class="prd-price">
                                    <del class="origin-price">69,000원</del>
                                    <strong class="current-price">39,000원 </strong>
                                    <div class="discount-percent">42%</div>
                                </div>
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
                        <div class="slide-img"><a><img src="images/index/mainimg-15.jpg"></a></div>
                    </div>
                    <!-- detail-box -->
                    <div class="detail-box">
                    <!-- type -->
                        <div class="type">
                            <span class="brand-name">NIKE <div class="zzim"><button class="btn-zzim" name="btn-zzim"></div></span>
                            <a href="#" class="prd-name">ENIMM PRAESENT ELEMENTUM</a>
                            <div class="prd-price">
                                <del class="origin-price">69,000원</del>
                                <strong class="current-price">39,000원 </strong>
                                <div class="discount-percent">42%</div>
                            </div>
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
                        <div class="slide-img"><a><img src=""></a></div>
                    </div>
                    <!-- detail-box -->
                    <div class="detail-box">
                    <!-- type -->
                        <div class="type">
                            <span class="brand-name">NIKE <div class="zzim"><button class="btn-zzim" name="btn-zzim"></div></span>
                            <a href="#" class="prd-name">ENIMM PRAESENT ELEMENTUM</a>
                            <div class="prd-price">
                                <del class="origin-price">69,000원</del>
                                <strong class="current-price">39,000원 </strong>
                                <div class="discount-percent">42%</div>
                            </div>
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
                        <div class="slide-img"><a><img src=""></a></div>
                    </div>
                    <!-- detail-box -->
                    <div class="detail-box">
                    <!-- type -->
                        <div class="type">
                            <span class="brand-name">NIKE <div class="zzim"><button class="btn-zzim" name="btn-zzim"></div></span>
                            <a href="#" class="prd-name">ENIMM PRAESENT ELEMENTUM</a>
                            <div class="prd-price">
                                <del class="origin-price">69,000원</del>
                                <strong class="current-price">39,000원 </strong>
                                <div class="discount-percent">42%</div>
                            </div>
                        </div>

                    </div>
                </div>
              </li>
              <!-- 7 -->
              <li class="item-g">
                  <!-- box-slider -->
                  <div class="box">
                    <!-- img-box -->
                    <div class="overlay">
                        <div class="slide-img"><a><img src=""></a></div>
                    </div>
                    <!-- detail-box -->
                    <div class="detail-box">
                    <!-- type -->
                        <div class="type">
                            <span class="brand-name">NIKE <div class="zzim"><button class="btn-zzim" name="btn-zzim"></div></span>
                            <a href="#" class="prd-name">ENIMM PRAESENT ELEMENTUM</a>
                            <div class="prd-price">
                                <del class="origin-price">69,000원</del>
                                <strong class="current-price">39,000원 </strong>
                                <div class="discount-percent">42%</div>
                            </div>
                        </div>

                    </div>
                </div>
              </li>
              
                    <!-- 8 -->
              <li class="item-h">
              <!-- box-slider -->
              <div class="box">
                <!-- img-box -->
                <div class="overlay">
                    <div class="slide-img"><a><img src=""></a></div>
                </div>
                <!-- detail-box -->
                <div class="detail-box">
                <!-- type -->
                    <div class="type">
                        <span class="brand-name">NIKE <div class="zzim"><button class="btn-zzim" name="btn-zzim"></div></span>
                        <a href="#" class="prd-name">ENIMM PRAESENT ELEMENTUM</a>
                        <div class="prd-price">
                            <del class="origin-price">69,000원</del>
                            <strong class="current-price">39,000원 </strong>
                            <div class="discount-percent">42%</div>
                        </div>
                    </div>

                </div>
            </div>
            </li>
            </ul>
            </section>
            </div>

            <div class="slider-frame">
                <section class="slider">
            <ul id="autoWidth2" class="cs-hidden">
              <!-- 1 -->
              <li class="item-a">
                    <!-- box-slider -->
                    <div class="box">
                        <!-- img-box -->
                        <div class="overlay">
                            <div class="slide-img"><a><img src="images/index/mainimg-12.jpg"></a></div>
                        </div>
                        <!-- detail-box -->
                        <div class="detail-box">
                        <!-- type -->
                            <div class="type">
                                <span class="brand-name">NIKE <div class="zzim"><button class="btn-zzim" name="btn-zzim"></div></span>
                                <a href="#" class="prd-name">ENIMM PRAESENT ELEMENTUM</a>
                                <div class="prd-price">
                                    <del class="origin-price">69,000원</del>
                                    <strong class="current-price">39,000원 </strong>
                                    <div class="discount-percent">42%</div>
                                </div>
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
                            <div class="slide-img"><a><img src="images/index/mainimg-13.jpg"></a></div>
                        </div>
                        <!-- detail-box -->
                        <div class="detail-box">
                        <!-- type -->
                            <div class="type">
                                <span class="brand-name">NIKE <div class="zzim"><button class="btn-zzim" name="btn-zzim"></div></span>
                                <a href="#" class="prd-name">ENIMM PRAESENT ELEMENTUM</a>
                                <div class="prd-price">
                                    <del class="origin-price">69,000원</del>
                                    <strong class="current-price">39,000원 </strong>
                                    <div class="discount-percent">42%</div>
                                </div>
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
                            <div class="slide-img"><a><img src="images/index/mainimg-14.jpg"></a></div>
                        </div>
                        <!-- detail-box -->
                        <div class="detail-box">
                        <!-- type -->
                            <div class="type">
                                <span class="brand-name">NIKE <div class="zzim"><button class="btn-zzim" name="btn-zzim"></div></span>
                                <a href="#" class="prd-name">ENIMM PRAESENT ELEMENTUM</a>
                                <div class="prd-price">
                                    <del class="origin-price">69,000원</del>
                                    <strong class="current-price">39,000원 </strong>
                                    <div class="discount-percent">42%</div>
                                </div>
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
                        <div class="slide-img"><a><img src="images/index/mainimg-15.jpg"></a></div>
                    </div>
                    <!-- detail-box -->
                    <div class="detail-box">
                    <!-- type -->
                        <div class="type">
                            <span class="brand-name">NIKE <div class="zzim"><button class="btn-zzim" name="btn-zzim"></div></span>
                            <a href="#" class="prd-name">ENIMM PRAESENT ELEMENTUM</a>
                            <div class="prd-price">
                                <del class="origin-price">69,000원</del>
                                <strong class="current-price">39,000원 </strong>
                                <div class="discount-percent">42%</div>
                            </div>
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
                        <div class="slide-img"><a><img src=""></a></div>
                    </div>
                    <!-- detail-box -->
                    <div class="detail-box">
                    <!-- type -->
                        <div class="type">
                            <span class="brand-name">NIKE <div class="zzim"><button class="btn-zzim" name="btn-zzim"></div></span>
                            <a href="#" class="prd-name">ENIMM PRAESENT ELEMENTUM</a>
                            <div class="prd-price">
                                <del class="origin-price">69,000원</del>
                                <strong class="current-price">39,000원 </strong>
                                <div class="discount-percent">42%</div>
                            </div>
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
                        <div class="slide-img"><a><img src=""></a></div>
                    </div>
                    <!-- detail-box -->
                    <div class="detail-box">
                    <!-- type -->
                        <div class="type">
                            <span class="brand-name">NIKE <div class="zzim"><button class="btn-zzim" name="btn-zzim"></div></span>
                            <a href="#" class="prd-name">ENIMM PRAESENT ELEMENTUM</a>
                            <div class="prd-price">
                                <del class="origin-price">69,000원</del>
                                <strong class="current-price">39,000원 </strong>
                                <div class="discount-percent">42%</div>
                            </div>
                        </div>

                    </div>
                </div>
              </li>
              <!-- 7 -->
              <li class="item-g">
                  <!-- box-slider -->
                  <div class="box">
                    <!-- img-box -->
                    <div class="overlay">
                        <div class="slide-img"><a><img src=""></a></div>
                    </div>
                    <!-- detail-box -->
                    <div class="detail-box">
                    <!-- type -->
                        <div class="type">
                            <span class="brand-name">NIKE <div class="zzim"><button class="btn-zzim" name="btn-zzim"></div></span>
                            <a href="#" class="prd-name">ENIMM PRAESENT ELEMENTUM</a>
                            <div class="prd-price">
                                <del class="origin-price">69,000원</del>
                                <strong class="current-price">39,000원 </strong>
                                <div class="discount-percent">42%</div>
                            </div>
                        </div>

                    </div>
                </div>
              </li>
              
                    <!-- 8 -->
              <li class="item-h">
              <!-- box-slider -->
              <div class="box">
                <!-- img-box -->
                <div class="overlay">
                    <div class="slide-img"><a><img src=""></a></div>
                </div>
                <!-- detail-box -->
                <div class="detail-box">
                <!-- type -->
                    <div class="type">
                        <span class="brand-name">NIKE <div class="zzim"><button class="btn-zzim" name="btn-zzim"></div></span>
                        <a href="#" class="prd-name">ENIMM PRAESENT ELEMENTUM</a>
                        <div class="prd-price">
                            <del class="origin-price">69,000원</del>
                            <strong class="current-price">39,000원 </strong>
                            <div class="discount-percent">42%</div>
                        </div>
                    </div>

                </div>
            </div>
            </li>
            </ul>
            </section>
            </div>
            
        </div><!-- end Weekly Best-->
        <!-- promotion -->
        <div id="promotion-wrapper">
            <div class="contents-title">
                <span class="category-title">PROMOTION</span><br>
                <span class="category-sub-title">프로모션 상품을 특별한 가격으로 만나보세요.</span>
            </div>

            <div class="promotion-contents">
                <div class="promotion-left"><img src="images/index/mainimg-3.jpg"></div>
                <div class="promotion-right"><img src="images/index/mainimg-4.jpg"></div>
            </div>
        </div> <!--end promotion -->
        

        <div id="new-arrival-wrapper">
            <div class="contents-title">
                <span class="category-title">NEW ARRIVAL</span><br>
                <span class="category-sub-title"> 한 주의 실시간 판매 베스트 상품입니다.</span>
                <div class="category-menu">
                    <ul>
                        <li>전체</li>
                        <li>상의</li>
                        <li>하의</li>
                        <li>세트</li>
                        <li>신발</li>
                        <li>액세사리</li>
                    </ul>
                </div>
            </div>


        </div>
        <div class="slider-frame">
            <section class="slider">
        <ul id="new-arrival-slider" class="cs-hidden">
          <!-- 1 -->
          <li class="item-a">
                <!-- box-slider -->
                <div class="box">
                    <!-- img-box -->
                    <div class="overlay">
                        <div class="slide-img"><a><img src="images/index/mainimg-12.jpg"></a></div>
                    </div>
                    <!-- detail-box -->
                    <div class="detail-box">
                    <!-- type -->
                        <div class="type">
                            <span class="brand-name">NIKE <div class="zzim"><button class="btn-zzim" name="btn-zzim"></div></span>
                            <a href="#" class="prd-name">ENIMM PRAESENT ELEMENTUM</a>
                            <div class="prd-price">
                                <del class="origin-price">69,000원</del>
                                <strong class="current-price">39,000원 </strong>
                                <div class="discount-percent">42%</div>
                            </div>
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
                        <div class="slide-img"><a><img src="images/index/mainimg-13.jpg"></a></div>
                    </div>
                    <!-- detail-box -->
                    <div class="detail-box">
                    <!-- type -->
                        <div class="type">
                            <span class="brand-name">NIKE <div class="zzim"><button class="btn-zzim" name="btn-zzim"></div></span>
                            <a href="#" class="prd-name">ENIMM PRAESENT ELEMENTUM</a>
                            <div class="prd-price">
                                <del class="origin-price">69,000원</del>
                                <strong class="current-price">39,000원 </strong>
                                <div class="discount-percent">42%</div>
                            </div>
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
                        <div class="slide-img"><a><img src="images/index/mainimg-14.jpg"></a></div>
                    </div>
                    <!-- detail-box -->
                    <div class="detail-box">
                    <!-- type -->
                        <div class="type">
                            <span class="brand-name">NIKE <div class="zzim"><button class="btn-zzim" name="btn-zzim"></div></span>
                            <a href="#" class="prd-name">ENIMM PRAESENT ELEMENTUM</a>
                            <div class="prd-price">
                                <del class="origin-price">69,000원</del>
                                <strong class="current-price">39,000원 </strong>
                                <div class="discount-percent">42%</div>
                            </div>
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
                    <div class="slide-img"><a><img src="images/index/mainimg-15.jpg"></a></div>
                </div>
                <!-- detail-box -->
                <div class="detail-box">
                <!-- type -->
                    <div class="type">
                        <span class="brand-name">NIKE <div class="zzim"><button class="btn-zzim" name="btn-zzim"></div></span>
                        <a href="#" class="prd-name">ENIMM PRAESENT ELEMENTUM</a>
                        <div class="prd-price">
                            <del class="origin-price">69,000원</del>
                            <strong class="current-price">39,000원 </strong>
                            <div class="discount-percent">42%</div>
                        </div>
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
                    <div class="slide-img"><a><img src=""></a></div>
                </div>
                <!-- detail-box -->
                <div class="detail-box">
                <!-- type -->
                    <div class="type">
                        <span class="brand-name">NIKE <div class="zzim"><button class="btn-zzim" name="btn-zzim"></div></span>
                        <a href="#" class="prd-name">ENIMM PRAESENT ELEMENTUM</a>
                        <div class="prd-price">
                            <del class="origin-price">69,000원</del>
                            <strong class="current-price">39,000원 </strong>
                            <div class="discount-percent">42%</div>
                        </div>
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
                    <div class="slide-img"><a><img src=""></a></div>
                </div>
                <!-- detail-box -->
                <div class="detail-box">
                <!-- type -->
                    <div class="type">
                        <span class="brand-name">NIKE <div class="zzim"><button class="btn-zzim" name="btn-zzim"></div></span>
                        <a href="#" class="prd-name">ENIMM PRAESENT ELEMENTUM</a>
                        <div class="prd-price">
                            <del class="origin-price">69,000원</del>
                            <strong class="current-price">39,000원 </strong>
                            <div class="discount-percent">42%</div>
                        </div>
                    </div>

                </div>
            </div>
          </li>
          <!-- 7 -->
          <li class="item-g">
              <!-- box-slider -->
              <div class="box">
                <!-- img-box -->
                <div class="overlay">
                    <div class="slide-img"><a><img src=""></a></div>
                </div>
                <!-- detail-box -->
                <div class="detail-box">
                <!-- type -->
                    <div class="type">
                        <span class="brand-name">NIKE <div class="zzim"><button class="btn-zzim" name="btn-zzim"></div></span>
                        <a href="#" class="prd-name">ENIMM PRAESENT ELEMENTUM</a>
                        <div class="prd-price">
                            <del class="origin-price">69,000원</del>
                            <strong class="current-price">39,000원 </strong>
                            <div class="discount-percent">42%</div>
                        </div>
                    </div>

                </div>
            </div>
          </li>
          
                <!-- 8 -->
          <li class="item-h">
          <!-- box-slider -->
          <div class="box">
            <!-- img-box -->
            <div class="overlay">
                <div class="slide-img"><a><img src=""></a></div>
            </div>
            <!-- detail-box -->
            <div class="detail-box">
            <!-- type -->
                <div class="type">
                    <span class="brand-name">NIKE <div class="zzim"><button class="btn-zzim" name="btn-zzim"></div></span>
                    <a href="#" class="prd-name">ENIMM PRAESENT ELEMENTUM</a>
                    <div class="prd-price">
                        <del class="origin-price">69,000원</del>
                        <strong class="current-price">39,000원 </strong>
                        <div class="discount-percent">42%</div>
                    </div>
                </div>

            </div>
        </div>
        </li>
        </ul>
        </section>
        </div>

        <div class="slider-frame">
            <section class="slider">
        <ul id="new-arrival-slider2" class="cs-hidden">
          <!-- 1 -->
          <li class="item-a">
                <!-- box-slider -->
                <div class="box">
                    <!-- img-box -->
                    <div class="overlay">
                        <div class="slide-img"><a><img src="images/index/mainimg-12.jpg"></a></div>
                    </div>
                    <!-- detail-box -->
                    <div class="detail-box">
                    <!-- type -->
                        <div class="type">
                            <span class="brand-name">NIKE <div class="zzim"><button class="btn-zzim" name="btn-zzim"></div></span>
                            <a href="#" class="prd-name">ENIMM PRAESENT ELEMENTUM</a>
                            <div class="prd-price">
                                <del class="origin-price">69,000원</del>
                                <strong class="current-price">39,000원 </strong>
                                <div class="discount-percent">42%</div>
                            </div>
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
                        <div class="slide-img"><a><img src="images/index/mainimg-13.jpg"></a></div>
                    </div>
                    <!-- detail-box -->
                    <div class="detail-box">
                    <!-- type -->
                        <div class="type">
                            <span class="brand-name">NIKE <div class="zzim"><button class="btn-zzim" name="btn-zzim"></div></span>
                            <a href="#" class="prd-name">ENIMM PRAESENT ELEMENTUM</a>
                            <div class="prd-price">
                                <del class="origin-price">69,000원</del>
                                <strong class="current-price">39,000원 </strong>
                                <div class="discount-percent">42%</div>
                            </div>
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
                        <div class="slide-img"><a><img src="images/index/mainimg-14.jpg"></a></div>
                    </div>
                    <!-- detail-box -->
                    <div class="detail-box">
                    <!-- type -->
                        <div class="type">
                            <span class="brand-name">NIKE <div class="zzim"><button class="btn-zzim" name="btn-zzim"></div></span>
                            <a href="#" class="prd-name">ENIMM PRAESENT ELEMENTUM</a>
                            <div class="prd-price">
                                <del class="origin-price">69,000원</del>
                                <strong class="current-price">39,000원 </strong>
                                <div class="discount-percent">42%</div>
                            </div>
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
                    <div class="slide-img"><a><img src="images/index/mainimg-15.jpg"></a></div>
                </div>
                <!-- detail-box -->
                <div class="detail-box">
                <!-- type -->
                    <div class="type">
                        <span class="brand-name">NIKE <div class="zzim"><button class="btn-zzim" name="btn-zzim"></div></span>
                        <a href="#" class="prd-name">ENIMM PRAESENT ELEMENTUM</a>
                        <div class="prd-price">
                            <del class="origin-price">69,000원</del>
                            <strong class="current-price">39,000원 </strong>
                            <div class="discount-percent">42%</div>
                        </div>
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
                    <div class="slide-img"><a><img src=""></a></div>
                </div>
                <!-- detail-box -->
                <div class="detail-box">
                <!-- type -->
                    <div class="type">
                        <span class="brand-name">NIKE <div class="zzim"><button class="btn-zzim" name="btn-zzim"></div></span>
                        <a href="#" class="prd-name">ENIMM PRAESENT ELEMENTUM</a>
                        <div class="prd-price">
                            <del class="origin-price">69,000원</del>
                            <strong class="current-price">39,000원 </strong>
                            <div class="discount-percent">42%</div>
                        </div>
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
                    <div class="slide-img"><a><img src=""></a></div>
                </div>
                <!-- detail-box -->
                <div class="detail-box">
                <!-- type -->
                    <div class="type">
                        <span class="brand-name">NIKE <div class="zzim"><button class="btn-zzim" name="btn-zzim"></div></span>
                        <a href="#" class="prd-name">ENIMM PRAESENT ELEMENTUM</a>
                        <div class="prd-price">
                            <del class="origin-price">69,000원</del>
                            <strong class="current-price">39,000원 </strong>
                            <div class="discount-percent">42%</div>
                        </div>
                    </div>

                </div>
            </div>
          </li>
          <!-- 7 -->
          <li class="item-g">
              <!-- box-slider -->
              <div class="box">
                <!-- img-box -->
                <div class="overlay">
                    <div class="slide-img"><a><img src=""></a></div>
                </div>
                <!-- detail-box -->
                <div class="detail-box">
                <!-- type -->
                    <div class="type">
                        <span class="brand-name">NIKE <div class="zzim"><button class="btn-zzim" name="btn-zzim"></div></span>
                        <a href="#" class="prd-name">ENIMM PRAESENT ELEMENTUM</a>
                        <div class="prd-price">
                            <del class="origin-price">69,000원</del>
                            <strong class="current-price">39,000원 </strong>
                            <div class="discount-percent">42%</div>
                        </div>
                    </div>

                </div>
            </div>
          </li>
          
                <!-- 8 -->
          <li class="item-h">
          <!-- box-slider -->
          <div class="box">
            <!-- img-box -->
            <div class="overlay">
                <div class="slide-img"><a><img src=""></a></div>
            </div>
            <!-- detail-box -->
            <div class="detail-box">
            <!-- type -->
                <div class="type">
                    <span class="brand-name">NIKE <div class="zzim"><button class="btn-zzim" name="btn-zzim"></div></span>
                    <a href="#" class="prd-name">ENIMM PRAESENT ELEMENTUM</a>
                    <div class="prd-price">
                        <del class="origin-price">69,000원</del>
                        <strong class="current-price">39,000원 </strong>
                        <div class="discount-percent">42%</div>
                    </div>
                </div>

            </div>
        </div>
        </li>
        </ul>
        </section>
    </div>

     <!-- REVIEW -->
     <div id="review-wrapper">
        <div class="contents-title">
            <span class="category-title">REVIEW</span><br>
            <span class="category-sub-title">베스트 리뷰를 모았습니다.</span>
        </div>

       <div class="slider-frame">
            <section class="slider">
        <ul id="review-slider" class="cs-hidden">
          <!-- 1 -->
          <li class="item-a">
                <!-- box-slider -->
                <div class="box">
                    <!-- img-box -->
                    <div class="overlay">
                        <div class="slide-img"><a><img src=""></a></div>
                    </div>
                    <div class="detail-box">
                        <!-- <img src="images/index/empty-star.png">
                        <div class="rate">
                            <button class="review-star"></button>
                            <button class="review-star"></button>
                            <button class="review-star"></button>
                            <button class="review-star"></button>
                            <button class="review-star"></button>
                        </div> -->
                    </div>
                </div>
          </li>
          <!-- 2 -->
          <li class="item-b">
                <!-- box-slider -->
                <div class="box">
                    <!-- img-box -->
                    <div class="overlay">
                        <div class="slide-img"><a><img src=""></a></div>
                    </div>
                    <div class="detail-box">

                    </div>
                </div>
          </li>
          
          <!-- 3 -->
          <li class="item-c">
          <!-- box-slider -->
                <div class="box">
                    <!-- img-box -->
                    <div class="overlay">
                        <div class="slide-img"><a><img src=""></a></div>
                    </div>
                </div>
          </li>
    
          <!-- 4 -->
          <li class="item-d">
             <!-- box-slider -->
             <div class="box">
                <!-- img-box -->
                <div class="overlay">
                    <div class="slide-img"><a><img src=""></a></div>
                </div>
                <!-- detail-box -->
            </div>
          </li>
    
          <!-- 5 -->
          <li class="item-e">
            <!-- box-slider -->
            <div class="box">
                <!-- img-box -->
                <div class="overlay">
                    <div class="slide-img"><a><img src=""></a></div>
                </div>
                <!-- detail-box -->
                <div class="detail-box">
                <!-- type -->
                    <div class="type">
                        <span class="brand-name">NIKE <div class="zzim"><button class="btn-zzim" name="btn-zzim"></div></span>
                        <a href="#" class="prd-name">ENIMM PRAESENT ELEMENTUM</a>
                        <div class="prd-price">
                            <del class="origin-price">69,000원</del>
                            <strong class="current-price">39,000원 </strong>
                            <div class="discount-percent">42%</div>
                        </div>
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
                    <div class="slide-img"><a><img src=""></a></div>
                </div>
                <!-- detail-box -->
                <div class="detail-box">
                <!-- type -->
                    <div class="type">
                        <span class="brand-name">NIKE <div class="zzim"><button class="btn-zzim" name="btn-zzim"></div></span>
                        <a href="#" class="prd-name">ENIMM PRAESENT ELEMENTUM</a>
                        <div class="prd-price">
                            <del class="origin-price">69,000원</del>
                            <strong class="current-price">39,000원 </strong>
                            <div class="discount-percent">42%</div>
                        </div>
                    </div>

                </div>
            </div>
          </li>
          <!-- 7 -->
          <li class="item-g">
              <!-- box-slider -->
              <div class="box">
                <!-- img-box -->
                <div class="overlay">
                    <div class="slide-img"><a><img src=""></a></div>
                </div>
                <!-- detail-box -->
                <div class="detail-box">
                <!-- type -->
                    <div class="type">
                        <span class="brand-name">NIKE <div class="zzim"><button class="btn-zzim" name="btn-zzim"></div></span>
                        <a href="#" class="prd-name">ENIMM PRAESENT ELEMENTUM</a>
                        <div class="prd-price">
                            <del class="origin-price">69,000원</del>
                            <strong class="current-price">39,000원 </strong>
                            <div class="discount-percent">42%</div>
                        </div>
                    </div>

                </div>
            </div>
          </li>
          
                <!-- 8 -->
          <li class="item-h">
          <!-- box-slider -->
          <div class="box">
            <!-- img-box -->
            <div class="overlay">
                <div class="slide-img"><a><img src=""></a></div>
            </div>
            <!-- detail-box -->
            <div class="detail-box">
            <!-- type -->
                <div class="type">
                    <span class="brand-name">NIKE <div class="zzim"><button class="btn-zzim" name="btn-zzim"></div></span>
                    <a href="#" class="prd-name">ENIMM PRAESENT ELEMENTUM</a>
                    <div class="prd-price">
                        <del class="origin-price">69,000원</del>
                        <strong class="current-price">39,000원 </strong>
                        <div class="discount-percent">42%</div>
                    </div>
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