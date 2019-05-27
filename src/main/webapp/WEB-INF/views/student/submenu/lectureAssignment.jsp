<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
	<div class="container">
		<div class="row">
			<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
				<div class="data-table-list">
					<div class="tab-content custom-menu-content">
						<h2>과제물</h2>
						<div>
							<span>초급자바</span><span>이상엽</span>
						</div>
						<div class="table-responsive">
							<div id="data-table-basic_wrapper" class="dataTables_wrapper">
								<div class="dataTables_length" id="data-table-basic_length">
									<label>Show <select name="data-table-basic_length"
										aria-controls="data-table-basic" class="">
											<option value="10">10</option>
											<option value="25">25</option>
											<option value="50">50</option>
											<option value="100">100</option>
									</select> entries
									</label>
									<div id="data-table-basic_filter"
										class="dataTables_filter sangyup">
										<button class="btn btn-default notika-btn-default" id="asd">강의계획서보기</button>
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
													style="width: 80px;">회차</th>
												<th class="sorting_asc" tabindex="0"
													aria-controls="data-table-basic" rowspan="1" colspan="1"
													aria-sort="ascending"
													aria-label="Name: activate to sort column descending"
													style="width: 80px;">주차</th>
												<th class="sorting" tabindex="0"
													aria-controls="data-table-basic" rowspan="1" colspan="1"
													aria-label="Position: activate to sort column ascending"
													style="width: 100px;">강의명</th>
												<th class="sorting" tabindex="0"
													aria-controls="data-table-basic" rowspan="1" colspan="1"
													aria-label="Office: activate to sort column ascending"
													style="width: 80px;">과제파일</th>
												<th class="sorting" tabindex="0"
													aria-controls="data-table-basic" rowspan="1" colspan="1"
													aria-label="Age: activate to sort column ascending"
													style="width: 80px;">등록일</th>
												<th class="sorting" tabindex="0"
													aria-controls="data-table-basic" rowspan="1" colspan="1"
													aria-label="Start date: activate to sort column ascending"
													style="width: 125px;">마감일</th>
											</tr>
										</thead>
										<tbody>
											<tr role="row" class="odd">
												<td class="sorting_1">1회차</td>
												<td>1주차</td>
												<td>강의명</td>
												<td>
													<button class="btn btn-default notika-btn-default"
														id="assignmentSend">과제제출</button>
													<button class="btn btn-default notika-btn-default"
														id="resourceFileView">참고자료보기</button>
													<button class="btn btn-default notika-btn-default"
														id="assignmentView">과제보기</button>
												</td>
												<td>2019-05-11</td>
												<td>2019-05-18</td>
											</tr>
											<tr role="row" class="odd">
												<td class="sorting_1">1회차</td>
												<td>1주차</td>
												<td>강의명</td>
												<td>
													<button class="btn btn-default notika-btn-default" id="bbb">과제제출</button>
													<button class="btn btn-default notika-btn-default" id="asd">참고자료보기</button>
													<button class="btn btn-default notika-btn-default" id="asd">과제보기</button>
												</td>
												<td>2019-05-11</td>
												<td>2019-05-18</td>
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
</div>

