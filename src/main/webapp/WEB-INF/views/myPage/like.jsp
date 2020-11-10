<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ include file="../layout/header.jsp" %>
<%@ include file="../layout/banner.jsp" %>
<%@ include file="../layout/sidebar.jsp" %>

	<!-- 좋아요 한 가게  -->
	<section class="container"
		style="margin-top: 75px; padding-left: 55px;">
		<div class="heading-section ftco-animate">
			<h2 class="mb-3"
				style="font-family: 'Do Hyeon', sans-serif; letter-spacing: 3px; font-weight: 600;">
				좋아요 한 가게</h2>
		</div>
	</section>

	<!-- 좋아요 한 가게 리스트 -->
	<section class="container"
		style="margin-top: 5px; padding-left: 10px;">
		<div class="container">
			<!-- 가게 1 -->
			<div class="row">
				<div class="col-md-9 ftco-animate">
					<div class="blog-entry">
						<div class="text" style="width: 800px; height: 100px;">
							<h3 class="heading">
								<label for="myLikeNum" style="color: black;">1.</label>
								&nbsp;&nbsp; <label for="myLikeRsName" style="color: black;">&nbsp;
									가게 이름 : 달빛 카페</label>
							</h3>
							<h4 class="heading" style="padding-left: 40px;">
								<label for="myLikeRsLocation"
									style="color: black; font-family: 'Nanum Gothic', sans-serif; font-weight: 600; font-size: 15px;">
									가게 위치 : 서울특별시 삼성동</label>
							</h4>
						</div>
					</div>
				</div>
				<div class="col-md-3 ftco-animate">
					<div class="blog-entry">
						<a class="nav-link dropdown-toggle" id="dropdown"
							data-toggle="dropdown"><i class="fab fa-flickr"></i></a>
						<div class="dropdown-menu" aria-labelledby="dropdown">
							<a class="dropdown-item" href="/myPageLikeDelete">좋아요 한 가게에서
								삭제</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<div style="margin-bottom: 340px;"></div>
<%@ include file="../layout/footer.jsp" %>