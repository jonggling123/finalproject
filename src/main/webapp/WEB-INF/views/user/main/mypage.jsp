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
* 마이페이지 화면
* 최초 화면은 해당년도, 해당학기의 본인 수강과목을 보여준다.
* 하위 항목은 모두 비동기 방식으로 처리한다.
 --%>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>마이페이지 화면</title>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery-3.3.1.min.js"></script>

<script type="text/javascript">
	$(function() {
		$("#grade").on("click", function(){
			$.ajax({
				url : "${pageContext.request.contextPath }/mypage/grade",
				dataType : "json",
				success : function(resp) {
					
				}
			});
		});
		
		$("#myInfo").on("click", function(){
			$.ajax({
				url : "${pageContext.request.contextPath }/mypage/myInfo",
				dataType : "json",
				success : function(resp) {
					
				}
			});
		});
		
		$("#schedule").on("click", function(){
			$.ajax({
				url : "${pageContext.request.contextPath }/mypage/schedule",
				dataType : "json",
				success : function(resp) {
					
				}
			});
		});
		
		$("#bell").on("click", function(){
			$.ajax({
				url : "${pageContext.request.contextPath }/mypage/bell",
				dataType : "json",
				success : function(resp) {
					
				}
			});
		});
		
		$("#subject").on("click", function(){
			$.ajax({
				url : "${pageContext.request.contextPath }/mypage/subject",
				dataType : "json",
				success : function(resp) {
					
				}
			});
		});
		
		$(".subjectPage")
		
		$(".syllabus").on("click", function() {
			
		});
	});
</script>
</head>
<body>
	<input id="grade" type="button" value="성적조회">
	<input id="myInfo" type="button" value="나의정보">
	<input id="schedule" type="button" value="일정">
	<input id="bell" type="button" value="알림">
	<input id="subject" type="button" value="수강과목">
	
	<table id="table">
		<thead>
			<tr>
				<th class="subjectPage lectureList">강의보기</th>
				<th class="syllabus">강의계획서</th>
				<th class="subjectPage board">과목게시판</th>
			</tr>	
		</thead>
		<tbody>
			
		</tbody>
	</table>
	
	<a href="${pageContext.request.contextPath }/mypage/subjectPage">강의보기</a>
	<a href="${pageContext.request.contextPath }/mypage/classSyllabus">강의계획서</a>
	<a href="${pageContext.request.contextPath }/mypage/subjectPage">과목게시판</a>

	
</body>
</html>