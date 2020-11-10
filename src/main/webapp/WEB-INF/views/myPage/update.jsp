<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ include file="../layout/header.jsp" %>
<%@ include file="../layout/banner.jsp" %>
<%@ include file="../layout/sidebar.jsp" %>

	<!-- 개인정보 수정  -->
	<section class="container"
		style="margin-top: 30px; padding-left: 55px; padding-bottom: 20px;">
		<div class="heading-section ftco-animate mb-5">
			<h2 class="mb-4"
				style="font-family: 'Do Hyeon', sans-serif; letter-spacing: 3px; font-weight: 600;">개인정보
				수정</h2>
		</div>
	</section>
	<!-- 한명의 회원의 개인정보 수정 -->
	<section>
		<div class="container"
			style="width: 1650px; height: 550px; padding-left: 20px; border: 1px solid #ddd;">
			<form>
				<div class="text d-flex align-items-center ftco-animate">
					<div style="padding-top: 30px; z-index: 999;">
						<div class="row">
							<div class="col-md-6">
								<div class="form-group">
									<label for="userId"
										style="font-family: 'Nanum Gothic', sans-serif; font-size: 17px; font-weight: 600; color: black; letter-spacing: 1px;">아이디</label>
									<%-- <input type="hidden" value="${principal.user.id }" id="id"> --%>
									<input type="text" class="form-control" 
										value="${principal.username }" readonly="readonly" id="username">
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group">
									<label for="userName"
										style="font-family: 'Nanum Gothic', sans-serif; font-size: 17px; font-weight: 600; color: black; letter-spacing: 1px;">이름</label>
									<input type="text" class="form-control" value="${principal.user.name }" id="name" readonly="readonly">
								</div>
							</div>
							<c:choose>
								<c:when test="${empty principal.user.type }">
							<div class="col-md-6">
								<div class="form-group">
									<label for="userPw"
										style="font-family: 'Nanum Gothic', sans-serif; font-size: 17px; font-weight: 600; color: black; letter-spacing: 1px;">비밀번호</label>
									<input type="password" class="form-control" id="password">
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group">
									<label for="userPwck"
										style="font-family: 'Nanum Gothic', sans-serif; font-size: 17px; font-weight: 600; color: black; letter-spacing: 1px;">비밀번호
										확인</label> <input type="password" class="form-control">
								</div>
							</div>
								</c:when>
							</c:choose>
							<div class="col-md-6">
								<div class="form-group">
									<label for="userEmail"
										style="font-family: 'Nanum Gothic', sans-serif; font-size: 17px; font-weight: 600; color: black; letter-spacing: 1px;">이메일</label>
									<c:choose>
										<c:when test="${empty principal.user.email }">
											<input type="text" class="form-control" placeholder="이메일을 입력해 주세요." id="email">
										</c:when>
										<c:otherwise>
											<input type="text" class="form-control"	value="${principal.user.email }" id="email">
										</c:otherwise>
									</c:choose>
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group">
									<label for="userPhone"
										style="font-family: 'Nanum Gothic', sans-serif; font-size: 17px; font-weight: 600; color: black; letter-spacing: 1px;">휴대전화</label>
									<c:choose>
										<c:when test="${empty principal.user.telephone }">
											<input type="text" class="form-control" placeholder="전화번호를 입력해 주세요." id="telephone">
										</c:when>
										<c:otherwise>
											<input type="text" class="form-control"	value="${principal.user.telephone }" id="telephone">
										</c:otherwise>
									</c:choose>
								</div>
							</div>
							<div class="col-md-6 mt-5">
								<div class="form-group">
								<button id="btn-update"
										class="btn btn-outline-secondary py-3 px-5"
										style="width: 520px; height:54px; font-family: 'Nanum Gothic', sans-serif; font-size: 17px; font-weight: 600; letter-spacing: 1px;">수정하기</button>
								</div>
							</div>
						</div>
					</div>
				</div>
			</form>
		</div>
	</section>
	<div>&nbsp;</div>
	<div>&nbsp;</div>
	<div>&nbsp;</div>
<script src="/js/my/userupdate.js"></script>
<%@ include file="../layout/footer.jsp" %>