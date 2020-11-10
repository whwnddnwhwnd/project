let insert = {
	init: function() {
		$("#btn-menu-insert").on("click", () => {
			this.insert();
		});
	}
	,insert: function() {
		let data = {
			name:$("#name").val()
			,price:$("#price").val()
			,allergy:$("#allergy").val()
			,vegan:$("#vegan").val()
		}
		$.ajax({
			type: "post"
			,url: "/mypage/menu/insert"
			,data: JSON.stringify(data)
			,contentType: "application/json; charset=utf-8"
			,dataType: "json"
		}).done(function(reuslt) {
			alert("메뉴등록 완료!");
			location.href = "/mypage/menu";
		});
	}
}

insert.init();