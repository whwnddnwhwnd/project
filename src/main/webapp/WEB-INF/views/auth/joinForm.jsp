<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../layout/joinFormHeader.jsp"%>

<div style="background-color: black;">&nbsp;</div>
<div style="background-color: black;">&nbsp;</div>
<div style="background-color: black;">&nbsp;</div>
<div style="background-color: black;">&nbsp;</div>

<section class="container mt-3 " style="max-width: 1200px;">
	<div class="container-fluid px-0">
		<div
			class="order-md-last ftco-animate makereservation p-4 p-md-5 pt-5">
			<div class="py-md-5">
				<div class="heading-section ftco-animate mb-5">
					<h2 class="mb-4"
						style="font-family: 'Do Hyeon', sans-serif; letter-spacing: 3px; font-weight: 600;">회원가입</h2>
				</div>
				<form>
					<div class="row">
						<div class="col-md-6 line-h">
							<div class="form-group">
								<label for="username">아이디</label> <input type="text"
									class="form-control" placeholder="아이디는 4 ~ 20 글자로 입력해주세요"
									oninput="checkId()" id="username" required>
								<div class="check-form" id="id_check"></div>
							</div>
						</div>
						<div class="col-md-6 line-h">
							<div class="form-group">
								<label for="name">성함</label> <input type="text"
									class="form-control name_check" placeholder="성함을 입력해주세요" 
									oninput="checkId()" id="name" required>
							<div class="check-form"  id="name_check"></div>
							</div>
						</div>
						<div class="col-md-6 line-h">
							<div class="form-group">
								<label for="password">비밀번호</label> <input type="password"
									class="form-control" placeholder="비밀번호는 8 ~ 20 글자로 입력해주세요"
									id="password" required>
								<div class="check-form" id="pw_check"></div>
							</div>
						</div>
						<div class="col-md-6 line-h">
							<div class="form-group">
								<label for="birth">생년월일</label> <input type="text"
									class="form-control" placeholder="예)19961208"
									oninput="checkId()" id="birth" required>
							<div class="check-form" id="birth_check"></div>
							</div>
						</div>
						<div class="col-md-6 line-h">
							<div class="form-group">
								<label for="email">이메일</label> <input type="email"
									class="form-control" placeholder="ex)eatstime@naver.com" 
									oninput="checkId()" id="email" required>
							<div class="check-form" id="email_check"></div>
							</div>
						</div>
						<div class="col-md-6 line-h">
							<div class="form-group">
								<label for="telephone">연락처</label> <input type="text"
									class="form-control" oninput="checkId()"
									placeholder="예)01098719770" id="telephone" required>
							<div class="check-form" id="tel_check"></div>
							</div>
						</div>
						<div class="col-md-12 line-h">
							<div class="form-group">
								<label for="gender">성별</label>
								<div class="select-wrap one-third">
									<div class="icon">
										<span class="ion-ios-arrow-down"></span>
									</div>
									<select id="gender" class="form-control" required>
										<option value="male">남</option>
										<option value="female">여</option>
									</select>
								</div>
							</div>
						</div>
						<div class="col-md-12 mt-3 line-h">
							<div class="form-group">
								<button type="button" class="btn btn-primary py-3 px-5"
									id="btn-save" disabled="disabled"
									style="width: 490px; font-family: 'Nanum Gothic', sans-serif; font-size: 17px; font-weight: 600; letter-spacing: 1px;">가입하기</button>
							</div>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
</section>

<script>
//아이디 체크
	  function checkId() {
      var id_temp = $('#username').val();
      var name_temp = $('#name').val();
  	  var pw_temp = $('#password').val();
  	  var birth_temp = $('#birth').val();
  	  var email_temp = $('#email').val();
  	  var tel_temp = $('#telephone').val();
      $.ajax({
          url : "/auth/usernameCheck?username=" + id_temp
         ,type : 'get'
         ,success : function(data) {                 
        	  if(data != 0) {
       			joinCheck();
       			$("#btn-save").prop('disabled',true);
              }

        	  if(id_temp.length < 4 || id_temp.length > 20){
                 // 아이디 길이 / 문자열 검사
                 $("#id_check").text("아이디는 4 ~ 20 글자로 입력해주세요 :)");
                 $("#id_check").css("color", "#A52A2A"); 
                 $("#btn-save").prop('disabled',true);
              }
        	  else if (data == 0) {
               // 0 : 아이디 중복
               $("#id_check").text("사용중인 아이디입니다 :p");
               $("#id_check").css("color", "#A52A2A"); 
               $("#btn-save").prop('disabled',true);
            } 

        	  if(data != 0 && id_temp.length > 3 && id_temp.length < 20) { 
             	$("#id_check").text("ok");
             	$("#id_check").css("color", "#556B2F");
                //$("#btn-save").prop('disabled',false);
              }  
              if(data != 0 && id_temp.length > 3 && id_temp.length < 20 && name_temp != "" 
                      && tel_temp != "" && email_temp != "" && birth_temp != "" 
            		  && pw_temp.length > 7 && pw_temp.length < 21
                 ) {
            	  $("#btn-save").prop('disabled',false);
              }

         } 		
      	 ,error : function() {
      		$("#btn-save").attr('disabled',true);
      		console.log("회원가입 실패");
         }
     });
   }
      
    function joinCheck() {
    var name_temp = $('#name').val();
	var pw_temp = $('#password').val();
	var birth_temp = $('#birth').val();
	var email_temp = $('#email').val();
	var tel_temp = $('#telephone').val();     
      
    if(name_temp == ""){
       // 이름 빈칸 검사
       $('#name').css('background-color', '#FAF0E6');
       $("#btn-save").prop('disabled',true);
    }  else {
       $("#name_check").text("ok");
       $("#name_check").css("color", "#556B2F"); 
       $("#btn-save").prop('disabled',false);
    }

    if(pw_temp.length < 8 || pw_temp.length > 20){
       // 비밀번호 길이 검사
       $('#pw_check').text('비밀번호는 8 ~ 20 자리 수로 입력해주세요 :)');
       $('#pw_check').css('color', '#A52A2A');
       $("#btn-save").prop('disabled',true);
    }  else { 
       $("#pw_check").text("ok");
       $("#pw_check").css("color", "#556B2F"); 
       $("#btn-save").prop('disabled',false);
    }

    if(birth_temp == ""){
       //생년월일 빈칸 검사
      $('#birth').css('background-color', '#FAF0E6');
      $("#btn-save").prop('disabled',true);
    } else {
      $("#birth_check").text("ok");
      $("#birth_check").css("color", "#556B2F");
      $("#btn-save").prop('disabled',false);
     }

    if(email_temp == ""){
        $('#email').css('background-color', '#FAF0E6');
        $("#btn-save").prop('disabled',true);
     }  else {
    	$("#email_check").text("ok");
        $("#email_check").css("color", "#556B2F");
        $("#btn-save").prop('disabled',false);
     }
  
    if(tel_temp == ""){
        $('#telephone').css('background-color', '#FAF0E6');
        $("#btn-save").prop('disabled',true);
     }  else {
    	$("#tel_check").text("ok");
        $("#tel_check").css("color", "#556B2F");
        $("#btn-save").prop('disabled',false);
     }   
	}  
</script>
<script src="/js/user.js"></script>
<%@ include file="../layout/footer.jsp"%>