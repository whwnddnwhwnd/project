<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ include file="../layout/header.jsp"%>
<%@ include file="../layout/banner.jsp"%>
<%@ include file="../layout/sidebar.jsp"%>


<section class="container mypage-heading" style="line-height: 4;">
	<div class="heading-section ftco-animate mb-5">
		<h2 class="mb-4 mypage-title">회원탈퇴</h2>
		<button type="button" id="leave_button"
			class="btn btn-outline-danger mt-2"
			style="width: 200px; height: 40px; font-family: 'Nanum Gothic', sans-serif; font-weight: 600; letter-spacing: 1px;">
			회원탈퇴</button>
		<P
			style="font-family: 'Nanum Gothic', sans-serif; letter-spacing: 3px; color: black; font-weight: 600; padding-top: 30px;">
			정말 회원탈퇴를 진행하시겠어요? :-0</P>
	</div>
</section>
<div style="margin-bottom: 345px;"></div>

<script src="/js/leave.js"></script>
<%@ include file="../layout/footer.jsp"%>