//daum 우편 api로 검색한 위치를 데이터베이스에 저장
    function execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                
                var addr = ''; // 주소 변수
                var extraAddr = ''; // 참고항목 변수

               
                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                    addr = data.roadAddress;
                } else { // 사용자가 지번 주소를 선택했을 경우(J)
                    addr = data.jibunAddress;
                }
            
                if(data.userSelectedType === 'R'){
                    // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                    // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                    if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                        extraAddr += data.bname;
                    }
                   
                    if(data.buildingName !== '' && data.apartment === 'Y'){
                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                    }
                  
                    if(extraAddr !== ''){
                        extraAddr = ' (' + extraAddr + ')';
                    }
                  
                    document.getElementById("detailLocation").value = extraAddr;
                
                } else {
                    document.getElementById("detailLocation").value = '';
                }

                
                document.getElementById('postcode').value = data.zonecode;
                document.getElementById("location").value = addr;
                
    			$.ajax({
    				//요청에 대한 정보
    				type: "GET",
    				url: "https://dapi.kakao.com/v2/local/search/address.json?page=1&size=10&query="+addr,
    				headers: {Authorization: "KakaoAK 167a0c69e00be2024bff83fb10f9799c"}
    				})
    				.done(function(msg){
    					console.log(msg.documents[0].x);
    					console.log(msg.documents[0].y);
    					console.log(msg.documents[0].address_name);
    					$('#longitude').val(msg.documents[0].x);
    					$('#latitude').val(msg.documents[0].y);
     					$.ajax({
    						type: "POST",
    						url: "/mypage/store/insert",
    						data: {
    							   longitude: msg.documents[0].x,
    							   latitude: msg.documents[0].y,
    							   location: msg.documents[0].address_name
    							   },
    						error: function(e){alert("주소검색 오류");console.log(e);}
    				});  
    				
            }); 
           }
        }).open();
  }
