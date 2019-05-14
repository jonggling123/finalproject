<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%--
* [[개정이력(Modification Information)]]
* 수정일                 수정자      수정내용
* ----------  ---------  -----------------
* 2019. 5. 3.      AA      최초작성
* Copyright (c) 2019 by DDIT All right reserved
*
* 과목 페이지
* 새 탭으로 생긴다.
* '강의보기'로 넘어온 경우 '강의리스트'가 초기화면
* '과목게시판'으로 넘어온 경우 '게시판'이 초기화면
 --%>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>과목 페이지</title>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery-3.3.1.min.js"></script>

<script type="text/javascript">
	$(function() {
		
	});
</script>
</head>
<body>
	<a href="${pageContext.request.contextPath }/subjectPage/goal">교육목표</a>
	<a href="${pageContext.request.contextPath }/subjectPage/introduce">교수소개</a>
	<a href="${pageContext.request.contextPath }/subjectPage/lecturePage">강의페이지</a>
	<a href="${pageContext.request.contextPath }/subjectPage/board">게시판</a>
	<a href="${pageContext.request.contextPath }/subjectPage/m2m">1:1지도</a>
	<a href="${pageContext.request.contextPath }/subjectPage/homework">과제물</a>
	<a href="${pageContext.request.contextPath }/subjectPage/study">학습현황</a>
	<a href="${pageContext.request.contextPath }/subjectPage/survey">설문지</a>
</body>
</html>