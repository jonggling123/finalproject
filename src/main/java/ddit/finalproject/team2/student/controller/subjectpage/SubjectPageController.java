package ddit.finalproject.team2.student.controller.subjectpage;

import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import ddit.finalproject.team2.vo.UserVo;

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
 * 과목페이지 화면의 하위 항목들로 이동하기 위한 controller
 * </pre>
 */
@Controller
@RequestMapping("/subjectPage/{lecture_code}")
public class SubjectPageController {

	/**
	 * 교육목표 화면으로 이동하기 위한 command handler
	 * @return
	 */
	@GetMapping("eduGoal")
	public ModelAndView goGoal(ModelAndView mv){
		mv.setViewName("student/eduGoal");
		return mv;
	}
	
	/**
	 * 교수소개 화면으로 이동하기 위한 command handler
	 * @return
	 */
	@GetMapping("professorIntro")
	public ModelAndView goIntroduction(ModelAndView mv){
		mv.setViewName("student/professorIntro");
		return mv;
	}
	
	/**
	 * 강의페이지 화면으로 이동하기 위한 command handler
	 * @param mv
	 * @param au
	 * @return
	 */
	@GetMapping("lecturePage")
	public ModelAndView goWeekList(ModelAndView mv, Authentication au){
		mv.setViewName("student/exclude/lecturePage");
		mv.getModel().put("id", au.getName());

		return mv;
	}
	
	/**
	 * 게시판 화면으로 이동하기 위한 command handler
	 * @param mv
	 * @param au
	 * @return
	 */
	@GetMapping("lectureBoard")
	public ModelAndView goBoard(@PathVariable String lecture_code, ModelAndView mv, Authentication au){
		mv.setViewName("student/lectureBoard");
		mv.getModel().put("user", (UserVo)au.getPrincipal());
		mv.getModel().put("lectureCode", lecture_code);
		return mv;
	}
	
	/**
	 * 화상채팅 화면으로 이동하기 위한 command handler
	 * @param mv
	 * @param au
	 * @return
	 */
	@GetMapping("mantoman")
	public ModelAndView goFaceChat(ModelAndView mv, Authentication au){
		mv.setViewName("student/mantoman");
		mv.getModel().put("id", au.getName());
		return mv;
	}
	
	/**
	 * 과제물 화면으로 이동하기 위한 command handler
	 * @param mv
	 * @param au
	 * @return
	 */
	@GetMapping("lectureAssignment")
	public ModelAndView goAssignment(ModelAndView mv, Authentication au){
		mv.setViewName("student/lectureAssignment");
		mv.getModel().put("id", au.getName());
		return mv;
	}
	
	/**
	 * 학생용 학습현황 페이지로 이동하는 command handler
	 * @param mv
	 * @param au
	 * @return
	 */
	@GetMapping("studyState")
	public ModelAndView goStudy(ModelAndView mv, Authentication au){
		mv.setViewName("student/studyState");
		mv.getModel().put("id", au.getName());
		return mv;
	}
	
	/**
	 * 설문지 화면으로 이동하기 위한 command handler
	 * @param mv
	 * @param au
	 * @return
	 */
	@GetMapping("survey")
	public ModelAndView goSurvey(ModelAndView mv, Authentication au){
		mv.setViewName("student/survey");
		mv.getModel().put("id", au.getName());
		return mv;
	}
}
