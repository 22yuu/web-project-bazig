<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="../layout/header.jsp" %>

<link rel="stylesheet" href="/css/joinForm.css">
<script>
 function sample4_execDaumPostcode() {
       new daum.Postcode({
           oncomplete: function(data) {
               // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

               // 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
               // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
               var roadAddr = data.roadAddress; // 도로명 주소 변수
               var extraRoadAddr = ''; // 참고 항목 변수

               // 법정동명이 있을 경우 추가한다. (법정리는 제외)
               // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
               if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                   extraRoadAddr += data.bname;
               }
               // 건물명이 있고, 공동주택일 경우 추가한다.
               if(data.buildingName !== '' && data.apartment === 'Y'){
                  extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
               }
               // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
               if(extraRoadAddr !== ''){
                   extraRoadAddr = ' (' + extraRoadAddr + ')';
               }

               // 우편번호와 주소 정보를 해당 필드에 넣는다.
               document.getElementById('sample4_postcode').value = data.zonecode;
               document.getElementById("sample4_roadAddress").value = roadAddr;
               document.getElementById("sample4_jibunAddress").value = data.jibunAddress;
               
               // 참고항목 문자열이 있을 경우 해당 필드에 넣는다.
               if(roadAddr !== ''){
                   document.getElementById("sample4_extraAddress").value = extraRoadAddr;
               } else {
                   document.getElementById("sample4_extraAddress").value = '';
               }

               var guideTextBox = document.getElementById("guide");
               // 사용자가 '선택 안함'을 클릭한 경우, 예상 주소라는 표시를 해준다.
               if(data.autoRoadAddress) {
                   var expRoadAddr = data.autoRoadAddress + extraRoadAddr;
                   guideTextBox.innerHTML = '(예상 도로명 주소 : ' + expRoadAddr + ')';
                   guideTextBox.style.display = 'block';

               } else if(data.autoJibunAddress) {
                   var expJibunAddr = data.autoJibunAddress;
                   guideTextBox.innerHTML = '(예상 지번 주소 : ' + expJibunAddr + ')';
                   guideTextBox.style.display = 'block';
               } else {
                   guideTextBox.innerHTML = '';
                   guideTextBox.style.display = 'none';
               }
           }
       }).open();
   }
</script>
<div class="form-wrapper">
<form class="join-form">
	<header class="header">
		<h2> 회원가입</h2>
		<p><span>*</span>가 표시되어있는건 모두 기입하셔야 합니다.</p>
	</header>
			<div class="input-wrapper"> 
				<label>아이디<span>*</span></label>
				<input id="memberId" class="input-form" type="text" maxlength="16" placeholder="영문 소문자와 숫자를 혼합하여 최소 5글자 이상 16글자 이하로 입력해주세요.">
				<div id="id_check"></div>
			</div>
			<div class="input-wrapper"> 
				<label>비밀번호<span>*</span></label>
				<input id="password" class="input-form" type="password" maxlength="16" placeholder="최소 8글자 이상 16자 이하로 영문,숫자,특수문자($`~!@$!%*#^?)를 혼합해서 입력해주세요.">
				<div id="pwd_check"></div>
			</div>
			<div class="input-wrapper"> 
				<label>비밀번호 확인<span>*</span></label>
				<input id="confirm_password" class="input-form" type="password" maxlength="16">
				<div id="password_check" style="color: red;"></div>
			</div>
		<div class="input-wrapper"> 
			<label>이름<span>*</span></label>
			<input type="text" id="username" class="input-form">
			<div id="name_check"></div>
		</div>
<!-- 		<div class="input-wrapper"> 
			<label>성별<span>*</span></label><br>
			<input type="radio" name="gender" id="man" value="남자" class="select-gender"> 남성
			<input type="radio" name="gender" id="woman" value="여자" class="select-gender"> 여성
		</div> -->

		<!-- 휴대전화 -->
		<div class="input-wrapper"> 
			<label>휴대폰<span>*</span></label>
			<input id="mobile" type="text" class="input-form" size="11" maxlength="11" onkeypress="if (event.keyCode<48|| event.keyCode>57)  event.returnValue=false;" placeholder="-빼고 입력해주세요.">
		</div>
		<div class="input-wrapper"> 
			<label>이메일<span>*</span></label><br>
			<input type="text" id="email" class="input-form" >
		</div>
<!-- 		<div class="input-wrapper addr"> 
			<label>주소<span>*</span></label>
			<input type="text" id="sample4_postcode" class="addr_form mini" placeholder="우편번호">
			<input type="button" class="addr_btn" onclick="sample4_execDaumPostcode()" value="우편번호 찾기"><br>
			<input type="text" id="sample4_roadAddress" class="addr_form std" placeholder="도로명주소">
			<input type="text" id="sample4_jibunAddress" class="addr_form std" placeholder="지번주소">
			<span id="guide" style="color:#999;display:none"></span> <br>
			<input type="text" id="sample4_detailAddress" class="addr_form" placeholder="상세주소">
			<input type="text" id="sample4_extraAddress" class="addr_form" placeholder="참고항목">
		</div> -->
		<!-- <div class="input-wrapper"> 
			<label>생년월일<span>*</span></label><br>
			<input type="text" id="yyyy" class="input-form" placeholder="년(4자)" size="4" maxlength="4" style="width:150px;">
			<select id="mm"  style="width:150px;">
			<option>월</option>
			<option value="01">01</option>
			<option value="02">02</option>
			<option value="03">03</option>
			<option value="04">04</option>
			<option value="05">05</option>
			<option value="06">06</option>
			<option value="07">07</option>
			<option value="08">08</option>
			<option value="09">09</option>
			<option value="10">10</option>
			<option value="11">11</option>
			<option value="12">12</option>
			</select>
			<input type="text" id="dd" class="input-form" placeholder="일" style="width:150px;">
		</div> -->
</form>
<button id="btn-save" class="btn-join-done">회원가입</button>
</div>


<script type="text/javascript" src="/js/user.js"></script>
<script type="text/javascript" src="/js/joinform.js"></script>
<%@ include file="../layout/footer.jsp" %>