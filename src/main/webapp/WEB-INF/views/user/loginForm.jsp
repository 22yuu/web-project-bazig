<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp" %>
<link rel="stylesheet" type="text/css" href="/css/loginForm.css">
<!-- <script type="text/javascript" src="/js/jquery.js"></script> -->
<script>
	function login_check() {
		if(login_form.username.value == "") {
			alert("아이디를 입력해주세요...!");
		} else if (password.value =="") {
			alert("패스워드를 입력해주세요...!");
		}
	}

</script>


<div class="container">
	<div class="loginForm-logo-area"><img src="/images/logo-bazig.jpg"></div>
	<form action="/auth/loginProc" method="post" name="login_form"> <!-- 로그인하는 것은 Select 하는 것 -->
	  <div class="form-group">
	    <input type="text" name="username" class="form-control" placeholder="아이디를 입력해주세요." id="memberId">
	  </div>
	  
	  <div class="form-group">
	    <input type="password" name="password" class="form-control" placeholder="비밀번호를 입력해주세요." id="password">
	  </div>
	  <button id="btn-login" class="btn btn-primary" onclick="login_check()">로그인</button>
	</form>
	<div class="find-info">
		<a>아이디 찾기</a>
		<a>비밀번호 찾기</a>
		<a href="/auth/joinForm">회원가입</a>
	</div>
	<div data-8 class="social-login">
        <h2><span class="social-login-text">SNS 로그인 / 가입</span></h2>
    </div>
    <div class="social-login-frame">
		<a class="kakao-login-btn" onclick="location.href='/oauth2/authorization/kakao'"></a>
		<a class="naver-login-btn" onclick="location.href='/oauth2/authorization/naver'"></a>
		<a class="google-login-btn" onclick="location.href='/oauth2/authorization/google'"></a>
		<a class="facebook-login-btn" onclick="location.href='/oauth2/authorization/facekbook'"></a>
	</div>
</div> 
<%@ include file="../layout/footer.jsp" %>