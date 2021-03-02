<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<script type="text/javascript" src="/js/jquery.js"></script>

<%@ include file="../layout/header.jsp" %>

<div class="container">
	<form action="/auth/loginProc" method="post"> <!-- 로그인하는 것은 Select 하는 것 -->
	  <div class="form-group">
	    <label for="memberId">아이디:</label>
	    <input type="text" name="username" class="form-control" placeholder="아이디를 입력해주세요." id="memberId">
	  </div>
	  
	  <div class="form-group">
	    <label for="password">패스워드:</label>
	    <input type="password" name="password" class="form-control" placeholder="비밀번호를 입력해주세요." id="password">
	  </div>
	  
	  <button id="btn-login" class="btn btn-primary">로그인</button>
	</form>
</div>

<!-- 
<button id="btn-login" class="btn btn-primary">로그인</button>
<script src="/js/user.js"></script>
 -->
 
<%@ include file="../layout/footer.jsp" %>