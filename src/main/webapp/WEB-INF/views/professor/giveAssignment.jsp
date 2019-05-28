<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
  <%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%--
* [[개정이력(Modification Information)]]
* 수정일                 수정자      수정내용
* ----------  ---------  -----------------
* 2019. 5. 27.     김재은      최초작성
* Copyright (c) 2019 by DDIT All right reserved
* 교수 과제물 관리 화면
*
 --%>
<script type="text/javascript"
	src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>
<link rel="stylesheet" type="text/css"
	href="https://cdn.datatables.net/1.10.19/css/jquery.dataTables.min.css">
	<script
	src="${pageContext.request.contextPath }/res/js/ckeditor/ckeditor.js"></script>
	<link rel="stylesheet"href="/projecttemplate/notika/css/datapicker/datepicker3.css">
<script type="text/javascript">

	$(function() {
		CKEDITOR.replace("contextArea", {
         filebrowserImageUploadUrl:"<c:url value='/board/imageUpload.do'/>?sample=test"
      });
		var lecture_name=$("[name='lecture']").children(":selected").text();
		settingDataTable();
		function settingDataTable() {
			var lecture_code = $("[name='lecture']").val();
			$('#assignmentList')
					.DataTable(
							{
								ajax : {
									"type" : "get",
									"url" : "${pageContext.request.contextPath}/getAssignmentList?lecture_code="
											+ lecture_code,
									"dataType" : "JSON"
								},
								columns : [ {
									data : "lecture_week"
								}, {
									data : "lecture_class"
								}, {
									data : "lecture_subname"
								}, {
									data : "btnInsert"
								}, {
									data : "btnView"
								}, {
									data : "assignment_date"
								}, {
									data : "submit_period1"
								}, {
									data : "submit_period2"
								} ],
								"order" : [ [ 0, 'asc' ], [ 1, 'asc' ] ],
								"bDestroy" : true

							});
		}
		;

		$("[name='lecture']").on("change", function() {
			settingDataTable();

		});

		$table = $('#assignmentList').DataTable();
		
		
		$table.on('click', '.viewbtn', function() {
					$('#assignfile_view').empty();
						var assignment_no = $(this).attr("name");
			// 			window.open("${pageContext.request.contextPath }/assignmentView","과제보기",'width=700,height=500,toolbar=no, menubar=no,location=no,resizable=yes,status=no');
			if (!($('.modal.in').length)) {
				$('.modal-dialog').css({
					top : 0,
					left : 0
				});
			}
			$('#assignmentView').modal({
				backdrop : false,
				show : true
			});
			
			$.ajax({
				url : "${pageContext.request.contextPath}/getAssignmentnFile?assignment_no="+assignment_no,
				method : "get",
				dataType : "json",
				success : function(resp) {
					var title = "<p><b>제목:</b>"+resp.assignment_title+"</p>";
					title+="<p><b>주차:</b>"+resp.class_identifying_code.substring(0,1)+"주차</p>";
					title+="<p><b>차시:</b>"+ resp.class_identifying_code.substring(1,0)+"차시</p>";
					title+="<p><b>과제 등록일 :</b>"+ resp.assignment_date+"</p>";
					title+="<p><b>과제제출 기한 :</b>" +resp.submit_period1+"~"+ resp.submit_period2+"</p>";
					$('#headerView').html(title);
					$('#contentView').html("<pre>"+resp.assignment_content+"</pre>");
					
					var assignmentFileList = resp.assignmentFileList;
					var btnText="첨부파일 다운로드";
					if(assignmentFileList[0].file_no){
						$(assignmentFileList).each(function(idx,assignmentFile){
							
							var asfv = "<span><i class='notika-icon notika-paperclip'></i>"+ assignmentFile.file_name
							asfv+= "<i class='notika-icon notika-arrow-right atc-sign'></i></span>"
							
							var asfd = "<a class='btn dw-al-ft' href='#'>첨부파일다운로드"
								asfd+= "<i class='notika-icon notika-file'></i></a>"
								
								$('#assignfile_view').append(
										$('<div class="dw-atc-sn">').html(asfv+asfd),
								)
						});
					}
					
				},
				error : function(errorResp) {
					console.log(errorResp.status);
				}
			});//ajax
		});
		
	$table.on('click', '.insertbtn', function() {
			var week =$($(this).parent().parent().find($('td'))[0]).text();
			var turn =$($(this).parent().parent().find($('td'))[1]).text();
				$('#form_title').html("<h2>"+lecture_name+" "+week+"주차"+turn+"차시 과제물</h2>")
		
			if (!($('.modal.in').length)) {
				$('.modal-dialog').css({
					top : 0,
					left : 0
				});
			}
			$('#assignmentInsert').modal({
				backdrop : false,
				show : true
			});


		});
	

	$('#data_1 .input-group.date').datepicker({
		todayBtn : "linked",
		keyboardNavigation : false,
		forceParse : false,
		calendarWeeks : true,
		autoclose : true,
		format : "yyyy/mm/dd"

	});

	$('#data_2 .input-group.date').datepicker({
		todayBtn : "linked",
		keyboardNavigation : false,
		forceParse : false,
		calendarWeeks : true,
		autoclose : true,
		format : "yyyy/mm/dd"

		});
	$('#saveAssignment').on("click",function(event){
		
		alert("test")
		
		
	});
		
	});
