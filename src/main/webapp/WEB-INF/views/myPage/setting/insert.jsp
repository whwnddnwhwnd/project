<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../../layout/header.jsp"%>
<%@ include file="../../layout/banner.jsp"%>
<%@ include file="../../layout/sidebar.jsp"%>

<!-- section -->
<!-- 가게등록 타이틀 -->
<section class="container"
	style="margin-top: 30px; padding-left: 55px; padding-bottom: 20px;">
	<div class="heading-section ftco-animate mb-5">
		<h2 class="mb-4"
			style="font-family: 'Do Hyeon', sans-serif; letter-spacing: 3px; font-weight: 600;">나의
			가게등록</h2>
	</div>
</section>

<!-- 새로운 한 개의 가게등록 -->
<section>
	<div class="container"
		style="width: 1650px; height: 1500px; padding-left: 20px; border: 1px solid #ddd;">
		<form action="#">
			<div class="text d-flex align-items-center ftco-animate">
				<div style="padding-top: 30px; z-index: 999;">
					<div class="row">
						<!-- 가게 사진 등록 -->
						<div class="col-md-12">
							<div class="form-group">
								<label for="rsPic"
									style="font-family: 'Nanum Gothic', sans-serif; font-size: 17px; font-weight: 600; color: black; letter-spacing: 1px;">가게
									사진</label>
								<div>
									<img src="/images/image_1.jpg" alt="restaurant_image"
										style="width: 535px; height: 300px; border: 2px solid #ddd;">
								</div>
							</div>
						</div>
						<!-- 가게 상세정보 등록 -->
						<div class="col-md-6">
							<div class="form-group">
								<label for="rsName"
									style="font-family: 'Nanum Gothic', sans-serif; font-size: 17px; font-weight: 600; color: black; letter-spacing: 1px;">가게
									이름</label> <input type="text" class="form-control" id="name"
									placeholder="ex) 별다방커피">
							</div>
						</div>
						<div class="col-md-6">
							<div class="rsType">
								<label for="rsFoodType"
									style="font-family: 'Nanum Gothic', sans-serif; font-size: 17px; font-weight: 600; color: black; letter-spacing: 1px;">업종
								</label> <input type="text" class="form-control" id="type"
									placeholder="ex) 커피전문점">
							</div>
						</div>
						<div class="col-md-12">
							<div class="form-group">
								<label for="rsDesription"
									style="font-family: 'Nanum Gothic', sans-serif; font-size: 17px; font-weight: 600; color: black; letter-spacing: 1px;">가게
									한줄 소개</label> <input type="text" style="width: 1100px; height: 50px;"
									id="intro" class="form-control"
									placeholder="ex) 커피를 좋아하는 사람들을 위한 아득한 공간">
							</div>
						</div>
						<div class="col-md-6">
							<div class="form-group">
								<label for="rsPhone"
									style="font-family: 'Nanum Gothic', sans-serif; font-size: 17px; font-weight: 600; color: black; letter-spacing: 1px;">가게번호</label>
								<input type="text" class="form-control" id="tel"
									placeholder="ex) 070-1234-5678">
							</div>
						</div>
						<div class="col-md-6">
							<div class="form-group">
								<label for="rsHour"
									style="font-family: 'Nanum Gothic', sans-serif; font-size: 17px; font-weight: 600; color: black; letter-spacing: 1px;">운영시간</label>
								<input type="text" class="form-control" id="time"
									placeholder="ex) 15:00 - 23:00">
							</div>
						</div>
						<div class="col-md-12">
							<div class="form-group">
								<label for="rsAccommodate"
									style="font-family: 'Nanum Gothic', sans-serif; font-size: 17px; font-weight: 600; color: black; letter-spacing: 1px;">수용가능
									인원</label> <input type="text" class="form-control" id="capa"
									placeholder="ex) 30명">
							</div>
						</div>
						<!-- check box -->
						<div class="col-md-4">
							<div class="form-group form-check">
								<label for="rsPet">반려견 동반 가능 여부</label>
								<div>
									<input type="radio" name="animal" id="animal" value="o"><span
										class="left">가능</span><br> <input type="radio"
										name="animal" id="animal" value="x"><span class="left">불가능</span>
								</div>
							</div>
						</div>
						<div class="col-md-4">
							<div class="form-group form-check">
								<label for="rsWheel">휠체어 출입 가능 여부</label>
								<div>
									<input type="radio" name="wheel" id="wheel" value="o"><span
										class="left">가능</span><br> <input type="radio"
										name="wheel" id="wheel" value="x"><span class="left">불가능</span>
								</div>
							</div>
						</div>
						<div class="col-md-4">
							<div class="form-group form-check">
								<label for="rsSpaceType">공간타입</label>
								<div>
									<input type="checkbox" class="space" name="space" id="space"
										value="좌식공간"><span class="left">좌식공간</span><br> <input
										type="checkbox" class="space" name="space" id="space"
										value="입식공간"><span class="left">입식공간</span><br>
									<input type="checkbox" class="space" name="space" id="space"
										value="야외공간"><span class="left">야외공간</span><br> <input
										type="checkbox" class="space" name="space" id="space"
										value="포장전문"><span class="left">포장전문</span>
								</div>
							</div>
						</div>
						<div class="col-md-8">
							<div class="form-group">
								<label for="postcode"
									style="font-family: 'Nanum Gothic', sans-serif; font-size: 17px; font-weight: 600; color: black; letter-spacing: 1px;">가게
									위치 등록</label> <input type="text" id="postcode" style="height: 50px;"
									class="form-control" readonly size="10">
							</div>
						</div>
						<div class="col-md-4">
							<div class="form-group">
								<button type="button" class="btn btn-outline-secondary px-5"
									onclick="execDaumPostcode();"
									style="height: 52px; margin-top: 41px; font-family: 'Nanum Gothic', sans-serif; font-size: 17px; font-weight: 600; letter-spacing: 1px;">우편번호
									검색</button>
							</div>
						</div>
						<div class="col-md-8">
							<div class="form-group">
								<label for="location"
									style="font-family: 'Nanum Gothic', sans-serif; font-size: 17px; font-weight: 600; color: black; letter-spacing: 1px;">
									가게 주소</label> <input type="text" id="location" placeholder="도로명 주소" style="height: 50px;"
									class="form-control" readonly size="10">
							</div>
						</div>
						<div class="col-md-4">
							<div class="form-group">
								<label for="detailLocation"
									style="font-family: 'Nanum Gothic', sans-serif; font-size: 17px; font-weight: 600; color: black; letter-spacing: 1px;">
									</label> <input type="text" id="detailLocation" style="height: 50px; margin-top: 8px;"
									class="form-control" readonly size="10" placeholder="(상세주소)">
							</div>
						</div>
						<input type="hidden" id="longitude" value="">
						<input type="hidden" id="latitude" value="">
						<div class="col-md-12 mt-3">
							<div class="form-group">
								<button type="button" class="btn btn-outline-info py-3 px-5"
									id="btn-store-insert"
									style="width: 523px; font-family: 'Nanum Gothic', sans-serif; font-size: 17px; font-weight: 600; letter-spacing: 1px;">등록하기</button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</form>
	</div>
</section>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=1a63398a59283f35adae519a9d9301ee"></script>
<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script src="/js/my/location.js"></script>
<script src="/js/my/storeinsert.js"></script>
<%@ include file="../../layout/footer.jsp"%>