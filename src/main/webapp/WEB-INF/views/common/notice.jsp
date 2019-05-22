<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%--
* [[개정이력(Modification Information)]]
* 수정일                 수정자      수정내용
* ----------  ---------  -----------------
* 2019. 5. 2.      AA      최초작성
* Copyright (c) 2019 by DDIT All right reserved
*
* 공지사항 화면
* 요구사항 정의서의 게시판(일반형)의 규칙에 따라 화면을 제공한다.
 --%>
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
</div>
	<div class="container">
		<div class="row">
			<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
				<div class="data-table-list">
					<div class="table-responsive">
						<h2>강의게시판</h2>
						<div id="data-table-basic_filter"
							class="dataTables_filter sangyup">
							<span>분류 <select>
									<OPTION>공지사항</OPTION>
									<OPTION>과목</OPTION>
									<OPTION>일반</OPTION>
							</select>
							</span>
							<button class="btn btn-default notika-btn-default" id="createBoard">등록</button>
						</div>
						<table id="data-table-basic" class="table table-striped dataTable"
							role="grid" aria-describedby="data-table-basic_info">
							<thead>
								<tr>
									<th>분류</th>
									<th>글번호</th>
									<th>제목</th>
									<th>댓글수</th>
									<th>작성자</th>
									<th>작성일</th>
									<th>조회수</th>
								</tr>
							</thead>
							<tbody>

							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>


<script src="${pageContext.request.contextPath }/notika/js/data-table/jquery.dataTables.min.js"></script>
<script	src="${pageContext.request.contextPath }/notika/js/data-table/data-table-act.js"></script>
