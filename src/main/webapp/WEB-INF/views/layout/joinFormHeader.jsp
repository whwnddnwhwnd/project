<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
 <sec:authorize access="isAuthenticated()">
	<sec:authentication property="principal" var="principal"/> 
</sec:authorize>	
<!DOCTYPE html>
<html lang="en">
<head>
<title>EATS TIME - 잇츠타임</title>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<!-- Google Fonts -->
<link
	href="https://fonts.googleapis.com/css?family=Poppins:100,200,300,400,500,600,700,800,900"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css?family=Great+Vibes&display=swap"
	rel="stylesheet">

<link rel="stylesheet"
	href="/css/open-iconic-bootstrap.min.css">
<link rel="stylesheet" href="/css/animate.css">

<link rel="stylesheet" href="/css/owl.carousel.min.css">
<link rel="stylesheet" href="/css/owl.theme.default.min.css">
<link rel="stylesheet" href="/css/magnific-popup.css">
<link rel="stylesheet" href="/css/aos.css">

<link rel="stylesheet" href="/css/ionicons.min.css">

<link rel="stylesheet" href="/css/bootstrap-datepicker.css">
<link rel="stylesheet" href="/css/jquery.timepicker.css">
<link rel="stylesheet" href="/css/css/custom.css">

<link rel="stylesheet" href="/css/flaticon.css">
<link rel="stylesheet" href="/css/icomoon.css">
<link rel="stylesheet" href="/css/style.css">


<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<!-- Search Bar  -->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/css/bootstrap-search.css">

<!-- Google font -->
<style>
@import
	url('https://fonts.googleapis.com/css2?family=Do+Hyeon&family=Nanum+Gothic&display=swap')
	;
</style>
</head>
<body>
	<!-- nav -->
	<div class="py-1 bg-black top">
		<div class="container">
			<div
				class="row no-gutters d-flex align-items-start align-items-center px-md-0">
				<div class="col-lg-12 d-block">
					<div class="row d-flex"></div>
				</div>
			</div>
		</div>
	</div>
	<nav
		class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light"
		id="ftco-navbar">
		<div class="container">
			<a class="navbar-brand" href="/"
				style="font-family: 'Do Hyeon', sans-serif; font-size: 35px">Eat's
				Time</a>
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#ftco-nav" aria-controls="ftco-nav"
				aria-expanded="false" aria-label="Toggle navigation">
				<span class="oi oi-menu"></span> Menu
			</button>

			<div class="collapse navbar-collapse" id="ftco-nav"
				style="font-family: 'Do Hyeon', sans-serif;">
				
				
			<c:choose>
				<c:when test="${empty principal }">
				</c:when>
				<c:otherwise>
					<ul class="navbar-nav ml-auto">
					<li class="nav-item"><a href="/restaurant" class="nav-link"
						style="font-size: 19px; letter-spacing: 1px;"> Restaurant</a></li>
					<li class="nav-item"><a href="/contact" class="nav-link"
						style="font-size: 19px; letter-spacing: 1px;"> Contact</a></li>
					<li class="nav-item"><a href="/myPage" class="nav-link"
						style="font-size: 19px; letter-spacing: 1px;"> MyPage</a></li>
					<li class="nav-item cta"><a href="/logout" class="nav-link"
						style="font-size: 19px; letter-spacing: 1px; padding-top: 5px; padding-bottom: 5px; margin-top: 8px;">Logout</a></li>
				</ul>
				</c:otherwise>
			</c:choose>	
				
				
			</div>
		</div>
	</nav>
	<!-- END nav -->