<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%--
* [[개정이력(Modification Information)]]
* 수정일                 수정자      수정내용
* ----------  ---------  -----------------
* 2019. 5. 4.      AA      최초작성
* Copyright (c) 2019 by DDIT All right reserved
* 강의페이지 화면
* 동영상 클릭하면 얼굴인식 modal, 통과하면 동영상화면
 --%>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>강의페이지 화면</title>
</head>
<body>
	<a href="${pageContext.request.contextPath }/lecturePage/media">동영상 화면</a>
	<a href="${pageContext.request.contextPath }/lecturePage/faceCheck">얼굴인식화면</a>
</body>
</html>