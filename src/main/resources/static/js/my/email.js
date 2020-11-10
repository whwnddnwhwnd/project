let send ={
	init:function(){
		$("#btn-mail-send").on("click",()=>{
			this.send();
		});
	}
	
	,send:function(){
		let data ={
			senderName:$("#senderName").val()
			,senderEmail:$("#senderEmail").val()
			,title:$("#title").val()
			,content:$("#content").val()
		}
		$.ajax({
			type:"post"
			,url:"/contact/send"
			,data:JSON.stringify(data)
			,contentType:"application/json; charset=utf-8"
			,dataType:"json"
		}).done(function(reuslt){
			alert("문의 완료!");
			location.href="/";
		});
	}
}

send.init();