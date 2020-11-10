<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
<title>EATS TIME - 가게</title>
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

<!-- font awesome -->
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.2.0/css/all.css">

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

	<!-- section -->
	<section class="ftco-section bg-light">

		<!-- 레스토랑 페이지 검색 바 -->
		<div class="container" style="padding-bottom: 50px;">
			<form method="get" action="/restaurant" class="form-inline mt-3">
				<select name="restaurantDivide" class="form-control mx-1 mt-2"
					style="font-family: 'Nanum Gothic', sans-serif; font-weight: 600;">
					<option class="rs-search" value="전체">전체</option>
					<option class="rs-search" value="가게명">가게</option>
					<option class="rs-search" value="음식명">메뉴</option>
				</select> <select name="searchType" class="form-control mx-1 mt-2"
					style="font-family: 'Nanum Gothic', sans-serif; font-weight: 600;">
					<option class="rs-search" value="최신순">최신순</option>
					<option class="rs-search" value="추천순">좋아요순</option>
				</select> <input type="text" name="search" class="form-control mx-1 mt-2"
					placeholder="내용을 입력하세요" size="50"
					style="font-family: 'Nanum Gothic', sans-serif; font-weight: 600;">
				<button type="submit" class="btn btn-primary mt-2"
					style="width: 70px; height: 50px; font-family: 'Nanum Gothic', sans-serif; font-weight: 600; letter-spacing: 1px;">검색</button>
			</form>
		</div>
		<!-- 가게 표시 -->
		<div class="container">
			<div class="row">
				<div class="col-md-4 ftco-animate">
					<div class="blog-entry">
						<a href="/rs-single" class="block-20"
							style="background-image: url(/resources/images/image_1.jpg);">
						</a>
						<div class="text pt-3 pb-4 px-4">
							<div class="meta">
								<div>
									가입일
								</div>
								<div>
									업종
								</div>
								<div style="float: right; padding-top: 4px;"><span style="color: red;"><i class="far fa-heart"></i></span>&nbsp;좋아요<span>&nbsp;3</span> </div>
							</div>
							<h1 class="heading">
								<a href="#">가게명</a>
							</h1>
							<div class="rating-stars">
								<span><i class="active icon-star"></i>&nbsp; 5.0</span>
							</div>
							<p class="clearfix">
								<a href="#" class="float-right meta-chat"><span
									class="icon-chat"></span> 3</a>
							</p>
						</div>
					</div>
				</div>
				<div class="col-md-4 ftco-animate">
					<div class="blog-entry">
						<a href="/rs-single" class="block-20"
							style="background-image: url(/resources/images/image_2.jpg);">
						</a>
						<div class="text pt-3 pb-4 px-4">
							<div class="meta">
								<div>
									가입일
								</div>
								<div>
									업종
								</div>
								<div style="float: right; padding-top: 4px;"><span style="color: red;"><i class="far fa-heart"></i></span>&nbsp;좋아요<span>&nbsp;3</span> </div>
							</div>
							<h1 class="heading">
								<a href="#">가게명</a>
							</h1>
							<div class="rating-stars">
								<span><i class="active icon-star"></i>&nbsp; 5.0</span>
							</div>
							<p class="clearfix">
								<a href="#" class="float-right meta-chat"><span
									class="icon-chat"></span> 3</a>
							</p>
						</div>
					</div>
				</div>
				<div class="col-md-4 ftco-animate">
					<div class="blog-entry">
						<a href="/rs-single" class="block-20"
							style="background-image: url(/resources/images/image_3.jpg);">
						</a>
						<div class="text pt-3 pb-4 px-4">
							<div class="meta">
								<div>
									가입일
								</div>
								<div>
									업종
								</div>
								<div style="float: right; padding-top: 4px;"><span style="color: red;"><i class="far fa-heart"></i></span>&nbsp;좋아요<span>&nbsp;3</span> </div>
							</div>
							<h1 class="heading">
								<a href="#">가게명</a>
							</h1>
							<div class="rating-stars">
								<span><i class="active icon-star"></i>&nbsp; 5.0</span>
							</div>
							<p class="clearfix">
								<a href="#" class="float-right meta-chat"><span
									class="icon-chat"></span> 3</a>
							</p>
						</div>
					</div>
				</div>
				<div class="col-md-4 ftco-animate">
					<div class="blog-entry">
						<a href="/rs-single" class="block-20"
							style="background-image: url(/resources/images/image_4.jpg);">
						</a>
						<div class="text pt-3 pb-4 px-4">
							<div class="meta">
								<div>
									가입일
								</div>
								<div>
									업종
								</div>
								<div style="float: right; padding-top: 4px;"><span style="color: red;"><i class="far fa-heart"></i></span>&nbsp;좋아요<span>&nbsp;3</span> </div>
							</div>
							<h1 class="heading">
								<a href="#">가게명</a>
							</h1>
							<div class="rating-stars">
								<span><i class="active icon-star"></i>&nbsp; 5.0</span>
							</div>
							<p class="clearfix">
								<a href="#" class="float-right meta-chat"><span
									class="icon-chat"></span> 3</a>
							</p>
						</div>
					</div>
				</div>
				<div class="col-md-4 ftco-animate">
					<div class="blog-entry">
						<a href="/rs-single" class="block-20"
							style="background-image: url(/resources/images/image_5.jpg);">
						</a>
						<div class="text pt-3 pb-4 px-4">
							<div class="meta">
								<div>
									가입일
								</div>
								<div>
									업종
								</div>
								<div style="float: right; padding-top: 4px;"><span style="color: red;"><i class="far fa-heart"></i></span>&nbsp;좋아요<span>&nbsp;3</span> </div>
							</div>
							<h1 class="heading">
								<a href="#">가게명</a>
							</h1>
							<div class="rating-stars">
								<span><i class="active icon-star"></i>&nbsp; 5.0</span>
							</div>
							<p class="clearfix">
								<a href="#" class="float-right meta-chat"><span
									class="icon-chat"></span> 3</a>
							</p>
						</div>
					</div>
				</div>
				<div class="col-md-4 ftco-animate">
					<div class="blog-entry">
						<a href="/rs-single" class="block-20"
							style="background-image: url(/resources/images/image_6.jpg);">
						</a>
						<div class="text pt-3 pb-4 px-4">
							<div class="meta">
								<div>
									가입일
								</div>
								<div>
									업종
								</div>
								<div style="float: right; padding-top: 4px;"><span style="color: red;"><i class="far fa-heart"></i></span>&nbsp;좋아요<span>&nbsp;3</span> </div>
							</div>
							<h1 class="heading">
								<a href="#">가게명</a>
							</h1>
							<div class="rating-stars">
								<span><i class="active icon-star"></i>&nbsp; 5.0</span>
							</div>
							<p class="clearfix">
								<a href="#" class="float-right meta-chat"><span
									class="icon-chat"></span> 3</a>
							</p>
						</div>
					</div>
				</div>
			</div>
			<div class="row no-gutters my-5">
				<div class="col text-center">
					<div class="block-27">
						<ul>
							<li><a href="#">&lt;</a></li>
							<li class="active"><span>1</span></li>
							<li><a href="#">2</a></li>
							<li><a href="#">3</a></li>
							<li><a href="#">4</a></li>
							<li><a href="#">5</a></li>
							<li><a href="#">&gt;</a></li>
						</ul>
					</div>
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
							<a href="/about">Our Team</a>
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
	<script src="/resources/js/main.js"></script>

</body>
</html>