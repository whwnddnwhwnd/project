let test ={
	init:function(){
		$("#btn-test").on("click",()=>{
			this.test1();
		});
	}
	
	,test1:function(){
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
		}
		$.ajax({
			type:"post"
			,url:"/test/rest1"
			,data:JSON.stringify(data)
			,contentType:"application/json; charset=utf-8"
			,dataType:"json"
		}).done(function(reuslt){
			alert("데이터전송");
		});
	}
}

test.init();