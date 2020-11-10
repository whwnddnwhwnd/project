<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ include file="../layout/header.jsp"%>
<%@ include file="../layout/banner.jsp"%>
<%@ include file="../layout/sidebar.jsp"%>

<c:choose>
	<c:when test="${empty store }">
		<section class="container mypage-heading">
			<div class="heading-section ftco-animate mb-5"
				style="line-height: 5;">
				<h2 class="mb-4 mypage-title">가게설정</h2>
				<button type="button"
					onclick="location.href='/mypage/setting/insert'"
					class="btn btn-outline-info mt-2 general-btn">나의 가게 등록</button>
				<P class="no-data">Eat's Time 사이트에 가게를 등록하시겠어요? :)</P>
			</div>
			<div>&nbsp;</div><div>&nbsp;</div><div>&nbsp;</div><div>&nbsp;</div><div>&nbsp;
			</div><div>&nbsp;</div><div>&nbsp;</div><div>&nbsp;</div><div>&nbsp;</div>
		</section>
	</c:when>
	
	<c:otherwise>
		<!-- 사용자가 가게를 등록완료 했을  경우 -->
		<!-- 나의 가게 타이틀 -->
		<section class="container"
			style="margin-top: 60px; padding-left: 55px;">
			<div class="heading-section ftco-animate mb-5">
				<h2 class="mb-3 mypage-title">가게설정</h2>
			</div>
		</section>
		<!-- 나의 가게 표시 -->
		<section class="container" style="padding-left: 60px; padding-top: 0">
			<div>
				<div class="row">
					<div class="col-md-4 ftco-animate">
						<div class="blog-entry">
							<a href="#" class="block-20"
								style="background-image: url(/images/image_1.jpg);"> </a>
							<div class="text pt-3 pb-2 px-2">
								<h3 class="heading">
									<label for="rsOwner" style="color: black;">${store.user.name }
										님의 가게</label>
								</h3>
								<div class="heading">
									<div>
										<label for="rsName">${store.name }</label>
									</div>
								</div>
								<p class="clearfix">
									<button type="button"
										class="btn btn-outline-secondary mt-2"
										style="width: 60px; height: 40px; font-family: 'Nanum Gothic', sans-serif; font-weight: 600; letter-spacing: 1px;">
										수정</button>
									<button type="button"
										class="btn btn-outline-danger mt-2"
										style="width: 60px; height: 40px; font-family: 'Nanum Gothic', sans-serif; font-weight: 600; letter-spacing: 1px;">
										삭제</button>
								</p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
	</c:otherwise>
</c:choose>
<div>&nbsp;</div>
<%@ include file="../layout/footer.jsp"%>
