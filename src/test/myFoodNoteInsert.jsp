<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">

<title>EATS TIME - 나의 식도락 노트 등록</title>

<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<link
	href="https://fonts.googleapis.com/css?family=Poppins:100,200,300,400,500,600,700,800,900"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css?family=Great+Vibes&display=swap"
	rel="stylesheet">

<link rel="stylesheet"
	href="/resources/css/open-iconic-bootstrap.min.css">
<link rel="stylesheet" href="/resources/css/animate.css">

<link rel="stylesheet" href="/resources/css/owl.carousel.min.css">
<link rel="stylesheet" href="/resources/css/owl.theme.default.min.css">
<link rel="stylesheet" href="/resources/css/magnific-popup.css">

<link rel="stylesheet" href="/resources/css/aos.css">

<link rel="stylesheet" href="/resources/css/ionicons.min.css">

<link rel="stylesheet" href="/resources/css/bootstrap-datepicker.css">
<link rel="stylesheet" href="/resources/css/jquery.timepicker.css">

<link rel="stylesheet" href="/resources/css/flaticon.css">
<link rel="stylesheet" href="/resources/css/icomoon.css">
<link rel="stylesheet" href="/resources/css/style.css">
<link rel="stylesheet" href="/resources/css/css/sidebar.css">
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.2.0/css/all.css">

<!-- 커스텀 css -->
<link rel="stylesheet" href="/resources/css/css/custom.css">

<!-- Google font -->
<style>
@import
	url('https://fonts.googleapis.com/css2?family=Do+Hyeon&family=Nanum+Gothic&display=swap')
	;
</style>
</head>

