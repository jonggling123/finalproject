<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%--
* [[개정이력(Modification Information)]]
* 수정일                 수정자      수정내용
* ----------  ---------  -----------------
* 2019. 5. 2.      AA      최초작성
* Copyright (c) 2019 by DDIT All right reserved
*
* 관리자 통계관리 화면
 --%>

<script type="text/javascript">
	$(function() {
		var ctx = document.getElementById("barchart1");
		var barchart1 = new Chart(ctx, {
			type: 'bar',
			data: {
				labels: ["Red", "Blue", "Yellow", "Green"],
				datasets: [{
					label: 'Bar Chart',
					data: [12, 19, 3, 5, 2, 3],
					backgroundColor: [
						'rgba(255, 99, 132, 0.2)',
						'rgb(50,205,50, 0.2)',
						'rgba(255, 206, 86, 0.2)',
						'rgba(75, 192, 192, 0.2)'
					],
					borderColor: [
						'rgba(255,99,132,1)',
						'rgba(54, 162, 235, 1)',
						'rgba(255, 206, 86, 1)',
						'rgba(75, 192, 192, 1)'
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
		
		var ctx = document.getElementById("barchart2");
		var barchart2 = new Chart(ctx, {
			type: 'bar',
			data: {
				labels: ["January", "February"],
				datasets: [{
	                label: 'Dataset 1',
					data: [150, 170],
					borderWidth: 1,
	                backgroundColor: [
						'rgba(255, 99, 132, 0.2)',
						'rgb(50,205,50, 0.2)'
					],
					borderColor: [
						'rgba(255,99,132,1)',
						'rgba(54, 162, 235, 1)'
					],
	            }, {
	                label: 'Dataset 2',
					data: [-188, -177],
	                backgroundColor: [
						'rgba(255, 99, 132, 0.2)',
						'rgb(50,205,50, 0.2)'
					],
					borderColor: [
						'rgba(255,99,132,1)',
						'rgba(54, 162, 235, 1)'
					],
					borderWidth: 1
	            }]
			},
			options: {
				responsive: true,
				legend: {
					position: 'top',
				},
				title: {
					display: true,
					text: 'Bar Chart Vertical'
				}
			}
		});
		
		
	});
	
	
	
</script>
<meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>차트</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
  
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
										<h2>차트 2분할</h2>
									</div>
								</div>
							</div>
							<div class="col-lg-6 col-md-6 col-sm-6 col-xs-3">
								<div class="breadcomb-report">
									<button data-toggle="tooltip" data-placement="left"
										title="Download Report" class="btn">
										<i class="notika-icon notika-sent"></i>
									</button>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Breadcomb area End-->
	<!-- Bar Chart area End-->
	<div class="bar-chart-area">
		<div class="container">
			<div class="row">
				<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
					<div class="bar-chart-wp">
						<canvas height="140vh" width="180vw" id="barchart1"></canvas>
					</div>
				</div>
				<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
					<div class="bar-chart-wp sm-res-mg-t-30 chart-display-nn">
						<canvas height="140vh" width="180vw" id="barchart2"></canvas>
					</div>
				</div>
			</div>
		</div>
	</div>
	

    <!--  Chat JS
		============================================ -->
    <script src="${pageContext.request.contextPath }/notika/js/chat/jquery.chat.js"></script>
    <!-- Charts JS
		============================================ -->
    <script src="${pageContext.request.contextPath }/notika/js/charts/Chart.js"></script>
<%--     <script src="${pageContext.request.contextPath }/notika/js/charts/bar-chart.js"></script> --%>
  