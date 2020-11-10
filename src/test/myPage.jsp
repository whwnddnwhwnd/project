<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">

<title>EATS TIME - 마이페이지</title>

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

<!-- font awesome -->
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.2.0/css/all.css">

<!-- Google font -->
<style>
@import
	url('https://fonts.googleapis.com/css2?family=Do+Hyeon&family=Nanum+Gothic&display=swap')
	;

@import url(https://fonts.googleapis.com/earlyaccess/jejugothic.css);
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
					<li class="nav-item"><a href="/mypage" class="nav-link"
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

	<!-- open 지우면 바로 메뉴바가 나와있음 -->
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

	<!-- 대시보드 -->
	<section class="container"
		style="margin-top: 40px; padding-left: 55px;">
		<div class="heading-section ftco-animate mb-3">
			<h2 class="mb-3"
				style="font-family: 'Do Hyeon', sans-serif; letter-spacing: 3px; font-weight: 600;">대시보드</h2>
		</div>
	</section>

	<!-- 대시보드 - 회원정보 -->
	<section class="container">
		<div class="container"
			style="margin-left: 5px; margin-top: 5px; width: 250px; height: 250px;">
			<div class=" ftco-animate">
				<div class="blog-entry">
					<div class="text" style="padding-left: 22px; padding-top: 10px;">
						<span style="padding-left:60px; padding-bottom: 3px;"><i
							class="far fa-user fa-4x"></i></span>
						<br>
						<!-- 등록된 사용자 아이디 -->
						<h3 class="heading">
							<label for="userName" style="font-family: 'Nanum Gothic', sans-serif; color: black; padding-top: 5px; font-size: 20px;">&nbsp;&nbsp;안녕하세요 000 님</label>
						</h3>
						<!-- 등록된 사용자 이메일 -->
						<h3 class="heading">
						<i class="far fa-paper-plane"></i>
							<label for="userEmail"
								style="color: black; font-family: 'Nanum Gothic', sans-serif; font-weight: 600; font-size: 15px;">
								dmsql989@gmail.com</label>
						</h3>
						<!-- 등록된 사용자 번호 -->
						<h3 class="heading">
						<i class="fas fa-phone"></i>
							<label for="userPhone"
								style="color: black; font-family: 'Nanum Gothic', sans-serif; font-weight: 600; font-size: 15px;">
								010-9871-9770</label>
						</h3>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- 대시보드 숫자 -->
	<!-- 메뉴 수 -->
	<section class="container">
		<div class="row">
		<div class="container col-md-3"
			style="margin-top: 10px; margin-left: 15px; border: 1px solid #ddd; border-radius: 10px; width: 250px; height: 250px;">
			<div class=" ftco-animate">
				<div class="blog-entry">
					<div class="text" style="text-align:center; padding-top: 40px;">
						<!-- 총 메뉴 수 타이틀 -->
						<h3 class="heading">
							<label for="userMenu" style="font-family: 'Nanum Gothic', sans-serif; color: black; padding-top: 5px; font-size: 20px;">&nbsp;&nbsp;메뉴 수</label>
						</h3>
						<!-- 총 메뉴 수 -->
						<h3 class="heading">
							<label for="userMenuNum" style="font-family: 'Nanum Gothic', sans-serif; padding-right: 20px; font-size: 60px; color: black;">&nbsp;&nbsp;0</label>
						</h3>
					</div>
				</div>
			</div>
		</div>
		<div class="container col-md-3"
			style="margin-top: 10px; border: 1px solid #ddd; border-radius: 10px; width: 250px; height: 250px;">
			<div class=" ftco-animate">
				<div class="blog-entry">
					<div class="text" style="text-align:center; padding-top: 40px;">
						<!-- 총 좋아요 수 타이틀 -->
						<h3 class="heading">
							<label for="userMenu" style="font-family: 'Nanum Gothic', sans-serif; color: black; padding-top: 5px; font-size: 20px;">&nbsp;&nbsp;좋아요 수</label>
						</h3>
						<!-- 총 좋아요 수 -->
						<h3 class="heading">
							<label for="userMenuNum" style="font-family: 'Nanum Gothic', sans-serif; padding-right: 20px; font-size: 60px; color: black;">&nbsp;&nbsp;0</label>
						</h3>
					</div>
				</div>
			</div>
		</div>
		<div class="container col-md-3"
			style="margin-top: 10px; border: 1px solid #ddd; border-radius: 10px; width: 250px; height: 250px;">
			<div class=" ftco-animate">
				<div class="blog-entry">
					<div class="text" style="text-align:center; padding-top: 40px;">
						<!-- 총 방문 누적 수 타이틀 -->
						<h3 class="heading">
							<label for="userMenu" style="font-family: 'Nanum Gothic', sans-serif; color: black; padding-top: 5px; font-size: 20px;">&nbsp;&nbsp;총 방문 누적 수</label>
						</h3>
						<!-- 총 방문 누적 수 -->
						<h3 class="heading">
							<label for="userMenuNum" style="font-family: 'Nanum Gothic', sans-serif; padding-right: 20px; font-size: 60px; color: black;">&nbsp;&nbsp;0</label>
						</h3>
					</div>
				</div>
			</div>
		</div>
		<div class="container col-md-3"></div>
		</div>
	</section>
	
	<!-- footer -->
	<footer class="ftco-footer ftco-bg-dark ftco-section"
		style="margin-top: 60%;">
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
