<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ include file="../layout/header.jsp" %>
<%@ include file="../layout/banner.jsp" %>
<%@ include file="../layout/sidebar.jsp" %>

	<!-- 대시보드 -->
	<section class="container mypage-heading" style="line-height: 4;">	
		<div class="heading-section ftco-animate mb-5">
			<h2 class="mb-4 mypage-title">대시보드</h2>
		</div>
	</section>

	<!-- 대시보드 - 회원정보 -->
	<section style="padding-top: 0;">
		<div class="container">
			<div class=" ftco-animate">
				<div class="blog-entry">
					<div class="text">
						 <a href="#" class="block-20 mypage-img"
								style="background-image: url(/image/mypage-dash.png);"> </a>
						<br>
						<!-- 등록된 사용자 아이디 -->
						<h3 class="heading">
							<label for="userName" style="font-family: 'Nanum Gothic', sans-serif; color: black; padding-top: 5px; font-size: 18px;">
							&nbsp;안녕하세요 &nbsp;${principal.user.name }님</label>
						</h3>
						
						<!-- 등록된 사용자 이메일 -->
						<h3 class="heading">
						<i class="far fa-paper-plane"></i>
						<c:choose>	
							<c:when test="${empty principal.user.email }">
								<label for="userEmail"
								style="color: black; font-family: 'Nanum Gothic', sans-serif; font-weight: 600; font-size: 15px;">
								이메일을 등록해 주세요!</label>
							</c:when>
							<c:otherwise>
								<label for="userEmail"
								style="color: black; font-family: 'Nanum Gothic', sans-serif; font-weight: 600; font-size: 15px;">
								${principal.user.email}</label>
							</c:otherwise>
						</c:choose>
							
						</h3>
						<!-- 등록된 사용자 번호 -->
						<h3 class="heading">
						<i class="fas fa-phone"></i>
							<c:choose>	
							<c:when test="${empty principal.user.telephone }">
								<label for="userPhone"
								style="color: black; font-family: 'Nanum Gothic', sans-serif; font-weight: 600; font-size: 15px;">
								전화번호를 등록해 주세요!</label>
							</c:when>
							<c:otherwise>
								<label for="userEmail"
								style="color: black; font-family: 'Nanum Gothic', sans-serif; font-weight: 600; font-size: 15px;">
								${principal.user.telephone}</label>
							</c:otherwise>
						</c:choose>
						</h3>
					</div>
				</div>
			</div>
		</div>
	</section>
	<div>&nbsp;</div>
	<div>&nbsp;</div>
	<div>&nbsp;</div>
	<div>&nbsp;</div>
<%@ include file="../layout/footer.jsp" %>