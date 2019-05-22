<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%--
* [[개정이력(Modification Information)]]
* 수정일                 수정자      수정내용
* ----------  ---------  -----------------
* 2019. 5. 2.      AA      최초작성
* Copyright (c) 2019 by DDIT All right reserved
*
* 관리자 통계관리 화면
 --%>
<!-- <link rel="stylesheet"href="/projecttemplate/notika/css/datapicker/datepicker3.css"> -->
<script type="text/javascript">
	$(function() {

		var ctx = document.getElementById("barchart1");
		var basiclinechart = new Chart(ctx, {
			type : 'line',
			data : {
				labels : [ "00:00~04:00", "04:00~08:00", "08:00~12:00",
						"12:00~16:00", "16:00~20:00", "20:00~00:00" ],
				datasets : [ {
					label : "접속자 수(명)",
					fill : false,
					backgroundColor : '#fb9678',
					borderColor : '#fb9678',
					data : [ 300, 400, 1000, 500, 600, 600 ]
				} ]
			},
			options : {
				responsive : true,
				title : {
					display : true,
					text : '시간대 별 과목 게시판 접속자'
				},
				tooltips : {
					mode : 'index',
					intersect : false,
				},
				hover : {
					mode : 'nearest',
					intersect : true
				},
				scales : {
					xAxes : [ {
						display : true,
						scaleLabel : {
							display : true,
							labelString : '접속시간'
						}
					} ],
					yAxes : [ {
						display : true,
						scaleLabel : {
							display : true,
							labelString : '접속자'
						}
					} ]
				}
			}
		});

		$("[name='upperOrganization']").on("change", function() {
			var upperOr = $(this).val();
			if (upperOr) {
				$("[name='lowerOrganization']>option:not(:first)").hide();
				$("." + upperOr).show();
			}
		});
		$("[name='upperOrganization']").trigger("change");

		$("[name='lowerOrganization']").on("change", function() {
			var lec = $(this).val();
			if (lec) {
				$("[name='lecture']>option:not(:first)").hide();
				$("." + lec).show();
			}
		});
		$("[name='lowerOrganization']").trigger("change");

		$("[name='lecture']").on("change", function() {
			var prof = $(this).val();
			if (prof) {
				$('#professor').text(prof);
			}
		});

	});//fuction
</script>
<!-- Main Menu area End-->
<!-- Breadcomb area Start-->
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
									<h2>과목별 접속자통계</h2>
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
			<div class="breadcomb-list" id="selecter">
				<select name="upperOrganization">
					<option value>학부</option>
					<c:forEach var="upperOrganization" items="${upperOrganizationList}">
						<option value='${upperOrganization.lower_organization}'>${upperOrganization.lower_organization}</option>
					</c:forEach>
				</select> <select name="lowerOrganization">
					<option value>학과</option>
					<c:forEach var="lowerOrganization" items="${lowerOrganizationList}">
						<option value="${lowerOrganization.lower_organization}"
							class="${lowerOrganization.upper_organization}">
							${lowerOrganization.lower_organization}</option>
					</c:forEach>
				</select> <select name="lecture">
					<option value>과목</option>
					<c:forEach var="lecture" items="${lectureList}">
						<option class="${lecture.lower_organization}"
							id='${lecture.lecture_code}' value="${lecture.user_name}">${lecture.lecture_name}</option>
					</c:forEach>
				</select> <span>담당교수:</span><span id="professor">&nbsp; &nbsp;
					&nbsp;&nbsp;&nbsp;&nbsp;</span> <select>
					<option>일별</option>
					<option>월별</option>
				</select>

			</div>
<!-- 			<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12"> -->
<!-- 				<div class="form-group nk-datapk-ctm form-elet-mg" id="data_1"> -->
<!-- 					<div class="input-group date nk-int-st"> -->
<!-- 						<span class="input-group-addon"></span> <input type="text" -->
<!-- 							class="form-control" value="03/19/2018"> -->
<!-- 					</div> -->
<!-- 				</div> -->
<!-- 			</div> -->

<!-- 			<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12"> -->
<!-- 				<div class="form-group nk-datapk-ctm form-elet-mg" id="data_2"> -->
<!-- 					<div class="input-group date nk-int-st"> -->
<!-- 						<span class="input-group-addon"></span> <input type="text" -->
<!-- 							class="form-control" value="03/19/2018"> -->
<!-- 					</div> -->
<!-- 				</div> -->
<!-- 			</div> -->
		</div>
	</div>
</div>

<!-- Breadcomb area End-->
<!-- Bar Chart area End-->
<div class="bar-chart-area">
	<div class="container">
		<div class="row">
			<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
				<div class="bar-chart-wp">
					<canvas height="140vh" width="360vw" id="barchart1"></canvas>
				</div>
			</div>
		</div>
	</div>
</div>


<!--  Chat JS
		============================================ -->
<script
	src="${pageContext.request.contextPath }/notika/js/chat/jquery.chat.js"></script>
<!-- Charts JS
		============================================ -->
<script
	src="${pageContext.request.contextPath }/notika/js/charts/Chart.js"></script>

<%-- <script src="${pageContext.request.contextPath }/notika/js/datapicker/bootstrap-datepicker.js"></script> --%>
<%-- <script src="${pageContext.request.contextPath }/notika/js/datapicker/datepicker-active.js"></script> --%>






