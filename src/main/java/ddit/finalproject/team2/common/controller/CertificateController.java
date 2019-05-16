package ddit.finalproject.team2.common.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CertificateController {
	
	@RequestMapping("/transcriptSemple")
	public String transcriptSempleSelect(){
		return "student/Certificate/KJE_TranscriptSemple";
	}

	@RequestMapping("/grauduateSemple")
	public String grauduateSempleSelect(){
		return "student/Certificate/KJE_grauduateSemple";
	}
	
	@RequestMapping("/completionSemple")
	public String completionSempleSelect(){
		return "student/Certificate/KJE_CompletionSemple";
	}
	
	@RequestMapping("/schoolRegisterSemple")
	public String schoolRegisterSelect(){
		return "student/Certificate/KJE_SchoolRegisterSemple";
	}
	
	
}