</script>

<div class="breadcomb-area">
	<div class="container">
		<div class="row">
			<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
				<div class="breadcomb-list">
					<div class="row">
						<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
							<div class="breadcomb-wp">
								<div class="breadcomb-icon">
									<i class="notika-icon notika-bar-chart"></i>
								</div>
								<div class="breadcomb-ctn">
									<h2>과제물 관리</h2>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>

<div class="container">
	<div class="row">
		<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
			<div class="breadcomb-list">
				<div class="row">
					<select name="lecture">
						<c:forEach var="lecture" items="${lectureList}">
							<option class="${lecture.user_name}" id="${lecture.lecture_code}"
								value="${lecture.lecture_code}">${lecture.lecture_name}</option>
						</c:forEach>
					</select>
					<div class="data-table-list">
						<table id="assignmentList" class="table table-striped dataTable"
							role="grid" aria-describedby="data-table-basic_info">
							<thead>
								<tr>
									<th>주차</th>
									<th>차시</th>
									<th>강의명</th>
									<th>등록</th>
									<th>과제보기</th>
									<th>등록일</th>
									<th>제출시작일</th>
									<th>제출마감일</th>
								</tr>
							</thead>
							<tbody>
							</tbody>
							<tfoot>
							</tfoot>
						</table>
					</div>

				</div>
			</div>
		</div>
	</div>
</div>


<div class="modal fade" id="assignmentView" role="dialog">
	<div class="modal-dialog modal-large">
		<div class="modal-content">
			<div class="modal-header"></div>
			<div class="modal-body">
				<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
					<div class="view-mail-list sm-res-mg-t-30">
						<div class="view-mail-hd">
							<div class="view-mail-hrd">
								<h1>과제물 보기</h1>
							</div>
						</div>
						<div class="mail-ads mail-vw-ph" id="headerView">
							
						</div>
						<div class="view-mail-atn" id="contentView">
							
						</div>
						<div class="file-download-system">
							<div class="dw-st-ic mg-t-20">
							
								<div id="assignfile_view" class="dw-atc-sn">
								</div>
							</div>
						</div>
						<div class="vw-ml-action-ls text-right mg-t-20">
							<div class="btn-group ib-btn-gp active-hook nk-email-inbox">
								<button class="btn btn-default btn-sm waves-effect">
									<i class="notika-icon notika-edit"></i> 과제물 내용 수정
								</button>
								
								<button class="btn btn-default btn-sm waves-effect">
									<i class="notika-icon notika-trash"></i> 과제물 삭제
								</button>
							</div>
						</div>
					</div>
				</div>

			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal">제출 내역 보기</button>
				<button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
			</div>
		</div>
	</div>
</div>

<div class="modal fade" id="assignmentInsert" role="dialog">
	<div class="modal-dialog modal-large">
	<form:form id="assignment" modelAttribute="assignment" method="post" enctype="multipart/form-data">
	
		<div class="modal-content">
			<div class="modal-header"></div>
			<div class="modal-body">
				     <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <div class="view-mail-list sm-res-mg-t-30">
                        <div class="view-mail-hd">
                            <div class="view-mail-hrd" id="form_title">
                            
                            </div>
                        </div>
                        <div class="cmp-int mg-t-20">
                            <div class="row">
                                <div class="col-lg-1 col-md-2 col-sm-2 col-xs-12">
                                    <div class="cmp-int-lb cmp-int-lb1 text-right">
                                    </div>
                                </div>
                                <div class="col-lg-12 col-md-12 col-sm-10 col-xs-12">
                                    <div class="form-group">
                                        <div class="nk-int-st cmp-int-in cmp-email-over">
                                            <input type="text"  name="assignment_title" class="form-control" placeholder="제목을 입력해주세요" />
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
									<div class="form-group nk-datapk-ctm form-elet-mg" id="data_1" name="data_1">
										<div class="input-group date nk-int-st">
											<span class="input-group-addon"></span> <input type="text"
											 name="submit_period1" id="st_date" class="form-control"  placeholder="제출 시작일">
										</div>
									</div>
								</div>
								<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
									<div class="form-group nk-datapk-ctm form-elet-mg" id="data_2" name="data_2">
										<div class="input-group date nk-int-st">
											<span class="input-group-addon"></span> <input type="text" name="submit_period2"
												id="ed_date" class="form-control" placeholder="제출 종료일">
										</div>
									</div>
								</div>
                            </div>
                            <div class="row">
                                
                            </div>
                        </div>
                        <div class="cmp-int-box mg-t-20">
                            <div class="html-editor-cm">
                                <textarea id="contextArea" name="assignment_content" rows="20" cols="50"></textarea>
                            </div>
                        </div>
                        <div class="upload-sys">
                           	<input type="file" name ="bo_files">
							<input type="file" name ="bo_files">
							<input type="file" name ="bo_files">
                        </div>
                        <div class="vw-ml-action-ls text-right mg-t-20">
                            
                        </div>
                    </div>
                </div>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal" id="saveAssignment">저장</button>
				<button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
			</div>
		</div>
		<input type="hidden" name="class_identifying_code">
		<input type="hidden" name="lecture_code">
		
		</form:form>
	</div>
</div>


    
<script
	src="${pageContext.request.contextPath }/notika/js/datapicker/bootstrap-datepicker.js"></script>
