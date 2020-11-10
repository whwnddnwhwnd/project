let update={
	init:function(){
		$("#btn-update").on("click",()=>{
			this.update();
			location.href="/mypage";
			alert("회원수정 완료!");
		});
	}
	,update:function(){
		let data={
			username:$("#username").val()
			,password:$("#password").val()
			,email:$("#email").val()
			,telephone:$("#telephone").val()
		}
		$.ajax({
			type:"put"
			,url:"/user/update"
			,data:JSON.stringify(data)
			,contentType:"application/json; charset=utf-8"
			,dataType:"json"
		});
	}
}
update.init();