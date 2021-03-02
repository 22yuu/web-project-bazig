<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<link rel="stylesheet" href="/css/loginForm.css">
<script type="text/javascript" src="/js/jquery.js"></script>

<script>
$(document).ready(function(){
	$(".popup .close").on('click', function(){
		$(this).parent().hide();
		$(".dim").hide();
		});
});
</script>

<div class="popup">
	<header class="header">
		<h2>로그인</h2>
		<p> 다양한 할인 혜택과 이벤트, 보너스 쿠폰을 놓치지 마세요 </p>
		<button class="kakao-login-btn"><img src="/images/kakao-icon.png"> 카카오로 로그인 </button>
		<button class="naver-login-btn">네이버로 로그인 </button>
		<button class="google-login-btn">구글로 로그인 </button>
		<hr>
	</header>
	<div class="content">
		<div class="input-wrapper">
			<label>아이디<span>*</span></label>
			<input class="member-id-input" type="text" name="memberId" id="memberId">
		</div>	
		<div class="input-wrapper">
			<label>비밀번호<span>*</span></label>
			<input class="password-input" type="password" name="password" id="password">
		</div> 
		<div class="input-wrapper">
			<input type="checkbox" name="remember" id="chk1"><label for="chk1_1">로그인 상태 유지</label>
			<a href="#" class="forgotten-password">비밀번호를 잊으셨나요?</a>
		</div>
	</div>
	<button class="login-btn" id="login-btn">로그인</button>

	<button  id="btn-join" class="member-btn" onclick="location.href='/auth/joinForm'">멤버십 가입하기</button>
	<a href="#" class="membership-info">멤버십 정보</a>
	<a href="#" class="close"></a>
</div>

<div class="dim"></div>

<script type="text/javascript" src="/js/user.js"></script>