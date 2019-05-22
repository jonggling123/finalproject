<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<script>
	var AList = [];
	var pList = [];
	$(function(){
		var identifier = $("#identifier").val();
		makeQuestionPage(identifier, $("#boddy"), "${pageContext.request.contextPath}");
		$("input[type='text']").attr('type', 'hidden');
		
		$(".container").on("click", "#modify", function(event){
			event.preventDefault();
			$('textarea').attr("disabled", false);
			$("label").css("display","none");
			$(".problemItem").next('.PContent').attr("type", "text");
			$(this).siblings('#save').css("display","block");
			$(this).css("display","none");
		})
		
		$(".container").on("click", "#save", function(){
			var btnType = $("#btnType").val();
			var class_identifying_code = '11';
// 				$('<input type="hidden" value='${11}' name="class_identifying_code">'));
			var lecture_code = 'lecture_code_1'
// 				$('<input type="hidden" value="'${lecture_code_1}'" name="keyfield">');
// 			var question_no = $('<input type='hidden' name='+buttonType+"List[questionNum].question_no"+"value="${1}+">');
			var formm = $(this).siblings('form');
// 			formm.append(class_identifying_code).append(lecture_code);
			var sendData = {
							question_no: $(formm).find('#questionNO').val(),
							question_content:$(formm).find("#questionCon").val(),
							question_answer:$(formm).find("#input:checkbox:checked"),
							class_identifying_code:class_identifying_code,
							lecture_code:lecture_code,
							problemList: []
							}
			pList = $(formm).find('.PContent');
			AList = $(formm).find('.QAnswer');
			for (var i = 0; i < pList.length; i++) {
				sendData.problemList.push(
										   {
											 quizProblem_no:AList[i].value,
											 quizProblem_content:pList[i].value,
											 question_no:$(formm).find('#questionNO').val()
											}
										 )
			}
			
			console.log(sendData);
			$.ajax({
	            type : 'post',
	            url : "${pageContext.request.contextPath}/professor/showQuizz",
	            data : JSON.stringify(sendData),
	            contentType:'application/json;charset=utf-8',
	            dataType : "json",
	            success : function(resp){
	            	resp
				},
			});
		});
	})
</script>
<div class="container">
	${oneQuiz}
	<div id="boddy" class="row">
		<c:forEach items="${oneQuiz}" var="quiz" begin="0" varStatus="status">
			<div class="coverEach">
			<form id='form${status.index}'>
			<div class='col-lg-6 col-md-6 col-sm-6 col-xs-12'><div class='nk-int-st'>
			<span><c:out value='${status.count}'/>번<input type='hidden' id='questionNO' name='${btnType}List[questionNum].question_no' value='${status.count}'></span>
			<textarea name='${btnType}List[${status.index}].question_content' id='questionCon' class='QContent form-control auto-size modify' disabled rows='10' placeholder='문제를 입력하세요'>${ quiz.question_content }</textarea></div></div><br><br><br><br><br>
				<c:forEach items='${quiz.problemList}' var="problem" varStatus="status2">
					<c:set value="${status.index}" var="idx2"></c:set>
					<div class='fm-checkbox hasAThing'><input name='${btnType}List[${status.index}].question_answer' ${quiz.question_answer.contains(quiz.problemList[idx2].quizProblem_no)?'checked':''} id='questionAns' type='checkbox' class='i-checks QAnswer modify' value='${status2.count}'><label class="problemItem">${ problem.quizProblem_content }</label>
					<input name='${btnType}List[${status.index}].problemList[${status2.index}].quizProblem_content' class='PContent modify' type='text' placeholder='선택지를 입력하세요' value='${ problem.quizProblem_content}'/>
					</div>
				</c:forEach>
					</form>
					</div>
		</c:forEach>
		<input id="identifier" type="hidden" value="교수"/>
		<input id="btnType" type='hidden' value="${btnType}"/>
	</div>
</div>

<!-- autosize JS
		============================================ -->
    <script src="${pageContext.request.contextPath}/notika/js/autosize.min.js"></script>
     <!-- icheck JS
		============================================ -->
    <script src="${pageContext.request.contextPath}/notika/js/icheck/icheck.min.js"></script>
    <script src="${pageContext.request.contextPath}/notika/js/icheck/icheck-active.js"></script>
    <script src="${pageContext.request.contextPath}/res/js/makeQuestionPage.js"></script>