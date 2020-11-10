<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../layout/tabHeader.jsp"%>
<%@ include file="../layout/banner.jsp"%>

<!-- 가게 위치 지도 -->
<section class="ftco-section">
	<div class="container ">

		<!-- 탭 메뉴 -->
		<section class="et-hero-tabs" style="padding-top: 40px;">
			<div class="row">
				<div class="col-md-6 ftco-animate">
					<label for="rsMap"></label>
					<div id="map" style="width: 1040px; height: 480px;"></div>
				</div>
				<input type="hidden" id="latitude" value="${store.latitude }">
				<input type="hidden" id="longitude" value="${store.longitude }">
				<!-- 가게사진 -->
				<!-- <div class="col-md-6 ftco-animate">
					<img src="/images/image_2.jpg" alt="Image placeholder"
						style="width: 545px; height: 350px; margin-top: 34px; padding-right: 20px;">
				</div> -->
			</div>
			<div class="et-hero-tabs-container">
				<a class="et-hero-tab" href="#tab-es6">가게 정보</a> <a
					class="et-hero-tab" href="#tab-flexbox">메뉴</a>
			</div>
		</section>

		<!-- 가게 정보 -->
		<main class="et-main">
			<section class="et-slide et1" id="tab-es6">
				<h3 class="mb-5 h4 font-weight-bold p-4 bg-light tab-bar">${store.name }</h3>
				<p>
					<span class="et_icon"><i class="fas fa-phone"></i></span> <span
						class="store_et1">가게 번호 :</span> <span class="store_info">
						${store.tel }</span>
				</p>
				<hr>
				<p>
					<span class="et_icon"><i class="fas fa-location-arrow"></i></span>
					<span class="store_et1">가게 위치 :</span> <span class="store_info">
						${store.location }</span>
				</p>
				<hr>
				<p>
					<span class="et_icon"><i class="far fa-clock"></i></span><span
						class="store_et2">운영 시간 :</span> <span class="store_info">
						${store.time }</span>
				</p>
				<hr>
				<p>
					<span class="et_icon"><i class="far fa-user"></i></span><span
						class="store_et5">수용가능 인원 :</span> <span class="store_info2">
						${store.capa }</span>
				</p>
				<hr>
				<p>
					<span class="et_icon"><i class="fas fa-store"></i></span><span
						class="store_et3">공간 타입 :</span> <span class="store_info">
						${store.space }</span>
				</p>
				<hr>
				<p>
					<span class="et_icon"><i class="fas fa-paw"></i></span><span
						class="store_et4">반려견 동반 :</span> <span class="store_info3">
						${store.animal }</span>
				</p>
				<hr>
				<p>
					<span class="et_icon"><i class="fas fa-wheelchair"></i></span><span
						class="store_et4">휠체어 출입 :</span> <span class="store_info3">
						${store.wheel }</span>
				</p>
			</section>

			<!-- 메뉴 -->
			<section class="et-slide et1" id="tab-flexbox">
				<h3 class="mb-5 h4 font-weight-bold p-4 bg-light tab-bar">메뉴</h3>
				<section style="margin-top: 40px;">
					<div class="row">
						<c:choose>
							<c:when test="${!empty menu }">
								<c:forEach var="menu" items="${menu }">
									<div class="col-md-3 ftco-animate">
										<div class="blog-entry">
											<a href="#" class="block-menu"
												style="background-image: url(/images/breakfast-3.jpg);">
											</a>
											<div class="text pt-3 pb-2 px-2">
												<h3 class="heading">
													<label for="menuName" style="color: black;">${menu.name }</label>
												</h3>
												<div class="meta">
													<div>
														<label for="menuPrice"> 가격: ${menu.price } <br>알러지
															유발재료:<br>${menu.allergy } <br>비건푸드 여부:
															${menu.vegan }
														</label>
													</div>
												</div>
											</div>
										</div>
									</div>
								</c:forEach>
							</c:when>
						</c:choose>
					</div>
				</section>
			</section>
		</main>

		<!-- 댓글 -->
		<div class="pt-5 mt-5 ftco-animate" style="margin-bottom: 75%;">
			<div style="padding-left: 30px;">
				<h3 class="mb-5 h4 font-weight-bold p-4 bg-light tab-bar"
					style="width: 1050px;">댓글</h3>
			</div>
			<c:choose>
				<c:when test="${empty principal }"></c:when>
				<c:otherwise>
					<form class="comment-form">
						<input type="hidden" id="storeId" value="${store.id }">
						<textarea name="comment" class="comment-text" id="comment"></textarea>
						<button type="button" class="btn btn-secondary"
							id="btn_reply_save">댓글 달기</button>
					</form>
				</c:otherwise>
			</c:choose>
			<!-- 댓글 입력 창 -->
			<c:choose>
				<c:when test="${empty reply }">
					<div class="meta mb-2 no-comment">아직 작성된 댓글이 없습니다. &nbsp; 첫번째
						댓글을 달아주세요 :></div>
				</c:when>
				<c:otherwise>
					<c:forEach var="reply" items="${reply }">
						<!-- 입력된 댓글 출력 -->
						<ul class="comment-list">
							<li class="comment">
								<div class="comment-body">
									<h3>${reply.writer }</h3>
									<p>${reply.createDate }</p>
									<p>${reply.content }</p>
								</div>
							</li>
						</ul>
					</c:forEach>
					<!-- END 댓글 -->
				</c:otherwise>
			</c:choose>
		</div>
	</div>
</section>
<!-- kakao map -->
<script
	src="https://dapi.kakao.com/v2/maps/sdk.js?appkey=92d9c10161021bab204be81cc3cb8951"></script>

<script>
	var latitude = document.getElementById('latitude').value;
	var longitude = document.getElementById('longitude').value;
	var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
	mapOption = {
		center : new kakao.maps.LatLng(latitude, longitude), // 지도의 중심좌표
		level : 3
	// 지도의 확대 레벨
	};

	var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다
	var markerPosition = new kakao.maps.LatLng(latitude, longitude);

	// 마커 생성
	var marker = new kakao.maps.Marker({
		position : markerPosition
	});

	marker.setMap(map);
</script>
<script src="/js/tab-menu.js"></script>
<script src="/js/my/reply.js"></script>
<%@ include file="../layout/footer.jsp"%>