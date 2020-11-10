<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ include file="layout/header.jsp"%>

<section class="home-slider owl-carousel js-fullheight">
	<div class="slider-item js-fullheight"
		style="background-image: url(/images/bg_2.jpg);">
		<div class="overlay"></div>
		<div class="container">
			<div
				class="row slider-text js-fullheight justify-content-center align-items-center"
				data-scrollax-parent="true">

				<div class="col-md-12 col-sm-12 text-center ftco-animate">
					<span class="subheading">Eat's Time</span>
					<h1 class="mb-4"></h1>
				</div>

			</div>
		</div>
	</div>
</section>
<!-- Search Bar -->
<div class="wrapper" style="margin-top: 5px;">
	<div class="container"
		style="font-family: 'Nanum Gothic', sans-serif; font-size: 20px;">
		<input type="text" class="input" placeholder="검색어를 입력해주세요"
			style="font-weight: bolder;"> <input type="button" value="검색"
			class="close-btn">
	</div>
</div>

<!-- Number -->
<section class="ftco-section ftco-counter img ftco-no-pt real-time"
	id="section-counter">
	<div class="container">
		<div class="row justify-content-center mb-5">
			<div class="col-md-12 text-center heading-section ftco-animate">
				<h2 class="mb-4"
					style="font-family: 'Do Hyeon', sans-serif; letter-spacing: 3px; font-weight: 600;">잇츠타임
					이용현황</h2>
			</div>
		</div>
		<div class="row d-md-flex">
			<div class="col-md-9" style="margin-left: auto; margin-right: auto;">
				<div class="row">
					<div
						class="col-md-6 col-lg-3 mb-4 mb-lg-0 d-flex justify-content-center counter-wrap ftco-animate">
						<div class="block-18">
							<div class="text">
								<strong class="number" data-number="18"></strong> <span>유저</span>
							</div>
						</div>
					</div>
					<div
						class="col-md-6 col-lg-3 mb-4 mb-lg-0 d-flex justify-content-center counter-wrap ftco-animate">
						<div class="block-18">
							<div class="text">
								<strong class="number" data-number="100">0</strong> <span>게시글</span>
							</div>
						</div>
					</div>
					<div
						class="col-md-6 col-lg-3 mb-4 mb-lg-0 d-flex justify-content-center counter-wrap ftco-animate">
						<div class="block-18">
							<div class="text">
								<strong class="number" data-number="50">0</strong> <span>가게</span>
							</div>
						</div>
					</div>
					<div
						class="col-md-6 col-lg-3 mb-4 mb-lg-0 d-flex justify-content-center counter-wrap ftco-animate">
						<div class="block-18">
							<div class="text">
								<strong class="number" data-number="15000">0</strong> <span>메뉴</span>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>

<section class="ftco-section bg-light provide-service">
	<div class="container">
		<div class="row justify-content-center mb-5 pb-2">
			<div class="col-md-12 text-center heading-section ftco-animate">
				<h2 class="mb-4"
					style="font-family: 'Do Hyeon', sans-serif; letter-spacing: 3px; font-weight: 600;">제공
					서비스</h2>
			</div>
		</div>
		<div class="row">
			<div
				class="col-md-6 d-flex align-self-stretch ftco-animate text-center">
				<div class="media block-6 services d-block">
					<div class="icon d-flex justify-content-center align-items-center">
						<!-- 아이콘 -->
						<span><img src="/images/lifestyle_icon.png" alt="lifestyle"
							style="width: 60px; height: 60px;"></span>
					</div>
					<div class="media-body p-2 mt-3"
						style="font-family: 'Nanum Gothic', sans-serif; font-size: 17px; font-weight: 600; color: black; letter-spacing: 1px;">
						<h3 class="heading"
							style="font-family: 'Nanum Gothic', sans-serif; font-size: 23px; font-weight: 600; color: black; letter-spacing: 1px;">라이프스타일</h3>
						<p>
							반려동물과 함께 할 수 있는 식당,<br> 비건푸드에 대한 메뉴정보를 제공하고 있습니다
						</p>
					</div>
				</div>
			</div>
			<div
				class="col-md-4 d-flex align-self-stretch ftco-animate text-center">
				<div class="media block-6 services d-block">
					<div class="icon d-flex justify-content-center align-items-center">
						<!-- 아이콘 -->
						<span><img src="/images/store_icon.png" alt="lifestyle"
							style="width: 60px; height: 60px;"></span>
					</div>
					<div class="media-body p-2 mt-3"
						style="font-family: 'Nanum Gothic', sans-serif; font-size: 17px; font-weight: 600; color: black; letter-spacing: 1px;">
						<h3 class="heading"
							style="font-family: 'Nanum Gothic', sans-serif; font-size: 23px; font-weight: 600; color: black; letter-spacing: 1px;">홍보</h3>
						<p>
							사장님들의 소중한 가게가  더 많은<br> 사람에게 알려지도록 다양하고<br> 정확한 정보제공을 목표로 합니다
						</p>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>

<section class="ftco-section bg-light">
	<div class="container">
		<div class="row justify-content-center mb-5">
			<div class="col-md-7 text-center heading-section ftco-animate">
				<h2 class="mb-4"
					style="font-family: 'Do Hyeon', sans-serif; letter-spacing: 3px; font-weight: 600;">최근
					등록된 가게</h2>
			</div>
		</div>


		<div class="row">
			<c:forEach var="store" items="${store}">
				<div class="col-md-4 ftco-animate">
					<div class="blog-entry">
						<a href="/restaurant/details/${store.id}" class="block-20"
							style="background-image: url(/images/image_1.jpg);"> </a>
						<div class="text pt-3 pb-4 px-4">
							<div class="meta">
								<div>
									<a href="#">${store.createDate }</a>
								</div>
							</div>
							<h3 class="heading">
								<a href="#">${store.name }</a>
							</h3>
							<div class="store-type">
								<span>${store.type }</span>
							</div>
							&nbsp;
							<p class="clearfix">
							<span><i class="icon-star"></i>&nbsp; 0.0</span>
								<a href="#" class="float-right meta-chat"><span
									class="icon-chat"></span> 0</a>
							</p>
						</div>
					</div>
				</div>
			</c:forEach>
		</div>
	</div>
	<!-- 여기 -->

</section>
<%@ include file="layout/footer.jsp"%>
