let index ={
	init:function(){
		$("#btn-login").on("click",()=>{ //function(){}을 대신해서 ()=>{} 사용한 이유는 this를 바인딩하기 위해서!
			this.login();
		});
	}
	
	,login:function(){
		let data ={
			username:$("#username").val()
			,password:$("#password").val()
		}
		
		$.ajax({
			type:"post"
			,url:"/api/user/login"
			,data:JSON.stringify(data) //http body 데이터 
			,contentType:"application/json; charset=utf-8" 
			,dataType:"json" 
		}).done(function(result){
			location.href="/";	
		}).fail(function(error){
			alert("로그인 실패");
		}); //AJAX통신을 이용해서 3개의 데이터를 json으로 변경하여 insert요청
	}
}

index.init();