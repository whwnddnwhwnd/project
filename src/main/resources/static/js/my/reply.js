let save ={
	init:function(){
		$("#btn_reply_save").on("click",()=>{
			this.save();
		});
	}
	
	,save:function(){
		let data ={
			,comment:$("#comment").val()
			,storeId:$("#storeId").val()
		}
		$.ajax({
			type:"post"
			,url:"/reply/save"
			,data:JSON.stringify(data)
			,contentType:"application/json; charset=utf-8"
			,dataType:"json"
		}).done(function(result){
			location.reload(true);
		});
	}
}

save.init();