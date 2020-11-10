<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../../layout/header.jsp"%>
<%@ include file="../../layout/banner.jsp"%>
<%@ include file="../../layout/sidebar.jsp"%>

<!-- 메뉴등록  -->
<section class="container"
	style="margin-top: 40px; padding-bottom: 0; padding-left: 55px;">
	<div class="heading-section ftco-animate mb-5">
		<h2 class="mb-4"
			style="font-family: 'Do Hyeon', sans-serif; letter-spacing: 3px; font-weight: 600;">새로운
			메뉴등록</h2>
	</div>
</section>

<!-- 새로운 한 개의 메뉴등록 -->
<section>
	<div class="container"
		style="width: 1200px; height: 600px; padding-left: 55px;">
		<form>
			<div class="menus d-sm-flex ftco-animate">
				<div class="menu-img img"
					style="background-image: url(/images/breakfast-3.jpg);"></div>
					
				<div class="text d-flex align-items-center">
					<div style="margin-left: 30px; z-index: 999;">
						<div class="row">
							<div class="col-md-6">
								<div class="form-group">
									<label for="name" class="menu-form"> 메뉴
										이름</label> <input type="text" id="name" class="form-control"
										placeholder="ex)비빔밥">
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group">
									<label for="price" class="menu-form"> 메뉴
										가격</label> <input type="number" id="price" class="form-control"
										placeholder="ex)10000">
								</div>
							</div>
							<div class="col-md-12">
								<div class="form-group">
									<label for="allergy" class="menu-form"> 알레르기
										유발재료</label> <input type="text"  id="allergy" class="form-control"
										placeholder="ex)유제품">
								</div>
							</div>
							<div class="col-md-12">
								<div class="form-group form-check">
									<label for="vegan">비건푸드 여부</label>
									<div>
										완전 채식 <input type="radio" name="type" id="vegan" value="완전 채식"> &nbsp;&nbsp;
										유제품 포함 <input type="radio" name="type" id="vegan" value="유제품 포함"> &nbsp;&nbsp;
										비건푸드가 아닙니다 <input type="radio" name="type" id="vegan" value="해당없음">
									</div>
								</div>
							</div>
							<div class="col-md-12 mt-3">
								<div class="form-group">
									<button type="button" id="btn-menu-insert"
										class="btn btn-outline-info py-3 px-5" id="btn_signup"
										style="width: 523px; font-family: 'Nanum Gothic', sans-serif; font-size: 17px; font-weight: 600; letter-spacing: 1px;">
									등록하기
									</button>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</form>
	</div>
</section>
<script>
$("#gdsImg").change(function(){
    if(this.files && this.files[0]) {
     var reader = new FileReader;
     reader.onload = function(data) {
      $(".select_img img").attr("src", data.target.result).width(300);        
     }
     reader.readAsDataURL(this.files[0]);
    }
   });
</script>
<script src="/js/my/menuinsert.js"></script>
<%@ include file="../../layout/footer.jsp"%>