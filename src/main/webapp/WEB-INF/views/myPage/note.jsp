<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ include file="../layout/header.jsp"%>
<%@ include file="../layout/banner.jsp"%>
<%@ include file="../layout/sidebar.jsp"%>

<!-- 나의 식도락 노트 -->
<section class="container mypage-heading">
	<div class="heading-section ftco-animate mb-4">
		<h2 class="mb-4 mypage-title">나의 식도락 노트</h2>
	</div>
</section>

<section class="container">
	<div class="heading-section ftco-animate">
		<button type="button" onclick="location.href='/mypage/note/insert'"
			class="btn btn-outline-info mt-2 mynote-btn">새로운 식도락 노트 등록</button>
	</div>
</section>


<c:choose>
	<c:when test="${empty note }">
		<div class="container" style="padding-top: 50px;">
			<P class="no-data-note">나만의 식도락 노트를 작성해 보세요!</P>
		</div>
	</c:when>
	<c:otherwise>
		<!-- 나의 식도락 노트 표시 -->
		<section class="ftco-section">
			<c:forEach var="note" items="${note }">
				<div class="container">
					<div class="row">
						<div class="col-md-4 ftco-animate">
							<div class="blog-entry">
								<div class="text pt-3 pb-2 px-2">
									<h3 class="heading">
										<label for="noteName" style="color: black;">${note.title }</label>
									</h3>
									<h4 class="heading">
										<label for="noteText"
											style="color: black; font-family: 'Nanum Gothic', sans-serif; font-weight: 600; font-size: 15px;">
											${note.content } </label>
									</h4>
									<p class="clearfix">
										<button type="button" onclick="location.href='#'"
											class="btn btn-outline-secondary mt-2"
											style="width: 60px; height: 40px; font-family: 'Nanum Gothic', sans-serif; font-weight: 600; letter-spacing: 1px;">
											수정</button>
										<button type="button" onclick="location.href='#'"
											class="btn btn-outline-danger mt-2"
											style="width: 60px; height: 40px; font-family: 'Nanum Gothic', sans-serif; font-weight: 600; letter-spacing: 1px;">
											삭제</button>
									</p>
								</div>
							</div>
						</div>
					</div>
				</div>
			</c:forEach>
		</section>
	</c:otherwise>
</c:choose>
<div style="margin-bottom: 350px;"></div>
<%@ include file="../layout/footer.jsp"%>
