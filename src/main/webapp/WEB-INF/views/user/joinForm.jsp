<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="../layout/header.jsp" %>

<link rel="stylesheet" href="/css/joinForm.css">

<div class="form-wrapper">
<form class="join-form">
	<header class="header">
		<h2> 회원가입</h2>
		<p><span>*</span>가 표시되어있는건 모두 기입하셔야 합니다.</p>
	</header>
	
	
		<div class="input-wrapper"> 
			<label>아이디<span>*</span></label>
			<input id="memberId" class="id-input" type="text">
			<div id="id_check"></div>
		</div>
		<div class="input-wrapper"> 
			<label>비밀번호<span>*</span></label>
			<input id="password" class="pwd-input" type="password">
		</div>
		<div class="input-wrapper"> 
			<label>비밀번호 확인<span>*</span></label>
			<input id="confirm_password" class="pwd-input" type="password">
			<div id="password_check" style="color: red;"></div>
		</div>
		<div class="input-wrapper"> 
			<label>이름<span>*</span></label>
			<input type="text" id="username">
		</div>
		<div class="input-wrapper"> 
			<label>성별<span>*</span></label><br>
			
			<input type="radio" name="gender" id="man" value="남자" class="select-gender"><label for="man"> 남성</label>
			<input type="radio" name="gender" id="woman" value="여자" class="select-gender"><label for="woman" > 여성</label> 
		</div>

		<!-- 휴대전화 -->
		<div class="input-wrapper"> 
			<label>휴대폰<span>*</span></label>
			<input id="mobile" type="text" size="11" maxlength="11" onkeypress="if (event.keyCode<48|| event.keyCode>57)  event.returnValue=false;" placeholder="-빼고 입력해주세요.">
		</div>
		<div class="input-wrapper"> 
			<label>이메일<span>*</span></label><br>
			<input type="text" id="email" >
		</div>
		<div class="input-wrapper"> 
			<label>주소<span>*</span></label>
			<input type="text" id="address">
		</div>
		<div class="input-wrapper"> 
			<label>생년월일<span>*</span></label><br>
			<input type="text" id="yyyy" placeholder="년(4자)" size="4" maxlength="4" style="width:150px;">
			<select id="mmmm" style="width:150px;">
			<option>월</option>
			<option value="01">1</option>
			<option value="02">2</option>
			<option value="03">3</option>
			<option value="04">4</option>
			<option value="05">5</option>
			<option value="06">6</option>
			<option value="07">7</option>
			<option value="08">8</option>
			<option value="09">9</option>
			<option value="10">10</option>
			<option value="11">11</option>
			<option value="12">12</option>
			</select>
			<input type="text" id="dddd" placeholder="일" style="width:150px;">
		</div>
</form>
<button id="btn-save" class="btn-join-done">회원가입</button>
</div>


<script type="text/javascript" src="/js/user.js"></script>

<%@ include file="../layout/footer.jsp" %>