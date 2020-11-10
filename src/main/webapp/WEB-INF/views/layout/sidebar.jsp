<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<link rel="stylesheet" href="/css/css/sidebar.css">

<div class="nice-nav ho">
	<div class="user-info clear">
		<div class="navbar-brand"
			style="font-family: 'Do Hyeon', sans-serif; font-size: 25px; color: black; letter-spacing: 1px;">마이페이지</div>
	</div>

	<div class="navbar-title-dash">
		<a href="/mypage">대시보드</a>
	</div>
	<!-- my-page-guest -->
	<div class="navbar-title">게스트</div>
	<div class="clear"></div>
	<ul class="my-page-guest" style="">
		<li class="page-list"><a href="/mypage/like">좋아요 한 가게</a></li>
		<li class="page-list"><a href="/mypage/note">나의 식도락 노트</a></li>
	</ul>

	<!-- my-page-owner -->
	<div class="navbar-title">가게 주인</div>
	<ul class="my-page-owner" style="list-style: none; padding-left: 0px;">
		<li class="page-list"><a>나의 가게구독자</a></li>
		<li class="page-list"><a href="/mypage/setting">가게설정</a></li>
		<li class="page-list"><a href="/mypage/menu">메뉴관리</a></li>
	</ul>

	<!-- my-page-owner -->
	<ul class="my-page-other" style="list-style: none; padding-left: 0px;">
		<li class="page-list-other"><a href="/mypage/update">개인정보관리</a></li>
		<li class="page-list-other"><a href="/mypage/leave">회원탈퇴</a></li>
	</ul>
</div>