var id_overlap = true;

$(document).ready(function(){
		$("#memberId").blur(function() {
			var id = $("#memberId").val();
			if(id == '') {
				$("#id_check").text('아이디를 입력해주세요.');
			}else {
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
							$("#id_check").text('사용할 수 없는 아이디 입니다.');
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
	});

