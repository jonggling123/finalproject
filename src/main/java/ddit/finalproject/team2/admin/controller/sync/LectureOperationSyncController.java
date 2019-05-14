package ddit.finalproject.team2.admin.controller.sync;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 * @author 이종선
 * @since 2019. 5. 14.
 * @version 1.0
 * @see 
 * <pre>
 * [[개정이력(Modification Information)]]
 * 수정일                          수정자               수정내용
 * --------     --------    ----------------------
 * 2019. 5. 14.      이종선       최초작성
 * Copyright (c) 2019 by DDIT All right reserved
 * 
 * 강의운영관리 화면의 하위 항목으로 이동하기 위한 controller
 * </pre>
 */
@Controller
@RequestMapping("/operation")
public class LectureOperationSyncController {
	
	/**
	 * 평가정책관리 화면으로 이동하기 위한 command handler
	 * @return
	 */
	@GetMapping("policy")
	public ModelAndView goPolicy(ModelAndView mv){
		mv.setViewName("admin/policy");
		return mv;
	}
	
	/**
	 * 수강신청관리 화면으로 이동하기 위한 command handler
	 * @return
	 */
	@GetMapping("attend")
	public ModelAndView goAttend(ModelAndView mv){
		mv.setViewName("admin/attend");
		return mv;
	}
	
	/**
	 * 수강관리 화면으로 이동하기 위한 command handler
	 * @return
	 */
	@GetMapping("attendList")
	public ModelAndView goLectureList(ModelAndView mv){
		mv.setViewName("admin/attendList");
		return mv;
	}
	
	/**
	 * 과제물관리 화면으로 이동하기 위한 command handler
	 * @return
	 */
	@GetMapping("assignment")
	public ModelAndView goAssignment(ModelAndView mv){
		mv.setViewName("admin/assignment");
		return mv;
	}
	
	/**
	 * 시험관리 화면으로 이동하기 위한 command handler
	 * @return
	 */
	@GetMapping("exam")
	public ModelAndView goExam(ModelAndView mv){
		mv.setViewName("admin/exam");
		return mv;
	}
	
	/**
	 * 강의평가관리 화면으로 이동하기 위한 command handler
	 * @return
	 */
	@GetMapping("evaluation")
	public ModelAndView goEvaluation(ModelAndView mv){
		mv.setViewName("admin/lectureEvaluation");
		return mv;
	}
}
