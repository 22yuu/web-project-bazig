<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link rel="stylesheet" href="css/joinForm.css">



<script>

var domain;

function selectedDomain(){

	domain = document.getElementById("select-email-domain");
	console.log(domain.selectedIndex);
}

var text = domain.options[domain.selectedIndex].text;
console.log(text)
</script>

<!-- js -->
<script type="text/javascript" src="js/jquery.js"></script>
</head>
<body>
<form>
	<header class="header">
		<h2> 회원가입</h2>
		<p><span>*</span>가 표시되어있는건 모두 기입하셔야 합니다.</p>
	</header>
	
	<div class="form-wrapper">
		<div class="input-wrapper"> 
			<label>아이디<span>*</span></label>
			<input id="member-id" class="id-input" type="text">
			<div id="id_check"></div>
		</div>
		<div class="input-wrapper"> 
			<label>비밀번호<span>*</span></label>
			<input id="pwd1" class="email-input" type="password">
		</div>
		<div class="input-wrapper"> 
			<label>비밀번호 확인<span>*</span></label>
			<input id="pwd2" class="email-input" type="password">
			<div id="password_check" style="color: red;"></div>
		</div>
		<div class="input-wrapper"> 
			<label>본인 확인 질문</label>
			<select  id="join-questions" class="join-certification-question" name="member_pwd_q">
                  <option value="null" selected="selected">질문선택</option>
                  <option>예전에 살던 동네는?</option>
                  <option>내가 나온 초등학교는?</option>
                  <option>가장 좋아했던 선생님 이름은?</option>
                  <option>두 번째 애완동물 이름은?</option>
                  <option>어린시절 별명은?</option>
                  <option>어린시절 장래 희망은?</option>
                  <option>어린 시절에 존경 했던 인물은?</option>
                  <option>첫번째 직장상사 이름은?</option>
                  <option>첫사랑 이름은?</option>
                  <option>현재 이름을 변경한다면 바꾸고 싶은 이름은?</option>
                </select>
		</div>
		<div class="input-wrapper"> 
			<label>본인확인 답변</label>
			<input id="join-answer" class="join-certification-answer" type="text">
		</div>
		<div class="input-wrapper"> 
			<label>이름<span>*</span></label>
			<input class="email-input" type="text">
		</div>
		<div class="input-wrapper"> 
			<label>성별<span>*</span></label>
			<input class="email-input" type="text">
		</div>
		
		<!-- 전화번호 -->
		<div class="input-wrapper"> 
			<label>전화번호</label>
			<select class="form-control" name="member_hp" style='width:210px;'>
                  <option value="02">02</option>
                  <option value="051">051</option>
                  <option value="053">053</option>
                  <option value="062">062</option>
                  <option value="031">031</option>
                  <option value="064">064</option>
                  <option value="033">033</option> 
             </select>
	        <input type="text" size="4" maxlength="4" onkeypress="if (event.keyCode<48|| event.keyCode>57)  event.returnValue=false;"   style='IME-MODE: disabled; width:210px;'>
	    
	        <input type="text"  size="4" maxlength="4" onkeypress="if (event.keyCode<48|| event.keyCode>57)  event.returnValue=false;"  style='IME-MODE: disabled; width:210px;'>
		</div>
	


		<!-- 휴대전화 -->
		<div class="input-wrapper"> 
			<label>전화번호</label>
			<select class="form-control" name="member_hp" style='width:210px;'>
                  <option value="010">010</option>
                  <option value="011">011</option>
                  <option value="016">016</option>
                  <option value="017">017</option>
                  <option value="018">018</option>
                  <option value="019">019</option>
             </select>
	        <input type="text" size="4" maxlength="4" onkeypress="if (event.keyCode<48|| event.keyCode>57)  event.returnValue=false;"   style='IME-MODE: disabled; width:210px;'>
	        <input type="text"  size="4" maxlength="4" onkeypress="if (event.keyCode<48|| event.keyCode>57)  event.returnValue=false;"  style='IME-MODE: disabled; width:210px;'>
		</div>
		<div class="input-wrapper"> 
			<label>이메일<span>*</span></label>
			<input class="email-input" type="text" style="width:210px">
			@
			<input id="email-domain"class="email-input" type="text" style="width:194px;">
			<select id="select-email-domain" class="form-control" name="email-domain" style='width:210px;' onchange="selectedDomain(this)">
				  <option> 직접입력 </option>
                  <option value="0">naver.com</option>
                  <option value="1">daum.com</option>
                  <option value="2">gmail.net</option>
             </select>
		</div>
		<div class="input-wrapper"> 
			<label>주소<span>*</span></label>
			<input class="email-input" type="text">
		</div>
		<div class="input-wrapper"> 
			<label>생년월일<span>*</span></label>
			<input class="email-input" type="email">
		</div>
	</div>
</form>
	

</body>
</html>