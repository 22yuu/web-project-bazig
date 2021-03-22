let index = {
		
	init:function(){
		$("#btn-save").on("click",()=>{
			this.save();
		});
		$("#btn-update").on("click", ()=>{ // function(){}, ()=>{} this를 바인딩하기 위해서!
			bornDate = $("#yyyy").val() + $("#mm").val() + $("#dd").val();
			this.update();

		});
		$("#btn-OAuth-save").on("click", ()=>{ // function(){}, ()=>{} this를 바인딩하기 위해서!
			bornDate = $("#yyyy").val() + $("#mm").val() + $("#dd").val();
			this.oauth_save();
		});
	},
	
	save:function(){
		//alert('user의 save함수 호출됨');
		

		let data = {
			memberId:$("#memberId").val(),
			password:$("#password").val(),
			confirm_password:$("#confirm_password").val(),
			username:$("#username").val(),
			gender:$("input[name=gender]").val(),
			mobile:$("#mobile").val(),
			email:$("#email").val(),
			address:$("#address").val(),
			born_yyyy:$("#yyyy").val(),
			born_mm:$("#mm").val(),
			born_dd:$("#dd").val(),
			born_date:$("#yyyy").val()+$("#mm").val()+$("#dd").val(),
			registed: registed
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
	
	oauth_save:function(){
		//alert('user의 save함수 호출됨');		

		let data = {
			id:$("#id").val(),
			memberId:$("#memberId").val(),
			password:$("#password").val(),
			username:$("#username").val(),
			gender:$("input[name=gender]").val(),
			mobile:$("#mobile").val(),
			email:$("#email").val(),
			address:$("#address").val(),
			born_yyyy:$("#yyyy").val(),
			born_mm:$("#mm").val(),
			born_dd:$("#dd").val(),
			born_date:$("#yyyy").val()+$("#mm").val()+$("#dd").val(),
		};
		
		// ajax 호출시 디폴트가 비동기 호출
		$.ajax({
		  //회원가입 수행 요청
		  type:"PUT",
		  url:"/user",
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
	
	update:function(){
		let data = {
			id:$("#id").val(),
			memberId:$("#memberId").val(),
			password:$("#password").val(),
			confirm_password:$("#confirm_password").val(),
			username:$("#username").val(),
			gender:$("input[name=gender]").val(),
			mobile:$("#mobile").val(),
			email:$("#email").val(),
			address:$("#address").val(),
			born_yyyy:$("#yyyy").val(),
			born_mm:$("#mm").val(),
			born_dd:$("#dd").val(),
			born_date:$("#yyyy").val()+$("#mm").val()+$("#dd").val(),
		};
		
		// ajax 호출시 디폴트가 비동기 호출
		$.ajax({
		  //회원가입 수행 요청
		  type:"PUT",
		  url:"/user",
		  data: JSON.stringify(data),
		  contentType:"application/json; charset=utf-8", // body 데이터가 어떤 타입인지(MIME)
		  dataType:"json" // 요청에 대한 응답이 왔을 때,기본적으로 모든 것이 문자열(생긴게 json => javascript로 변경) 
		}).done(function(resp){
			alert("회원수정이 완료되었습니다.");
			location.href="/"
		}).fail(function(error){
			alert(JSON.stringify(error));
		});
	},
}

var bornDate="";
var registed=0;
index.init()




