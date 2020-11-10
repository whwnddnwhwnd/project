let index ={
   init:function(){
      $("#btn-save").on("click",()=>{    
      	if(check() != 0){
         	this.save(); 
         	} 
      });
   }
   
   ,save:function(){
      let data ={
          username:$("#username").val()
         ,name:$("#name").val()
         ,password:$("#password").val()
         ,birth:$("#birth").val()
         ,email:$("#email").val()
         ,telephone:$("#telephone").val()
         ,gender:$("#gender").val()
         
      }
      $.ajax({
         type:"post"
         ,url:"/auth/joinProc"
         ,data:JSON.stringify(data)
         ,contentType:"application/json; charset=utf-8"
         ,dataType:"json" 
      }).done(function(result){
      console.log(result)
      	if(result == 500){
      	alert("회원가입 실패!");
      	location.reload();
      	}else{
            alert("회원가입 성공");   
            location.href="/";
            }
      });
   }
}
index.init();

function check(){
	var name_temp = $('#name').val();
	var pw_temp = $('#password').val();
	var birth_temp = $('#birth').val();
	var email_temp = $('#email').val();
	var tel_temp = $('#telephone').val();
	
	if(name_temp.length == 0){
		return 1;
	}else if(pw_temp.length == 0){
		return 1;
	}else if(pw_temp.length < 8 || pw_temp.length > 20 ){
		return 1;
	}
	 else if(birth_temp.length == 0){
		return 1;
	}else if(email_temp.length == 0){
		return 1;
	}else if(tel_temp.length == 0){
		return 1;
	}
	
	return 2;
}

