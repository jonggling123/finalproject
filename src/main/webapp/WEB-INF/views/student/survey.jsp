<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<script type="text/javascript"
	src="${pageContext.request.contextPath }/res/js/jquery-3.3.1.min.js"></script>

<!-- Bootstrap CSS
		============================================ -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/notika/css/bootstrap.min.css">
<!-- main CSS
		============================================ -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/notika/css/main.css">
<!-- style CSS
		============================================ -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/style.css">
<!-- normalize CSS
		============================================ -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/notika/css/normalize.css">
<!-- modernizr JS
		============================================ -->
<script
	src="${pageContext.request.contextPath }/notikajs/vendor/modernizr-2.8.3.min.js"></script>

<div class="main-menu-area mg-tb-40">
	<div class="container">
		<div class="row">
			<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
				<div class="tab-content custom-menu-content">
					<div id="Home"
						class="tab-pane in active notika-tab-menu-bg animated flipInX">
						<ul class="notika-main-menu-dropdown">
							<li><a href="eduGoal">교육목표</a></li>
							<li><a href="professorIntro">교수소개</a></li>
							<li><a href="lecturePage">강의페이지</a></li>
							<li><a href="lectureBoard">게시판</a></li>
							<li><a href="mantoman">1:1지도</a></li>
							<li><a href="lectureAssignment">과제물</a></li>
							<li><a href="studyState">학습현황</a></li>
							<li><a href="survey">설문지</a></li>
							<li><a href="surveyResult">설문결과</a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>

	<div class="container">
		<div class="row">
			<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
				<div class="form-element-list mg-t-30">
					<div class="basic-tb-hd">
						<h2>설문지 등록</h2>
						<span>설문등록</span><span>마계만족도 조사</span>
						<button class="btn btn-default notika-btn-default" id="asd">문항추가</button>
						<button class="btn btn-default notika-btn-default" id="asd">선택지추가</button>
						<div class="fm-checkbox">
							<span>1</span>&nbsp;&nbsp;&nbsp;<span>이상엽씨 집의 마계의문 만족도 </span><br>
							<label><input type="radio" checked="" class="i-checks"> <i></i>매우 만족</label> 
							<label><input type="radio" checked="" class="i-checks"> <i></i>만족</label> 
							<label><input type="radio" checked="" class="i-checks"> <i></i>보통</label> 
							<label><input type="radio" checked="" class="i-checks"> <i></i>다소 불만족</label>
							<label><input type="radio" checked="" class="i-checks"> <i></i>매우 불만족</label>
						</div>
						<div class="fm-checkbox">
							<span>2</span>&nbsp;&nbsp;&nbsp;<span>이상엽씨 집의 마계의문 만족도 </span><br>
							<label><input type="radio" checked="" class="i-checks"> <i></i>매우 만족</label> 
							<label><input type="radio" checked="" class="i-checks"> <i></i>만족</label> 
							<label><input type="radio" checked="" class="i-checks"> <i></i>보통</label> 
							<label><input type="radio" checked="" class="i-checks"> <i></i>다소 불만족</label>
							<label><input type="radio" checked="" class="i-checks"> <i></i>매우 불만족</label>
						</div>
						<div class="fm-checkbox">
							<span>3</span>&nbsp;&nbsp;&nbsp;<span>이상엽씨 집의 마계의문 만족도 </span><br>
							<label><input type="radio" checked="" class="i-checks"> <i></i>매우 만족</label> 
							<label><input type="radio" checked="" class="i-checks"> <i></i>만족</label> 
							<label><input type="radio" checked="" class="i-checks"> <i></i>보통</label> 
							<label><input type="radio" checked="" class="i-checks"> <i></i>다소 불만족</label>
							<label><input type="radio" checked="" class="i-checks"> <i></i>매우 불만족</label>
						</div>
						
						<button class="btn btn-default notika-btn-default" id="asd">미리보기</button>
						<button class="btn btn-default notika-btn-default" id="asd">등록완료</button>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>

<!-- jquery
		============================================ -->
<script
	src="${pageContext.request.contextPath }/notika/js/vendor/jquery-1.12.4.min.js"></script>
<!-- bootstrap JS
		============================================ -->
<script
	src="${pageContext.request.contextPath }/notika/js/bootstrap.min.js"></script>
<!-- main JS
		============================================ -->
<script src="${pageContext.request.contextPath }/notika/js/main.js"></script>