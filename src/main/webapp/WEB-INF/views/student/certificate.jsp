<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%--
* [[개정이력(Modification Information)]]
* 수정일                 수정자      수정내용
* ----------  ---------  -----------------
* 2019. 5. 2.      AA      최초작성
* Copyright (c) 2019 by DDIT All right reserved
*
* 관리자 증명서관리 화면
 --%>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>증명서관리 화면</title>
<<<<<<< HEAD

=======
>>>>>>> branch 'master' of https://github.com/jonggling123/finalTeamProject.git
<script type="text/javascript" src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>
<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.19/css/jquery.dataTables.min.css">

<script type="text/javascript">
	$(function() {
		$('#data-table-basic').DataTable({
	        ajax: {
	            "type" : "get",
	               "url" : "${pageContext.request.contextPath}/certificateList",
	                  "dataType": "JSON"
	               },
	              columns: [
	                         { data: "certificate_name" },
	                         { data: "inputNumber" },
	                         { data: "certificate_price"},
	                         { data: "sum"},
	                         { data: "btnApply" },
	                         { data: "btnView" }
	                        
	                     ]
	          });
		
		$table = $('#data-table-basic').DataTable();
		var datatable =  $('#data-table-basic').DataTable();
		$table.on('click', '.viewbtn', function () {
			var name = $(this).attr("name");
			window.open("${pageContext.request.contextPath }/"+name,"증명서 출력",'width=1000,height=700,toolbar=no, menubar=no,location=no,resizable=yes,status=no');
	    });
		
		$table.on('click', '.applybtn', function () {
			var name = $(this).attr("name");
			window.open("${pageContext.request.contextPath }/"+name,"증명서 미리보기",'width=1000,height=700,toolbar=no, menubar=no,location=no,resizable=yes,status=no');
	    });
		
		$table.on('keyup mouseup','.numberinput',function(){
			var cnt=$(this).val();
			var price = $(this).parent().next().text();
			var sum = $(this).parent().siblings().find($(".suminput")).text(cnt*price);
		});
		
	});
</script>
</head>
<body>
	<div class="breadcomb-area">
		<div class="container">
			<div class="row">
				<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
					<div class="breadcomb-list">
						<div class="row">
							<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
								<div class="breadcomb-wp">
									<div class="breadcomb-ctn">
										<h2>증명서신청</h2>
										<p>
											증명서를 신청하고 출력하실 수 있습니다. <span class="bread-ntd"></span>
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
						<table id="data-table-basic" class="table table-striped dataTable"
							role="grid" aria-describedby="data-table-basic_info">
							<thead>
								<tr>
									<th>증명서</th>
									<th>통수</th>
									<th>가격(1통)</th>
									<th>합계</th>
									<th>신청</th>
									<th>미리보기</th>
								</tr>
							</thead>
							<tbody>
							
							</tbody>
							<tfoot>

							</tfoot>
						</table>
						<div class="container">
							<div class="row">
								<textarea rows="4" cols="100">
									신청(결제)한 매수만큼만 출력 가능합니다.
						 			신청(결제)일 기준, 30일 내에만 취소/환불 가능합니다.
						 			본 서비스를 통해 출력한 증명서는 원본증명서 입니다.
								</textarea>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

</body>
</html>