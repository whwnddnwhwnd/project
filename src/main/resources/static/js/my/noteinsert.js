let insert ={
	init:function(){
		$("#btn-note-insert").on("click",()=>{
			this.insert();
		});
	}
	
	,insert:function(){
		let data ={
			title:$("#title").val()
			,content:$("#content").val()
		}
		$.ajax({
			type:"post"
			,url:"/mypage/note/insert"
			,data:JSON.stringify(data)
			,contentType:"application/json; charset=utf-8"
			,dataType:"json"
		}).done(function(reuslt){
			alert("식도락노트 등록 완료!");
			location.href="/mypage/note";
		});
	}
}

insert.init();