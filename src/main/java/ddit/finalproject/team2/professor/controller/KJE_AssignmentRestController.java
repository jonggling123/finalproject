package ddit.finalproject.team2.professor.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import ddit.finalproject.team2.professor.service.KJE_IAssignmentService;
import ddit.finalproject.team2.util.enumpack.ServiceResult;
import ddit.finalproject.team2.vo.KJE_AssignmentnFileVo;
import ddit.finalproject.team2.vo.KJE_LWeekAssignmentProVo;
import ddit.finalproject.team2.vo.KJE_PolicyManagementVo;

@RestController
public class KJE_AssignmentRestController {
	
	@Inject
	KJE_IAssignmentService assignmentService;
	
	@GetMapping(value="/getAssignmentList", produces="application/json;charset=UTF-8")
	public Map<String, Object> getList(
			@RequestParam (required =true)String lecture_code
			){
		Map<String, Object> map = new HashMap<>();
		List<KJE_LWeekAssignmentProVo> list = assignmentService.retrieveLWeekAssignmentProList(lecture_code);
		map.put("data", list);
		return map;
	}
	
	@GetMapping(value="/getAssignmentnFile",produces="application/json;charset=UTF-8")
	public KJE_AssignmentnFileVo getAssignmentnFile(
			@RequestParam (required =true)String assignment_no
			){
		KJE_AssignmentnFileVo resp = assignmentService.retriveAssignment(assignment_no);
		
		return resp;
	}
	
	@RequestMapping(value = "/saveAssignment", produces = "text/plain; charset=UTF-8", 
			method = RequestMethod.POST)
	public String save(@ModelAttribute("assignment")KJE_AssignmentnFileVo assignment
		) throws Exception {
		String resp =null;
		ServiceResult result = assignmentService.createAssignment(assignment);
		return resp;
}
	
	
}
