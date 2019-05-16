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
					<div class="table-responsive">
						<h2>1:1지도</h2>
						<div id="data-table-basic_wrapper" class="dataTables_wrapper">
							<div class="dataTables_length" id="data-table-basic_length">
								<div id="data-table-basic_filter"
									class="dataTables_filter sangyup">
									<span>분류
									<select>
										<OPTION>공지사항</OPTION>
										<OPTION>과목</OPTION>
										<OPTION>일반</OPTION>
									</select>
									</span>
									<button class="btn btn-default notika-btn-default" id="asd">등록</button>
								</div>
								<table id="data-table-basic"
									class="table table-striped dataTable" role="grid"
									aria-describedby="data-table-basic_info">
									<thead>
										<tr role="row">
											<th class="sorting_asc" tabindex="0"
												aria-controls="data-table-basic" rowspan="1" colspan="1"
												aria-sort="ascending"
												aria-label="Name: activate to sort column descending"
												style="width: 80px;">선택</th>
											<th class="sorting_asc" tabindex="0"
												aria-controls="data-table-basic" rowspan="1" colspan="1"
												aria-sort="ascending"
												aria-label="Name: activate to sort column descending"
												style="width: 80px;">학번</th>
											<th class="sorting" tabindex="0"
												aria-controls="data-table-basic" rowspan="1" colspan="1"
												aria-label="Position: activate to sort column ascending"
												style="width: 100px;">이름</th>
											<th class="sorting" tabindex="0"
												aria-controls="data-table-basic" rowspan="1" colspan="1"
												aria-label="Office: activate to sort column ascending"
												style="width: 80px;">학년</th>
											<th class="sorting" tabindex="0"
												aria-controls="data-table-basic" rowspan="1" colspan="1"
												aria-label="Age: activate to sort column ascending"
												style="width: 80px;">학기</th>
											<th class="sorting" tabindex="0"
												aria-controls="data-table-basic" rowspan="1" colspan="1"
												aria-label="Start date: activate to sort column ascending"
												style="width: 125px;">수강률</th>
											<th class="sorting" tabindex="0"
												aria-controls="data-table-basic" rowspan="1" colspan="1"
												aria-label="Salary: activate to sort column ascending"
												style="width: 117px;">퀴즈목록보기</th>
											<th class="sorting" tabindex="0"
												aria-controls="data-table-basic" rowspan="1" colspan="1"
												aria-label="Salary: activate to sort column ascending"
												style="width: 117px;">작성글목록</th>
											<th class="sorting" tabindex="0"
												aria-controls="data-table-basic" rowspan="1" colspan="1"
												aria-label="Salary: activate to sort column ascending"
												style="width: 117px;">초대</th>
										</tr>
									</thead>
									<tbody>
										<tr role="row" class="odd" onClick="javascript:page_link();">
											<td class="">
												<div class="fm-checkbox">
													<div class="icheckbox_square-green" style="position: relative;">
														<input type="checkbox" class="i-checks" style="position: absolute; opacity: 0;" />
														<ins class="iCheck-helper" style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"></ins>
													</div>
												</div>
											</td>
											<td class="sorting_1">201910032</td>
											<td>이상엽</td>
											<td>4학년</td>
											<td>1학기</td>
											<td>93%</td>
											<td><button class="btn btn-default notika-btn-default" id="asd">퀴즈목록보기</button></td>
											<td><button class="btn btn-default notika-btn-default" id="asd">작성글목록보기</button></td>
											<td><button class="btn btn-default notika-btn-default" id="asd">1:1초대</button></td>
										</tr>
										<tr role="row" class="odd">
											<td class="">
												<div class="fm-checkbox">
													<div class="icheckbox_square-green" style="position: relative;">
														<input type="checkbox" class="i-checks" style="position: absolute; opacity: 0;" />
														<ins class="iCheck-helper" style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"></ins>
													</div>
												</div>
											</td>
											<td class="sorting_1">201910045</td>
											<td>종선리</td>
											<td>4학년</td>
											<td>1학기</td>
											<td>94%</td>
											<td><button class="btn btn-default notika-btn-default" id="asd">퀴즈목록보기</button></td>
											<td><button class="btn btn-default notika-btn-default" id="asd">작성글목록보기</button></td>
											<td><button class="btn btn-default notika-btn-default" id="asd">1:1초대</button></td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
