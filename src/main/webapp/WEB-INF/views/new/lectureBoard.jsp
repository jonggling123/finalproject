<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

	<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.19/css/jquery.dataTables.min.css">
<script type="text/javascript" src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>
<script type="text/javascript">
	function page_link() {
		window
				.open(
						"${pageContext.request.contextPath }/boardDetail",
						"상세강의보기",
						"width=1000, height=700, toolbar=no, menubar=no, scrollbars=no, resizable=yes, location=yes");
	}
	
	$(function() {
// 		데이터 테이블
		$('#data-table-basic').DataTable({
	        ajax: {
	            "type" : "get",
	               "url" : "${pageContext.request.contextPath}/board",
	                  "dataType": "JSON"
	               },
	              columns: [
	                         { data: "board_type" },
	                         { data: "board_no" },
	                         { data: "board_title" },
	                         { data: "replycount" },
	                         { data: "user_id" },
	                         { data: "board_date" },
	                         { data: "board_hit" }
	                     ]
	          });
		
		//등록 버튼
		$('#createBoard').on('click', function() {
			location.href = "${pageContext.request.contextPath}/board/create";
		})
	});
</script>
<!-- Data Table JS
		============================================ -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/notika/css/jquery.dataTables.min.css">
<!-- normalize CSS
		============================================ -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/notika/css/normalize.css">

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
						<h2>강의게시판</h2>
<!-- 						<div id="data-table-basic_wrapper" class="dataTables_wrapper"> -->
<!-- 							<div class="dataTables_length" id="data-table-basic_length"> -->
								<div id="data-table-basic_filter"
									class="dataTables_filter sangyup">
									<span>분류
									<select>
										<OPTION>공지사항</OPTION>
										<OPTION>과목</OPTION>
										<OPTION>일반</OPTION>
									</select>
									</span>
									<button class="btn btn-default notika-btn-default" id="createBoard">등록</button>
								</div>
								<table id="data-table-basic"
									class="table table-striped dataTable" role="grid"
									aria-describedby="data-table-basic_info">
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
	</div>
</div>


	<script
		src="${pageContext.request.contextPath }/notika/js/data-table/jquery.dataTables.min.js"></script>
	<script
		src="${pageContext.request.contextPath }/notika/js/data-table/data-table-act.js"></script>