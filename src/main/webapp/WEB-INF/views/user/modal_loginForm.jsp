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
		<div class="modal-social-login-frame">
		<a class="kakao-login-btn" onclick="location.href='/oauth2/authorization/kakao'"></a>
		<!-- <button class="kakao-login-btn" onclick="location.href='https://kauth.kakao.com/oauth/authorize?client_id=34c4dd1b843bc1b79acfc1b6c119f767&redirect_uri=http://localhost:8080/auth/kakao/callback&response_type=code'"><img src="/images/kakao-icon.png">카카오 로그인</button> -->
		<!-- <button class="kakao-login-btn" onclick="location.href='https://kauth.kakao.com/oauth/authorize?client_id=34c4dd1b843bc1b79acfc1b6c119f767&redirect_uri=http://13.209.41.213:8080/auth/kakao/callback&response_type=code'"><img src="/images/kakao-icon.png">카카오 로그인</button> -->
		<a class="naver-login-btn" onclick="location.href='/oauth2/authorization/naver'"></a>
		<a class="google-login-btn" onclick="location.href='/oauth2/authorization/google'"></a>
		<a class="facebook-login-btn" onclick="location.href='/oauth2/authorization/facebook'"></a>
		</div>

	</header>
    <div class="modal-social-login">
        <h2><span class="social-login-text">SNS 로그인 / 가입</span></h2>
    </div>
	<form action="/auth/loginProc" method="post">
	<div class="content">
		<div class="input-wrapper">
			<label class="label" for="memberId">아이디<span>*</span></label>
			<input class="member-id-input" type="text" name="username" id="memberId">
		</div>	
		<div class="input-wrapper">
			<label class="label" for="password">비밀번호<span>*</span></label>
			<input class="password-input" type="password" name="password" id="password">
		</div> 
		<div class="input-wrapper">
			<input type="checkbox" name="remember" id="chk1"><label for="chk1_1">로그인 상태 유지</label>
			<a href="#" class="forgotten-password">비밀번호를 잊으셨나요?</a>
		</div>
		
	</div>
	<button id="btn-login" class="login-btn">로그인</button>
	</form>
	<button  id="btn-join" class="member-btn" onclick="location.href='/auth/joinForm'">회원 가입하기</button>
	<a href="#" class="membership-info">멤버십 정보</a>
	<a href="#" class="close"></a>
</div>		
<div class="dim"></div>