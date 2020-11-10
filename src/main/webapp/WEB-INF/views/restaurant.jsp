<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ include file="layout/header.jsp"%>
<%@ include file="layout/banner.jsp"%>

<section class="ftco-section bg-light">
<!-- 레스토랑 페이지 검색 바 -->
	<div class="container ftco-section" style="padding-bottom: 30px;">
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
<!-- 가게 -->
	<div class="container">
		<div class="row">
			<c:forEach var="store" items="${store.content }">
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
								<span><i class="icon-star"></i>&nbsp; 0.0</span> <a href="#"
									class="float-right meta-chat"><span class="icon-chat"></span>
									0</a>
							</p>
						</div>
					</div>
				</div>
			</c:forEach>
		</div>
	</div>

	<div class="row no-gutters my-5">
		<div class="col text-center">
			<div class="block-27">
				<ul>
					<c:choose>
						<c:when test="${store.first}">
							<li class="page-item disabled"><a class="page-link"
								href="?page=${store.number-1}">&lt;</a></li>
						</c:when>
						<c:otherwise>
							<li class="page-item"><a class="page-link"
								href="?page=${store.number-1 }">&lt;</a></li>
						</c:otherwise>
					</c:choose>
					<c:choose>
						<c:when test="${store.last }">
							<li class="page-item disabled"><a class="page-link"
								href="?page=${store.number+1 }">&gt;</a></li>
						</c:when>
						<c:otherwise>
							<li class="page-item"><a class="page-link"
								href="?page=${store.number+1 }">&gt;</a></li>
						</c:otherwise>
					</c:choose>
				</ul>
			</div>
		</div>
	</div>
</section>

<%@ include file="layout/footer.jsp"%>