<body>
	<!-- nav -->
	<div class="py-1 bg-black top">
		<div class="container">
			<div
				class="row no-gutters d-flex align-items-start align-items-center px-md-0">
				<div class="col-lg-12 d-block">
					<div class="row d-flex"></div>
				</div>
			</div>
		</div>
	</div>
	<nav
		class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light"
		id="ftco-navbar">
		<div class="container">
			<a class="navbar-brand" href="/"
				style="font-family: 'Do Hyeon', sans-serif; font-size: 25px">Eat's
				Time</a>
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#ftco-nav" aria-controls="ftco-nav"
				aria-expanded="false" aria-label="Toggle navigation">
				<span class="oi oi-menu"></span> Menu
			</button>

			<div class="collapse navbar-collapse" id="ftco-nav"
				style="font-family: 'Do Hyeon', sans-serif;">
				<ul class="navbar-nav ml-auto">
					<li class="nav-item"><a href="/restaurant" class="nav-link"
						style="font-size: 19px; letter-spacing: 1px;"> Restaurant</a></li>
					<li class="nav-item"><a href="/contact" class="nav-link"
						style="font-size: 19px; letter-spacing: 1px;"> Contact</a></li>
					<li class="nav-item"><a href="/myPage" class="nav-link"
						style="font-size: 19px; letter-spacing: 1px;"> 마이페이지</a></li>
					<li class="nav-item cta"><a href="/login" class="nav-link"
						style="font-size: 19px; letter-spacing: 1px; padding-top: 5px; padding-bottom: 5px; margin-top: 8px;">로그인</a></li>
				</ul>
			</div>
		</div>
	</nav>
	<!-- END nav -->

	<!--  위에 배너 -->
	<section class="hero-wrap hero-wrap-2"
		style="background-image: url(/resources/images/bg_3.jpg); ); width: 100%; height: 120px;"
		data-stellar-background-ratio="0.5">
		<div class="overlay"></div>
		<div class="container" style="height: 20%;">
			<div
				class="row no-gutters slider-text align-items-end justify-content-center">

				<p class="breadcrumbs">
					<span class="mr-2"></span>
				</p>
			</div>
		</div>
	</section>

	<!-- 사이드 바 -->
	<div class="nice-nav ho">
		<div class="user-info clear">
			<div class="navbar-brand"
				style="font-family: 'Do Hyeon', sans-serif; font-size: 25px; color: black; letter-spacing: 1px;">마이페이지</div>
		</div>

		<div class="navbar-title-dash">
			<a href="/myPage">대시보드</a>
		</div>
		<!-- my-page-guest -->
		<div class="navbar-title">게스트</div>
		<div class="clear"></div>
		<ul class="my-page-guest" style="">
			<li class="page-list"><a href="/myPageLikeSetting">좋아요 한 가게</a></li>
			<li class="page-list"><a href="/myFoodNoteSetting">나의 식도락 노트</a></li>
		</ul>

		<!-- my-page-owner -->
		<div class="navbar-title">가게 주인</div>
		<ul class="my-page-owner" style="list-style: none; padding-left: 0px;">
			<li class="page-list"><a href="/subscriber">나의 가게구독자</a></li>
			<li class="page-list"><a href="/rsSetting">가게설정</a></li>
			<li class="page-list"><a href="/menuSetting">메뉴관리</a></li>
		</ul>

		<!-- my-page-owner -->
		<ul class="my-page-other" style="list-style: none; padding-left: 0px;">
			<li class="page-list-other"><a href="/userSetting">개인정보관리</a></li>
			<li class="page-list-other"><a href="/userLeave">회원탈퇴</a></li>
		</ul>
	</div>



	<!-- section -->
	<!-- 가게등록 타이틀 -->
	<section class="container"
		style="margin-top: 30px; padding-left: 55px; padding-bottom: 20px;">
		<div class="heading-section ftco-animate mb-5">
			<h2 class="mb-4"
				style="font-family: 'Do Hyeon', sans-serif; letter-spacing: 3px; font-weight: 600;">나의
				식도락노트 등록  <i class="far fa-sticky-note"></i></h2>
		</div>
	</section>

	<!-- 새로운 한 개의 노트등록 -->
	<section>
		<div class="container"
			style="width: 2000px; height: 600px; padding-left: 60px;">
			<form action="#">
				<div class="text d-flex align-items-center ftco-animate">
					<div style="padding-top: 30px; z-index: 999;">
						<div class="row">
							<!-- 노트 정보 등록 -->
							<!-- 노트 등록일은 등록 시 자동 저장하도록 한다 -->
							<div class="col-md-6">
								<div class="form-group">
									<label for="noteName"
										style="font-family: 'Nanum Gothic', sans-serif; font-size: 17px; font-weight: 600; color: black; letter-spacing: 1px;">노트
										제목</label> <input type="text" class="form-control"
										placeholder="ex) 20자 이내로 작성해주세요~">
								</div>
							</div>
							<div class="col-md-8">
								<div class="form-group">
									<label for="noteText"
										style="font-family: 'Nanum Gothic', sans-serif; font-size: 17px; font-weight: 600; color: black; letter-spacing: 1px;">노트내용
									</label> 
									<p><textarea rows="3" cols="55" placeholder="40자 이내로 짧게 작성해주세요~"
									style="font-family: 'Nanum Gothic', sans-serif; font-size: 17px; border-color: #ddd;"></textarea></p>
								</div>
							</div>
							<div class="col-md-12 mt-3">
								<div class="form-group">
									<input type="submit" value="등록하기"
										class="btn btn-outline-info py-3 px-5" 
										style="width: 523px; font-family: 'Nanum Gothic', sans-serif; font-size: 17px; font-weight: 600; letter-spacing: 1px;">
								</div>
							</div>
						</div>
					</div>
				</div>
			</form>
		</div>
	</section>


	<!-- footer -->
	<footer class="ftco-footer ftco-bg-dark ftco-section"
		style="margin-top: 16%;">
		<div class="container">
			<div class="row">
				<div class="col-md-6 col-lg-4">
					<div class="ftco-footer-widget mb-4">
						<h2 class="ftco-heading-2">Eat's Time</h2>
						<p style="font-family: 'Nanum Gothic', sans-serif;">
							하루 세끼 밥을 먹을 때가<br /> 가장 행복한 개발자들이 만든 사이트
						</p>
						<ul
							class="ftco-footer-social list-unstyled float-md-left float-lft mt-3">
							<li class="ftco-animate"><a href="#"><span
									class="icon-twitter"></span></a></li>
							<li class="ftco-animate"><a href="#"><span
									class="icon-facebook"></span></a></li>
							<li class="ftco-animate"><a href="#"><span
									class="icon-instagram"></span></a></li>
						</ul>
					</div>
				</div>
				<div class="col-md-6 col-lg-4">
					<div class="ftco-footer-widget mb-4">
						<h2 class="ftco-heading-2">
							<a href="/teamMember">Our Team</a>
						</h2>
						<ul class="list-unstyled open-hours">
							<li class="d-flex"
								style="font-family: 'Nanum Gothic', sans-serif;"><span>윤석원</span><span>
									McDonald</span></li>
							<li class="d-flex"
								style="font-family: 'Nanum Gothic', sans-serif;"><span>신준석</span><span>
									Burger Shin</span></li>
							<li class="d-flex"
								style="font-family: 'Nanum Gothic', sans-serif;"><span>조은비</span><span>
									Foodie Cho</span></li>
							<li class="d-flex"
								style="font-family: 'Nanum Gothic', sans-serif;"><span>조중우</span><span>
									Burger Meister</span></li>
						</ul>
					</div>
				</div>
				<div class="col-md-6 col-lg-4">
					<div class="ftco-footer-widget mb-4">
						<h2 class="ftco-heading-2">Project</h2>
						<p style="font-family: 'Nanum Gothic', sans-serif;">
							Eat's Time은 개인의 라이프스타일에<br> 맞는 음식점을 제공해주는 서비스입니다<br>
							오늘도 길거리에서 가게를 찾아 서성이는 당신을 위해...♡
						</p>
						<form action="#" class="subscribe-form">
							<div class="form-group"
								style="font-family: 'Do Hyeon', sans-serif; letter-spacing: 7px;">
								<input type="button" class="form-control mb-2 text-center"
									value="프로젝트 디테일"> <input type="button"
									value="구현기능 상세보기" class="form-control submit px-3">
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</footer>

	<!--     loader -->
	<script src="/resources/js/jquery.min.js"></script>
	<script src="/resources/js/jquery-migrate-3.0.1.min.js"></script>
	<script src="/resources/js/popper.min.js"></script>
	<script src="/resources/js/bootstrap.min.js"></script>
	<script src="/resources/js/jquery.easing.1.3.js"></script>
	<script src="/resources/js/jquery.waypoints.min.js"></script>
	<script src="/resources/js/jquery.stellar.min.js"></script>
	<script src="/resources/js/owl.carousel.min.js"></script>
	<script src="/resources/js/jquery.magnific-popup.min.js"></script>
	<script src="/resources/js/aos.js"></script>
	<script src="/resources/js/jquery.animateNumber.min.js"></script>
	<script src="/resources/js/bootstrap-datepicker.js"></script>
	<script src="/resources/js/jquery.timepicker.min.js"></script>
	<script src="/resources/js/scrollax.min.js"></script>
	<script src="/resources/js/main.js"></script>
	<script src="/resources/js/my-page.js"></script>
	<script src="https://use.fontawesome.com/releases/v5.2.0/js/all.js"></script>
	
	<!-- kakao map -->
	<script
		src="https://dapi.kakao.com/v2/maps/sdk.js?appkey=92d9c10161021bab204be81cc3cb8951&libraries=clusterer"></script>
	<script>
		//  지도의 첫화면에 좌표를 설정한다
		var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
		mapOption = {
			center : new kakao.maps.LatLng(37.560821, 126.969026), // 지도의 중심좌표
			level : 3, // 지도의 확대 레벨
			mapTypeId : kakao.maps.MapTypeId.ROADMAP
		// 지도종류
		};

		// 지도를 생성한다 
		var map = new kakao.maps.Map(mapContainer, mapOption);
		// 마커 클러스터러를 생성한다 
		var clusterer = new kakao.maps.MarkerClusterer({
			map : map, // 마커들을 클러스터로 관리하고 표시할 지도 객체 
			averageCenter : true, // 클러스터에 포함된 마커들의 평균 위치를 클러스터 마커 위치로 설정 
			minLevel : 10
		// 클러스터 할 최소 지도 레벨 
		});

		var data = [
				[ 37.559075, 126.965231,
						'<div style="padding 5px">인포윈도우 표시</div>' ],
				[ 37.563579, 126.975410,
						'<div style="padding 5px">인포윈도우 표시2</div>' ] ]

		// 마커들을 클러스트러에 저장하기 위해 마커들을 묶을 변수를 저장한다
		var markers = [];
		for (var i = 0; i < data.length; i++) {
			// 지도에 마커를 생성하고 표시한다
			var marker = new kakao.maps.Marker({
				position : new kakao.maps.LatLng(data[i][0], data[i][1]),
				map : map
			// 마커를 표시할 지도 객체
			});

			var iwContent = data[i][2]; // 인포윈도우에 표출될 내용으로 HTML 문자열이나 document element가 가능하다

			// 인포윈도우를 생성합니다
			var infowindow = new kakao.maps.InfoWindow({
				content : iwContent
			});

			markers.push(marker); // 매번 생성된 마커들을 markers안으로 push 해준다.
			
			// 마커에 mouseover 이벤트와 mouseout 이벤트를 등록한다
			// 이벤트 리스너로는 클로저를 만들어 등록한다 
			// for문에서 클로저를 만들어 주지 않으면 마지막 마커에만 이벤트가 등록된다
			kakao.maps.event.addListener(marker, 'mouseover', makeOverListener(
					map, marker, infowindow));
			kakao.maps.event.addListener(marker, 'mouseout',
					makeOutListener(infowindow));
		}

		clusterer.addMarkers(markers); // 마커들을 cluster 에 넣어 지도에 표시해준다.
		
		// 인포윈도우를 표시하는 클로저를 만드는 함수
		function makeOverListener(map, marker, infowindow) {
		    return function() {
		        infowindow.open(map, marker);
		    };
		}

		// 인포윈도우를 닫는 클로저를 만드는 함수
		function makeOutListener(infowindow) {
		    return function() {
		        infowindow.close();
		    };
		}
	</script>

</body>
</html>
