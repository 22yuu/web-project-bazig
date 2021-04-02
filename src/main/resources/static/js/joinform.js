var id_overlap = true;
const nbspReg = /\s/g;
const nameReg = /[ㄱ-ㅎ|ㅏ-ㅣ|가-힣]/;; 
//아이디 정규식
const idReg = /^[a-z0-9]{5,16}$/;
// 비밀번호 정규식
const pwdReg = /^(?=.*[a-zA-z])(?=.*[0-9])(?=.*[$`~!@$!%*#^?&\\(\\)\-_=+]).{8,16}$/; 
// 이메일 검사 정규식
const mailReg = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
	
$(function(){
		$("#memberId").blur(function() {
			var id = $("#memberId").val();
			if(id == '') {
				$("#id_check").text('아이디를 입력해주세요!!!');
				$("#id_check").css('color', 'red');
			} else if(!idReg.test($(this).val())) {
				$("#id_check").text('아이디는 최소 5글자 이상 16글자 이하 숫자와 영문 소문자를 혼합하여 입력해주세요!!!');
				$("#id_check").css('color', 'red');
			} else {

				$.ajax({
					type : 'POST',
					url : '/auth/idCheck',
					contentType: 'application/json',
					dataType: "json",
					data : JSON.stringify({
						memberId : id
					}),
					success : function(data) {
						if(data == false) {
							$("#id_check").text('사용가능한 아이디 입니다.');
							$("#id_check").css('color','black');
							id_overlap = true;
						}else {
							$("#id_check").text('이미 존재하는 아이디입니다.');
							$("#id_check").css('color','red');
							id_overlap = false;
						}
					},
					error : function() {
					$("#id_check").text('오류');		
					}
				});
			}
		});
		
		$("#password").blur(function() {
			var pwd =  $("#password").val();
			if(pwd == '') {
				$("#pwd_check").text('비밀번호를 입력해주세요!!!');
				$("#pwd_check").css('color','red');
			} else if (!pwdReg.test($(this).val())){
				$("#pwd_check").text('비밀번호는 8자 이상 16자 이하 영문,숫자,특수문자($`~!@$!%*#^?)를 혼합해서 사용하셔야 합니다!!!');
				$("#pwd_check").css('color','red');
			} else {
				$("#pwd_check").text('');
			}
		});
		
		$("#confirm_password").blur(function (){
			var pwd = $("#password").val();
			var pwd2 = $("#confirm_password").val();
			
			if(pwd != pwd2) {
				if(pwd2 != '') {
					$("#password_check").text('비밀번호가 일치하지 않습니다!!!');
					$("#password_check").css('color', 'red');
				} else {
					$("#password_check").text('비밀번호를 입력해주세요!!!');
					$("#password_check").css('color', 'red');
				}
				
			} else if (pwd == pwd2) {
				$("#password_check").text('');
				$("#password_check").css('color', '#222');
			}
			pwd2.focus();
		});
		
		$("#username").blur(function () {
			var name = $("#username").val();
			
			if(name == '') {
				$("#name_check").text('이름을 입력해주세요!!!');
				$("#name_check").css('color', 'red');
			} else if(nameReg.test($(this).val())) {
				$("#name_check").text('');
			} else {
				$("#name_check").text('이름을 다시 한번 확인해주세요!!!');
				$("#name_check").css('color', 'red')
				
			}
			
		});
});

