<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--         <script src="${pageContext.request.contextPath}/res/fullCalendar/lib/jquery.min.js"></script> --%>
        <script src='${pageContext.request.contextPath}/res/fullCalendar/fullcalendar/fullcalendar.js'></script>
        <link rel='stylesheet' href="${pageContext.request.contextPath}/res/fullCalendar/fullcalendar/fullcalendar.css" />
<style>
.modal
{
    overflow: hidden;
}
.modal-dialog{
    margin-right: 0;
    margin-left: 0;
}
.modeless{
    top:5%;
    left:60%;
    bottom:auto;
    right:auto;
    margin-left:-300px;
}
/* .input-group .form-control { */
/*     width: 30%; */
</style>


		<script>
		$(document).ready(function() {
			var date = new Date();
			var d = date.getDate();
			var m = date.getMonth();
			var y = date.getFullYear();
			var Ctitle,Cstart,Cend;
			function modalppop(){
				$("#myModal").modal({
					backdrop: false,
			 	    show: true	
				});
				$("#myModal").draggable();
				
        	};
        	
			var calendar = $('#calendar').fullCalendar({
				header: {
					left: 'prev,next today',
					center: 'title',
					right: 'month,agendaWeek,agendaDay'
				},
				selectable: true,
				selectHelper: true,
				select: function(title, start, end, allDay) {
					modalppop();
					
					if (Ctitle) {
						calendar.fullCalendar('renderEvent',
							{
								title: Ctitle,
								start: Cstart,
								end: Cend,
								allDay: allDay
							},
							true // make the event "stick"
						);
					}
					calendar.fullCalendar('unselect');
				},
				editable: true,
				events: [
					{
						title: 'All Day Event',
						start: new Date(y, m, 1)
					},
					{
						title: 'Long Event',
						start: new Date(y, m, d-5),
						end: new Date(y, m, d-2)
					},
					{
						id: 999,
						title: 'Repeating Event',
						start: new Date(y, m, d-3, 16, 0),
						allDay: false
					},
					{
						id: 999,
						title: 'Repeating Event',
						start: new Date(y, m, d+4, 16, 0),
						allDay: false
					},
					{
						title: 'Meeting',
						start: new Date(y, m, d, 10, 30),
						allDay: false
					},
					{
						title: 'Lunch',
						start: new Date(y, m, d, 12, 0),
						end: new Date(y, m, d, 14, 0),
						allDay: false
					},
					{
						title: 'Birthday Party',
						start: new Date(y, m, d+1, 19, 0),
						end: new Date(y, m, d+1, 22, 30),
						allDay: false
					},
					{
						title: 'Click for Google',
						start: new Date(y, m, 28),
						end: new Date(y, m, 29),
						url: 'http://google.com/'
					}
				]
			});
			$('#ok').click(function(){
				Ctitle = $("#calTitle").val();
				Cstart = $("#startD").val();
				Cend = $("#endD").val();
				return true;
			});
		});
		
        </script>


<c:set var="now" value="<%=new java.util.Date()%>" />
<div class="container">
         <div class="row">
         <div class="col-offset-4 col-lg-8 col-md-8 col-sm-8 col-xs-8">
         <div id='calendar'></div>
         </div>
         </div>
         </div>
        <div id="myModal" class="modal fade modeless">
    <div class="modal-dialog" style="width:400px; height:300px;">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                 <h4 class="modal-title">날짜입력</h4>

            </div>
            <div class="modal-body">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <div class="data-table-list">
                        <div class="basic-tb-hd">
						<span>제목:</span><input id="calTitle" type="text"/><br/>
						
						<span>시작일</span>
                                <div class="form-group nk-datapk-ctm form-elet-mg" id="data_1">
                                    <div class="input-group date nk-int-st">
                                        <span class="input-group-addon"></span>
                                        <input id="startD" type="text" class="form-control" value="now">
                                    </div>
                                </div>
						
						<span>종료일</span>
								<div class="form-group nk-datapk-ctm form-elet-mg" id="data_2">
                                    <div class="input-group date nk-int-st">
                                        <span class="input-group-addon"></span>
                                        <input id="endD" type="text" class="form-control" value="now">
                                    </div>
                                </div>
                        </div>
                        
                </div>
            </div>
                
            </div>
            <div class="modal-footer">
                <button type="button" id="ok" class="btn btn-default" data-success="modal">확인</button>
                <button type="button" id="cancel" class="btn btn-default" data-dismiss="modal">닫기</button>
            </div>
        </div>
        <!-- /.modal-content -->
    </div>
    <!-- /.modal-dialog -->
</div>
        
        <script type="text/javascript" src="${pageContext.request.contextPath}/notika/js/datapicker/bootstrap-datepicker.js"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/notika/js/datapicker/datepicker-active.js"></script>
