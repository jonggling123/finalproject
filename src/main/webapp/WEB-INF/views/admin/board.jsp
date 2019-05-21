<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<script type="text/javascript">
	$(function() {
		
	});
</script>
<style>
.sangyup {
	display: inline;
	float: right;
}

.dataTables_wrapper .dataTables_filter {
	width: 45%;
}

.dataTables_wrapper .dataTables_filter input, .dataTables_wrapper .dataTables_filter label
	{
	width: 20%;
}
</style>

<div class="breadcomb-area">
	<div class="container">
		<div class="row">
			<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
				<div class="breadcomb-list">
					<div class="row">
						<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
							<div class="breadcomb-wp">
								<div class="breadcomb-ctn">
									<h2>게시판</h2>
									<p>
										게시판 관리페이지 <span class="bread-ntd"></span>
									</p>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>

<div class="data-table-area">
	<div class="container">
		<div class="row">
			<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
				<div class="data-table-list">
					<div class="table-responsive">
						<div id="data-table-basic_wrapper" class="dataTables_wrapper">
							<div class="dataTables_length" id="data-table-basic_length">
								<div id="data-table-basic_filter"
									class="dataTables_filter sangyup">
									<span>분류 <select id="typeSelector">
										<OPTION>공지사항</OPTION>
										<OPTION>과목</OPTION>
										<OPTION>일반</OPTION>
									</select>
									</span>
									<button type="button"
										class="btn btn-default notika-btn-default" id="new">등록</button>
									<button type="button"
										class="btn btn-default notika-btn-default" id="change">수정</button>
									<button type="button"
										class="btn btn-default notika-btn-default" id="erase">삭제</button>
								</div>

								<table id="board">
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
<link rel="stylesheet" type="text/css"
	href="https://cdn.datatables.net/1.10.19/css/jquery.dataTables.min.css">
<script type="text/javascript"
	src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>
<script>
	$('#board').DataTable({
		ajax : {
			"type" : "get",
			"url" : "${pageContext.request.contextPath}/${board.board_no}/reply",
			"dataType" : "JSON"
		},
		columns : [
			{data : "user_id"}
			, {data : "reply_content"}
			, {data : "reply_reg"}
			, {data : "remover"} 
		],
		"order" : [2, 'desc'] 
	});
</script>