<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ include file="layout/header.jsp"%>
<%@ include file="layout/banner.jsp"%>


<section class="container mt-3" style="max-width: 650px;">
	<div class="container-fluid px-0">
		<div class="ftco-animate makereservation p-4 p-md-5 pt-5">
			<div class="py-md-5">
				<div class="heading-section ftco-animate mb-5">
					<h2 class="mb-4"
						style="font-family: 'Do Hyeon', sans-serif; letter-spacing: 3px; font-weight: 600;">CONTACT</h2>
				</div>
				<form>
					<div class="form-group">
						<input type="text" name="personName" class="form-control"
							id="senderName" placeholder="성함">
					</div>
					<div class="form-group">
						<input type="text" name="personEmail" class="form-control"
							id="senderEmail" placeholder="회신받을 이메일">
					</div>
					<div class="form-group">
						<input type="text" name="contactTitle" class="form-control"
							id="title" placeholder="제목">
					</div>
					<div class="form-group">
						<textarea name="contactContent" cols="30" rows="10" id="content"
							class="form-control" placeholder="내용"></textarea>
					</div>
					<div class="form-group">
						<button type="button" id="btn-mail-send"
							class="btn btn-primary py-3 px-5 contact-btn">Send
							Message</button>
					</div>
				</form>
			</div>
		</div>
	</div>
</section>

<section class="ftco-section contact-section">
	<div class="container get-in-touch">
		<div class="row d-flex contact-info">
			<div class="col-md-12 mb-4">
				<h2 class="h4" style="font-weight: 600;">GET IN TOUCH</h2>
			</div>
			<div class="w-100"></div>
			<div class="col-md-4 d-flex">
				<div class="dbox">
					<p style="font-family: 'Nanum Gothic', sans-serif;">
						<span><i class="far fa-map fa-2x"></i></span><br> 배고파시 먹을거찾구
						잇츠타임동 1번가
					</p>
				</div>
			</div>
			<div class="col-md-4 d-flex">
				<div class="dbox">
					<p style="font-family: 'Nanum Gothic', sans-serif;">
						<span><i class="fas fa-mobile-alt fa-2x"></i></span><br> +82
						10 9871 9770
					</p>
				</div>
			</div>
			<div class="col-md-4 d-flex">
				<div class="dbox">
					<p style="font-family: 'Nanum Gothic', sans-serif;">
						<span><i class="fas fa-at fa-2x"></i></span><br>
						dmsql989@gmail.com
					</p>
				</div>
			</div>
		</div>
	</div>
</section>

<script src="/js/my/email.js"></script>
<%@ include file="layout/footer.jsp"%>