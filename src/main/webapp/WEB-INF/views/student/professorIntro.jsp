<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<script type="text/javascript"
	src="${pageContext.request.contextPath }/res/js/jquery-3.3.1.min.js"></script>

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
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>

	<div class="container">
		<div class="row">
			<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
				<div class="data-table-list">
					<div class="tab-content custom-menu-content">
						<h2>교수소개</h2>
						<div>
							<li class="views-row views-row-1 views-row-odd views-row-first">
								<a class="thumb"> <img
									src="${pageContext.request.contextPath }/resources/images/pika.jpg"
									alt="피카츄"></a>
								<dl>
									<dt>
										<a href="#">피카츄</a>
									</dt>
									<dd>
										<b>소속</b> : 컴퓨터공학부<em>|</em> 
										<b>직위</b> : 부교수<em>|</em> 
										<b>위치</b>: <a>301-502</a><em>|</em>
										<br> <b>주전공</b> : 데이터 마이닝, 빅데이터, 딥러닝<em>|</em> 
										<b>부전공</b> : 기계 학습<br> 
										<b>이메일</b> : <a>ukang@snu.ac.kr</a><em>|</em>
										<!-- 										<b>홈페이지</b> : <a target="_blank" title="새창으로 열기" href="http://datalab.snu.ac.kr/~ukang">http://datalab.snu.ac.kr/~ukang</a> -->
									</dd>
								</dl>
							</li>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>

