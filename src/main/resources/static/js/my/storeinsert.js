let insert ={
	init:function(){
		$("#btn-store-insert").on("click",()=>{
			this.insert();
		});
	}
	
	,insert:function(){
		let space = [];
		$("input[name='space']:checked").each(function(e){
			space.push($(this).val());
		});
		
		let data ={
			name:$("#name").val()
			,type:$("#type").val()
			,intro:$("#intro").val()
			,tel:$("#tel").val()
			,time:$("#time").val()
			,capa:$("#capa").val()
			,animal:$("#animal").val()
			,wheel:$("#wheel").val()
			,space:space
			,location:$("#location").val()
			,longitude:$("#longitude").val()
			,latitude:$("#latitude").val()
		}
		$.ajax({
			type:"post"
			,url:"/mypage/store/insert"
			,data:JSON.stringify(data)
			,contentType:"application/json; charset=utf-8"
			,dataType:"json"
		}).done(function(result){
			alert("가게등록 완료!");
			location.href="/mypage/setting";
		});
	}
}

insert.init();