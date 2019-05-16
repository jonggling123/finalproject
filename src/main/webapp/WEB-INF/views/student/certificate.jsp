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
<script type="text/javascript"
	src="${pageContext.request.contextPath }/res/js/jquery-3.3.1.min.js"></script>
<script type="text/javascript" src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>
<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.19/css/jquery.dataTables.min.css">

<script type="text/javascript">
	$(function() {
		$(".viewbtn").on("click",function(){
			var name = $(this).attr("name");
			window.open("${pageContext.request.contextPath }/"+name,"증명서 미리보기",'width=1000,height=700,toolbar=no, menubar=no,location=yes,resizable=yes');
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

							</thead>
							<tbody>
								<tr role="row" class="odd">
									<td colspan="3">증명서선택</td>
								</tr>
								<tr role="row" class="even">
									<td colspan="3">여러가지 증명서를 한번에 신청할 수 없습니다. 한개씩 신청해 주세요.</td>
								</tr>
								<tr role="row" class="even">
									<th>증명서</th>
									<th>통수</th>
									<th>가격(1통)</th>
									<th>합계</th>
									<th>신청</th>
									<th>미리보기</th>
								</tr>
								<tr role="row" class="odd">
									<td>성적증명서</td>
									<td><input type="number" value="0" ></td>
									<td>1000원</td>
									<td></td>
									<td><button class="btn btn-default notika-btn-default"
											style="float: left;" id="btn1">신청</button></td>
									<td>		
										<button class="btn btn-default notika-btn-default viewbtn"
											style="float: left;" id="btn2" name="transcriptSemple">미리보기</button></td>
								</tr>
								<tr role="row" class="even">
									<td>졸업증명서</td>
									<td><input type="number" value="0" ></td>
									<td>1000원</td>
									<td></td>
									<td><button class="btn btn-default notika-btn-default"
											style="float: left;" id="btn3">신청</button></td>
									<td>		
										<button class="btn btn-default notika-btn-default viewbtn"
											style="float: left;" id="btn4" name="grauduateSemple">미리보기</button></td>
								</tr>
								<tr role="row" class="odd">
									<td>학년수료 증명서</td>
									<td><input type="number" value="0" ></td>
									<td>1000원</td>
									<td></td>
									<td><button class="btn btn-default notika-btn-default"
											style="float: left;" id="btn5">신청</button></td>
									<td>		
										<button class="btn btn-default notika-btn-default viewbtn"
											style="float: left;" id="btn6" name="completionSemple">미리보기</button></td>
								</tr>
								<tr role="row" class="even">
									<td>학적부</td>
									<td><input type="number" value="0" ></td>
									<td>1000원</td>
									<td></td>
									<td><button class="btn btn-default notika-btn-default"
											style="float: left;" id="btn7">신청</button></td>
									<td>		
										<button class="btn btn-default notika-btn-default viewbtn"
											style="float: left;" id="btn8" name="schoolRegisterSemple">미리보기</button></td>
								</tr>
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