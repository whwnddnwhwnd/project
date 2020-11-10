<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Eat's Time - 잇츠타임</title>
<meta charset="utf-8">
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

<!-- 커스텀 css 추가 -->
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
				style="font-family: 'Do Hyeon', sans-serif; font-size: 25px">Eat's Time</a>
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
	<!-- Section -->
	<section class="hero-wrap hero-wrap-2"
		style="background-image: url(/resources/images/bg_3.jpg); width: 100%; height: 120px;"
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

	<section class="container mt-3" style="max-width: 1200px;">
		<div class="container-fluid px-0">
			<div
				class="order-md-last ftco-animate makereservation p-4 p-md-5 pt-5">
				<div class="py-md-5">
					<div class="heading-section ftco-animate mb-5">
						<span class="subheading" style="font-family: 'Do Hyeon', sans-serif;">Sign up</span>
						<h2 class="mb-4" style="font-family: 'Do Hyeon', sans-serif; letter-spacing: 3px; font-weight: 600;">회원가입</h2>
					</div>
					<form action="#">
						<div class="row">
							<div class="col-md-6">
								<div class="form-group">
									<label for="userId">아이디</label> <input type="text"
										class="form-control" placeholder="아이디를 입력해주세요">
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group">
									<label for="userName">이름</label> <input type="text"
										class="form-control" placeholder="이름을 입력해주세요">
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group">
									<label for="userPw">비밀번호</label> <input type="text"
										class="form-control" placeholder="비밀번호">
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group">
									<label for="userPwck">비밀번호 확인</label> <input type="text"
										class="form-control" placeholder="비밀번호확인">
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group">
									<label for="userBirth">생년월일</label> <input type="text"
										class="form-control" placeholder="예)19961208">
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group">
									<label for="userEmail">이메일</label> <input type="text"
										class="form-control" placeholder="예)eatstime@naver.com">
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group">
									<label for="userPhone">휴대전화</label> <input type="text"
										class="form-control" placeholder="예)01012345678">
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group">
									<label for="userGender">성별</label>
									<div class="select-wrap one-third">
										<div class="icon">
											<span class="ion-ios-arrow-down"></span>
										</div>
										<select name="" id="" class="form-control">
											<option value="">성별</option>
											<option value="">남</option>
											<option value="">여</option>
										</select>
									</div>
								</div>
							</div>
							<div class="col-md-12 mt-3">
								<div class="form-group">
									<input type="submit" value="가입하기"
										class="btn btn-primary py-3 px-5" id="btn_signup"
										style="width: 523px; font-family: 'Nanum Gothic', sans-serif; font-size:17px; font-weight:600; letter-spacing: 1px;">
								</div>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</section>


	<!-- footer -->
	<footer class="ftco-footer ftco-bg-dark ftco-section">
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
	<script
		src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
	<script src="/resources/js/google-map.js"></script>
	<script src="/resources/js/main.js"></script>

</body>
</html>