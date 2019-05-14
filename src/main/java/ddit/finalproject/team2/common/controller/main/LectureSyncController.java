package ddit.finalproject.team2.common.controller.main;

import java.util.List;

import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import ddit.finalproject.team2.util.AuthConstants;
import ddit.finalproject.team2.util.AuthorityUtil;

/**
 * @author 이종선
 * @since 2019. 5. 14.
 * @version 1.0
 * @see 
 * <pre>
 * [[개정이력(Modification Information)]]
 * 수정일                          수정자               수정내용
 * --------     --------    ----------------------
 * 2019. 5. 14.      이종선      최초작성
 * Copyright (c) 2019 by DDIT All right reserved
 * 
 * 강의 화면의 하위 항목들로 이동하기 위한 controller
 * </pre>
 */
@Controller
@RequestMapping("/lecture")
public class LectureSyncController {

	@GetMapping("myLecture")
	public ModelAndView goMyLecture(ModelAndView mv, Authentication au){
		List<String> authorities = AuthorityUtil.getAuthorityList(au);
		if(authorities.contains(AuthConstants.ROLE_STUDENT)){
			mv.setViewName("student/myLecture");
		}else{
			mv.setViewName("professor/myLecture");
		}
		mv.getModel().put("id", au.getName());
		return mv;
	}
	
	/**
	 * 교수용 강의관리 페이지로 이동하는 command handler
	 * @param mv
	 * @param au
	 * @return
	 */
	@GetMapping("lectureManagement")
	public ModelAndView goLectureManagement(ModelAndView mv, Authentication au){
		mv.setViewName("professor/lectureManagement");
		mv.getModel().put("id", au.getName());
		return mv;
	}
	
	/**
	 * 학생용 모든강의 페이지로 이동하는 command handler
	 * @param mv
	 * @param au
	 * @return
	 */
	@GetMapping("allLecture")
	public ModelAndView goAllLecture(ModelAndView mv, Authentication au){
		mv.setViewName("student/allLecture");
		mv.getModel().put("id", au.getName());
		return mv;
	}
}
