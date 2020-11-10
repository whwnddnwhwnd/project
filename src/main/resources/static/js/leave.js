let leave={
	init:function(){
		$("#leave_button").on("click",()=>{
			this.leave();
		});
	}
	,leave:function(){
		confirm("정말 탈퇴하시겠습니까?");
		confirm("정말요?");
		alert("정");
		alert("말");
		alert("요");
		alert("?");
		confirm("실은 시간없어서 구현못함 ㅅㄱ");
	}
}

leave.init();