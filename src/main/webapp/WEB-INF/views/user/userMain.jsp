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
* 로그인에 성공하면 나타나는 메인 페이지(학생, 교수)
 --%>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>메인 페이지(학생, 교수)</title>

<script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery-3.3.1.min.js"></script>

<script type="text/javascript">
	$(function() {
		$("#chatbot").on("click", function() {
			$("#chatForm").submit();
		});
	});
</script>
</head>
<body>
	<form action="${pageContext.request.contextPath }/common/search">
		<input type="text" name="keyword" />
		<input type="submit" id="search" value="검색" />
	</form>
	
	<form id="chatForm" action="${pageContext.request.contextPath }/common/chatbot">
		<img src="${pageContext.request.contextPath }/res/images/Jellyfish.jpg" id="chatbot" />
	</form>
	
	<a href="${pageContext.request.contextPath }/logout">로그아웃</a>
	<a href="${pageContext.request.contextPath }/common/notice">공지사항</a>
	<a href="${pageContext.request.contextPath }/main/mypage">마이페이지</a>
	<a href="${pageContext.request.contextPath }/main/lecture">강의</a>
	<a href="${pageContext.request.contextPath }/main/classRegistration">수강신청</a>
	<a href="${pageContext.request.contextPath }/main/certificate">신청서</a>
	
</body>
</html>