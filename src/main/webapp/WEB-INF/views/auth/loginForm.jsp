<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ include file="../layout/header.jsp"%>

<!-- section -->
<section class="hero-wrap hero-wrap-2"
	style="background-image: url(/images/bg_3.jpg); width: 100%; height: 120px;"
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

<section class="container mt-3"
	style="max-width: 650px; margin-top: 5px; margin-bottom: 35px;">
	<div class="container-fluid px-0">
		<div class="ftco-animate makereservation p-4 p-md-5 pt-5">
			<div class="py-md-5">
				<div class="heading-section ftco-animate mb-5">
					<h2 class="mb-4"
						style="font-family: 'Do Hyeon', sans-serif; letter-spacing: 7px; font-weight: 600;">로그인</h2>
				</div>
				<form action="/auth/loginProc" method="post">
					<div class="row">
						<div class="col-md-12">
							<div class="form-group">
								<label for="user_id">아이디</label> <input type="text"
									id="username" name="username" class="form-control"
									placeholder="아이디를 입력해주세요">
							</div>
						</div>
						<div class="col-md-12">
							<div class="form-group">
								<label for="user_password">비밀번호</label> <input type="password"
									id="password" name="password" class="form-control"
									placeholder="비밀번호를 입력해주세요">
							</div>
						</div>
						<div class="col-md-12 mt-3">
							<div class="form-group">
								<input type="submit" value="로그인"
									class="btn btn-primary py-3 px-5 login-btn">&nbsp;
								&nbsp; <a href="/login"></a>
							</div>
						</div>
						<div class="col-md-4">
							<div class="form-group">
								<a href="/auth/joinForm"><small>회원가입</small></a>
							</div>
						</div>
						<div class="col-md-8 text-right">
							<div class="form-group">
								<small><a href="findId">아이디 찾기</a></small> <small> / </small> <small
									class="ti1"><a href="findPw">비밀번호 찾기</a></small>
							</div>
						</div>
					</div>
					<!-- 소셜 로그인 -->
					<hr>
					<div class="d-flex justify-content-center social-btn">
						<a
							href="https://kauth.kakao.com/oauth/authorize?client_id=c22a1fd75b766642bf0d639c589cfb39&redirect_uri=http://localhost:8888/auth/kakao/callback&response_type=code">
							<img src="/image/kakao.png" style="width: 450px;">
						</a>
					</div>
					<div class="d-flex justify-content-center social-btn">
						<a href="/oauth2/authorization/google"> <img
							src="/image/google.png" style="width: 450px;"></a>
					</div>
					<div class="d-flex justify-content-center social-btn">
						<a href="/oauth2/authorization/facebook"> <img
							src="/image/facebook.png" style="width: 450px; height: 67px;"></a>
					</div>

				</form>
			</div>
		</div>
	</div>
</section>

<%@ include file="../layout/footer.jsp"%>