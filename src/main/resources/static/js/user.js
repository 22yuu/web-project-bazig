let index = {
		
	init:function(){
		$("#btn-save").on("click",()=>{
			$(".telnumber").each(function(){
			telnumber += $(this).val();
			});
			$(".cellphone").each(function(){
			cellphone += $(this).val();
			});
			$(".email").each(function(){
			email += $(this).val();
			});
			this.save();
		});
		
		$("#login-btn").on("click", ()=>{
			this.login();
		});
		
	},
	
	save:function(){
		//alert('user의 save함수 호출됨');
		

		let data = {
			memberId:$("#memberId").val(),
			password:$("#password").val(),
			confirm_password:$("#confirm_password").val(),
			questions:$("#questions").val(),
			answer:$("#answer").val(),
			username:$("#username").val(),
			gender:$("input[name=gender]").val(),
			tel:telnumber,
			mobile:cellphone,
			email:email,
			address:$("#address").val(),
			birthdate:$("#birthdate").val()
		};
		
		// ajax 호출시 디폴트가 비동기 호출
		$.ajax({
		  //회원가입 수행 요청
		  type:"POST",
		  url:"/auth/joinProc",
		  data: JSON.stringify(data),
		  contentType:"application/json; charset=utf-8", // body 데이터가 어떤 타입인지(MIME)
		  dataType:"json" // 요청에 대한 응답이 왔을 때,기본적으로 모든 것이 문자열(생긴게 json => javascript로 변경) 
		}).done(function(resp){
			alert("회원가입이 완료되었습니다.");
			location.href="/"
		}).fail(function(error){
			alert(JSON.stringify(error));
		});
	},
	
	login:function(){
	//alert('user의 save함수 호출됨');
		
		let data = {
			memberId:$("#memberId").val(),
			password:$("#password").val()
		};
		
		// ajax 호출시 디폴트가 비동기 호출
		$.ajax({
		  type:"POST",
		  url:"/api/user/login",
		  data: JSON.stringify(data),
		  contentType:"application/json; charset=utf-8", // body 데이터가 어떤 타입인지(MIME)
		  dataType:"json" // 요청에 대한 응답이 왔을 때,기본적으로 모든 것이 문자열(생긴게 json => javascript로 변경) 
		}).done(function(resp){
			alert("로그인이 되었습니다.");
			location.href="/"
		}).fail(function(error){
			alert(JSON.stringify(error));
		});
	}
	
	
}

var telnumber="";
var cellphone="";
var email="";
index.init()




