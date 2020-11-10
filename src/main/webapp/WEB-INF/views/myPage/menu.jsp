<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ include file="../layout/header.jsp"%>
<%@ include file="../layout/banner.jsp"%>
<%@ include file="../layout/sidebar.jsp"%>

<!-- 메뉴관리  -->


<!-- 메뉴명 검색 바 
	<section>	
		<div class="container" style="padding-bottom: 30px; padding-left: 600px;">
			<form method="get" action="/restaurant" class="form-inline mt-3">
				<input type="text" name="search" class="form-control mx-1 mt-2" placeholder="찾으시고자 하는 메뉴명을 입력하세요"
				size="50" style="font-family: 'Nanum Gothic', sans-serif; font-weight: 600;">
				<button type="submit" class="btn btn-primary mt-2" style="width: 70px; height: 50px; font-family: 'Nanum Gothic', sans-serif; font-weight: 600; letter-spacing: 1px; ">검색</button>
			</form>	
		</div>
	</section> -->
<c:choose>
	<c:when test="${empty store }">
	<section class="container mypage-heading">
			<div class="heading-section ftco-animate mb-5"
				style="line-height: 5;">
				<h2 class="mb-4 mypage-title">메뉴관리</h2>
				<button type="button"
					onclick="location.href='/mypage/setting/insert'"
					class="btn btn-outline-info mt-2 general-btn2">나의 가게 먼저 등록하기</button>
				<P class="no-data">메뉴 등록을 위해 가게 등록을 먼저 진행해주시겠어요?</P>
			</div>
			<div style="margin-bottom: 1200px;"></div>
		</section>
	</c:when>
	<c:otherwise>
		<section class="container mypage-heading" style="line-height: 4;">
			<div class="heading-section ftco-animate mb-5">
				<h2 class="mb-4 mypage-title">메뉴관리</h2>
				<button type="button" onclick="location.href='/mypage/menu/insert'"
					class="btn btn-outline-info mt-3 general-btn">새로운 메뉴 등록</button>
			</div>
		</section>

		<c:choose>
			<c:when test="${empty menu }">
				<div class="container">
					<p class="no-data-note">메뉴를 등록하시겠어요?</p>
				</div>
				<div style="margin-bottom: 230px;"></div>
			</c:when>
			<c:otherwise>
				<section class="container"
					style="padding-left: 45px;">
					<!-- <div class="container"> -->
					<div class="row">
						<c:forEach var="menu" items="${menu }">
							<div class="col-md-3 ftco-animate">
								<div class="blog-entry">
									<a href="blog-single.html" class="block-menu"
										style="background-image: url(/images/breakfast-3.jpg);"> </a>
									<div class="text pt-3 pb-2 px-2">
										<h3 class="heading">
											<label for="menuName" style="color: black;">${menu.name }</label>
										</h3>
										<div class="meta">
											<div>
												<label for="menuPrice">${menu.price }</label>
											</div>
										</div>
										<p class="clearfix">
											<button type="button" onclick="location.href='/menuUpdate'"
												class="btn btn-outline-secondary mt-2"
												style="width: 60px; height: 40px; font-family: 'Nanum Gothic', sans-serif; font-weight: 600; letter-spacing: 1px;">
												수정</button>
											<button type="button" onclick="location.href='/menuDelete'"
												class="btn btn-outline-danger mt-2"
												style="width: 60px; height: 40px; font-family: 'Nanum Gothic', sans-serif; font-weight: 600; letter-spacing: 1px;">
												삭제</button>
										</p>
									</div>
								</div>
							</div>
						</c:forEach>
					</div>
					<!-- 	<div class="row no-gutters my-5">
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
			</div> -->
					<!-- </div> -->
				</section>

			</c:otherwise>
		</c:choose>
		<!-- 메뉴 표시 -->

		<div>&nbsp;</div>
		<div>&nbsp;</div>
		<div>&nbsp;</div>
		<div>&nbsp;</div>
	</c:otherwise>
</c:choose>
<%@ include file="../layout/footer.jsp"%>
