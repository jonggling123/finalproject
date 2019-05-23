<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%--
* [[개정이력(Modification Information)]]
* 수정일                 수정자      수정내용
* ----------  ---------  -----------------
* 2019. 5. 23.      AA      최초작성
* Copyright (c) 2019 by DDIT All right reserved
*
 --%>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript">
$(function() {
	var ctx = document.getElementById("barchart1");
	var barchart1 = new Chart(ctx, {
		type: 'bar',
		data: {
			labels: ["공지사항", "강의Q&A답변", "게시글 수"],
			datasets: [{
				label: 'Bar Chart',
				data: [12, 19, 3, 5, 2, 3],
				backgroundColor: [
					'rgba(255, 99, 132, 0.2)',
					'rgba(75, 192, 192, 0.2)',
					'rgba(255, 206, 86, 0.2)'
					
				],
				borderColor: [
					'rgba(255,99,132,1)',
					'rgba(75, 192, 192, 1)',
					'rgba(255, 206, 86, 1)'
					
				],
				borderWidth: 1
			}]
		},
		options: {
			scales: {
				yAxes: [{
					ticks: {
						beginAtZero:true
					}
				}]
			}
		}
	});
});//fuction
</script>

<title>교수 활동 통계 </title>
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
									<h2>교수 활동 통계 </h2>
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
				<select name="professor">
					<option value>교수명</option>
				</select> 
				</select> 
				
				<select name="lecture">
				<option value>과목명</option>
					<c:forEach var="lecture" items="${lectureList}">
						<option class="${lecture.lower_organization}"
							id="${lecture.lecture_code}" value="${lecture.user_name}">
							${lecture.lecture_name}</option>
					</c:forEach>
				</select> 
				
<!-- 				<select name="term"> -->
<!-- 					<option value="daily">일간</option> -->
<!-- 					<option value="weekly">주간</option> -->
<!-- 					<option value="monthly">월간</option> -->
<!-- 					<option value="selectDR">기간 선택</option> -->
<!-- 				</select> -->

			</div>

<!-- 			<div> -->
<!-- 				<h4>조회 기준 일자</h4> -->
<!-- 			</div> -->
<!-- 			<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12"> -->
<!-- 				<div class="form-group nk-datapk-ctm form-elet-mg" id="data_1" name="data_1"> -->
<!-- 					<div class="input-group date nk-int-st"> -->
<!-- 						<span class="input-group-addon"></span> <input type="text" -->
<!-- 						name="st_date"	id="st_date" class="form-control"> -->
<!-- 					</div> -->
<!-- 				</div> -->
<!-- 			</div> -->

<!-- 			<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12"> -->
<!-- 				<div class="form-group nk-datapk-ctm form-elet-mg" id="data_2" name="data_2"> -->
<!-- 					<div class="input-group date nk-int-st"> -->
<!-- 						<span class="input-group-addon"></span> <input type="text" name="ed_date" -->
<!-- 							id="ed_date" class="form-control"> -->
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


