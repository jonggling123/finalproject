package ddit.finalproject.team2.admin.controller;

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
 * 통계관리 화면의 하위 항목들로 이동하기 위한 controller
 * </pre>
 */
@Controller
@RequestMapping("/statistics")
public class StatisticsController {
	
	/**
	 * 과목통계 화면으로 이동하기 위한 command handler
	 * @return
	 */
	@GetMapping("subject")
	public ModelAndView goSubject(ModelAndView mv){
		mv.setViewName("admin/subjectStats");
		return mv;
	}
	
	/**
	 * 사용자통계 화면으로 이동하기 위한 command handler
	 * @param mv
	 * @return
	 */
	@GetMapping("user")
	public ModelAndView goUser(ModelAndView mv){
		mv.setViewName("admin/userStats");
		return mv;
	}
	
	/**
	 * 시스템접속통계 화면으로 이동하기 위한 command handler
	 * @param mv
	 * @return
	 */
	@GetMapping("system")
	public ModelAndView goSystem(ModelAndView mv){
		mv.setViewName("admin/systemStats");
		return mv;
	}
	
	/**
	 * 교수활동통계 화면으로 이동하기 위한 command handler
	 * @param mv
	 * @return
	 */
	@GetMapping("behavior")
	public ModelAndView goBehavior(ModelAndView mv){
		mv.setViewName("admin/behaviorStats");
		return mv;
	}
}
