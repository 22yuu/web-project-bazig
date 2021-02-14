<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="css/loginForm.css">
<title>Insert title here</title>
<script type="text/javascript" src="js/jquery.js"></script>
<script>
$(document).ready(function(){

	$(".open").on('click', function(){
		$(".popup").show();
		$(".dim").show();
		});
	$(".popup .close").on('click', function(){
		$(this).parent().hide();
		$(".dim").hide();
		});
});
</script>
</head>
<body>

<div class="popup">
	<header class="header">
		<h2>로그인</h2>
		<p> 다양한 할인 혜택과 이벤트, 보너스 쿠폰을 놓치지 마세요 </p>
	</header>
	<button class="kakao-login-btn"> 카카오로 로그인 </button>
		
	<div class="divider">
		<hr>
	</div>
	<div class="input-wrapper">
		<label>이메일<span>*</span></label>
		<input class="email-input" type="email">
	</div>	
	<div class="input-wrapper">
		<label>비밀번호<span>*</span></label>
		<input class="password-input" type="password">
	</div>
	<div class="input-wrapper">
		<input type="checkbox" id="chk1"><label for="chk1_1">로그인 상태 유지</label>
		<a href="#" class="forgotten-password">비밀번호를 잊으셨나요?</a>
	</div>
	<button  class="login-btn">로그인</button>
	<button  class="member-btn">멤버십 가입하기</button>
	<a href="#" class="membership-info">멤버십 정보</a>
	<a href="#a" class="close">닫기</a>
</div>

<div class="dim"></div>


</body>
</html>