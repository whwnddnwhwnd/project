<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../../layout/header.jsp" %>
<%@ include file="../../layout/banner.jsp" %>
<%@ include file="../../layout/sidebar.jsp" %>
<link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-lite.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-lite.min.js"></script>


	<!-- section -->
	<!-- 가게등록 타이틀 -->
	<section class="container"
		style="margin-top: 80px; padding-left: 55px;">
		<div class="heading-section ftco-animate mb-5">
			<h2 class="mb-4"
				style="font-family: 'Do Hyeon', sans-serif; letter-spacing: 3px; font-weight: 600;">나의
				식도락노트 등록  <i class="far fa-sticky-note"></i></h2>
		</div>
	</section>

	<!-- 새로운 한 개의 노트등록 -->
	<section>
		<div class="container"
			style="width: 2000px; height: 600px; padding-left: 60px;">
			<form>
				<div class="text d-flex align-items-center ftco-animate">
					<div style="z-index: 999;">
						<div class="row">
							<!-- 노트 정보 등록 -->
							<!-- 노트 등록일은 등록 시 자동 저장하도록 한다 -->
							<div class="col-md-6">
								<div class="form-group">
									<label for="noteName"
										style="font-family: 'Nanum Gothic', sans-serif; font-size: 17px; font-weight: 600; color: black; letter-spacing: 1px;">노트
										제목</label> <input type="text" class="form-control" id="title"
										placeholder="ex) 20자 이내로 작성해주세요~">
								</div>
							</div>
							<div class="col-md-8">
								<div class="form-group">
									<label for="noteText"
										style="font-family: 'Nanum Gothic', sans-serif; font-size: 17px; font-weight: 600; color: black; letter-spacing: 1px;">노트내용
									</label> 
									<p><textarea rows="3" cols="55" placeholder="40자 이내로 짧게 작성해주세요~"
										id="content" class="form-control summernote"
									></textarea></p>
								</div>
							</div>
							<div class="col-md-12 mt-3">
								<div class="form-group">
									<button type="button" id="btn-note-insert"
										class="btn btn-outline-info py-3 px-5" 
										style="width: 523px; font-family: 'Nanum Gothic', sans-serif; font-size: 17px; font-weight: 600; letter-spacing: 1px;">
										등록하기</button>
								</div>
							</div>
						</div>
					</div>
				</div>
			</form>
		</div>
	</section>
	<script>
      $('.summernote').summernote({
        tabsize: 2,
        height: 300
      });
    </script>
<div>&nbsp;</div>
<div>&nbsp;</div>
<div>&nbsp;</div>
<div>&nbsp;</div>
<div>&nbsp;</div>
<div>&nbsp;</div>
<script src="/js/my/noteinsert.js"></script>
<%@ include file="../../layout/footer.jsp" %>