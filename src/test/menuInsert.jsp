<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">

<title>EATS TIME - 새로운 메뉴등록</title>

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
	<!-- 메뉴등록 타이틀 -->
	<section class="container"
		style="margin-top: 30px; padding-left: 55px; padding-bottom: 20px;">
		<div class="heading-section ftco-animate mb-5">
			<h2 class="mb-4"
				style="font-family: 'Do Hyeon', sans-serif; letter-spacing: 3px; font-weight: 600;">새로운 메뉴등록</h2>
		</div>
	</section>

	<!-- 새로운 한 개의 메뉴등록 -->
	<section>
		<div class="container" style="width: 2000px; height: 600px; padding-left: 60px;">
			<form action="#">
				<div class="menus d-sm-flex ftco-animate">
					<div class="menu-img img"
						style="background-image: url(/resources/images/breakfast-3.jpg);"></div>
					<div class="text d-flex align-items-center">
						<div style="margin-left: 30px; z-index: 999;">
							<div class="row" >
								<div class="col-md-6">
									<div class="form-group">
										<label for="menuName"
											style="font-family: 'Nanum Gothic', sans-serif; font-size:17px; font-weight:600; color: black; letter-spacing: 1px;"
										>메뉴 이름</label> <input type="text"
											class="form-control" placeholder="ex)비빔밥">
									</div>
								</div>
								<div class="col-md-6">
									<div class="form-group">
										<label for="menuPrice"
											style="font-family: 'Nanum Gothic', sans-serif; font-size:17px; font-weight:600; color: black; letter-spacing: 1px;"
										>메뉴 가격</label> <input type="text"
											class="form-control" placeholder="ex)10000">
									</div>
								</div>
								<div class="col-md-12">
									<div class="form-group">
										<label for="allergicMaterial"
											style="font-family: 'Nanum Gothic', sans-serif; font-size:17px; font-weight:600; color: black; letter-spacing: 1px;"
										>알레르기 유발재료</label> <input
											type="text" class="form-control" placeholder="ex)유제품">
									</div>
								</div>
								<div class="col-md-12">
								<div class="form-group form-check">
									<label for="rsWheel">비건푸드 여부</label>
									<div>
										완전 채식 <input type="radio">
										&nbsp;&nbsp;유제품 포함 <input type="radio">
										&nbsp;&nbsp;비건푸드가 아닙니다 <input type="radio">
									</div>
								</div>
							    </div>
								<div class="col-md-12 mt-3">
									<div class="form-group">
										<input type="submit" value="등록하기"
											class="btn btn-outline-info py-3 px-5" id="btn_signup"
											style="width: 523px; font-family: 'Nanum Gothic', sans-serif; font-size:17px; font-weight:600; letter-spacing: 1px;">
									</div>
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
		style="margin-top: 10%;">
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

</body>
</html>
