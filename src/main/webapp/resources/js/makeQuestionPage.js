/**
 * 
 */
function makeQuestionPage(identifier, boddy, contextPath){
	var twoButtonForSt = "<button onclick='history.go(-1)'>돌아가기</button><button type='submit'>제출</button>";
	var twoButtonForPr = "<button onclick='history.go(-1)'>돌아가기</button>";
	var twoButtonForAd = "<button onclick='history.go(-1)'>돌아가기</button>";
	var everyModiBtn = "<button id='modify'>수정</button><button type='button' id='save' style=display:none;>저장</button>";
	
	if(identifier=="교수"){
		$(boddy).after(twoButtonForPr);
		$(boddy).find('.coverEach').append(everyModiBtn);
	} else if(identifier=="학생"){
		$(boddy).after(twoButtonForSt);
	} else if(identifier=="관리자"){
		$(boddy).after(twoButtonForAd);
	}
	
}

