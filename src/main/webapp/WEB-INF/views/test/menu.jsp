<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="/js/jquery.min.js"></script>
<script src="/js/jquery-migrate-3.0.1.min.js"></script>
</head>
<body>
<form enctype="multipart/form-data" id="test">
	<input type="file" id="file"><br>
	<input type="text" id="1"><br>
	<input type="text" id="2"><br>
	<input type="text" id="3"><br>
	<input type="text" id="4"><br>
	<input type="text" id="5"><br>
<button type="button" id="btn">테스트</button>
</form>
<script type="text/javascript">
let test={
		init:function(){
			$("#btn").on("click",()=>{
				this.test();
				});
			}
	,test:function(){
		let formData = new FormData();
		formData.append('1',$("#1").val());
		formData.append('2',$("#2").val());	
		formData.append('3',$("#3").val());	
		formData.append('4',$("#4").val());	
		formData.append('5',$("#5").val());	
		formData.append('6',$("#file")[0]);

		$.ajax({
			url:"/test/please"
			,processData:false
			,contentType:false
			,data:formData
			,type:"post"
			}).done(function(){
				alert("!!!");
				});
		}
}
test.init();

</script>
</body>
</html>