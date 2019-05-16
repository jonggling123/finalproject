package ddit.finalproject.team2.common.controller.main;

import java.util.List;

import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import ddit.finalproject.team2.util.AuthorityUtil;
import ddit.finalproject.team2.util.constant.AuthConstants;

/**
 * @author 이종선
 * @since 2019. 5. 13.
 * @version 1.0
 * @see 
 * <pre>
 * [[개정이력(Modification Information)]]
 * 수정일                          수정자               수정내용
 * --------     --------    ----------------------
 * 2019. 5. 13.      이종선       최초작성
 * Copyright (c) 2019 by DDIT All right reserved
 * 
 * 메인페이지에서 권한에 따라 하위 항목들로 이동하기 위한 controller
 * </pre>
 */
@Controller
@RequestMapping("/main")
public class MainSyncController {

	/**
	 * 성적조회 화면으로 이동하기 위한 command handler
	 * @param mv
	 * @param au
	 * @return
	 */
	@GetMapping("searchGrade")
	public ModelAndView goGrade(ModelAndView mv, Authentication au){
		List<String> authorities = AuthorityUtil.getAuthorityList(au);
		if(authorities.contains(AuthConstants.ROLE_STUDENT)){
			mv.setViewName("student/searchGrade");
		}else{
			mv.setViewName("professor/searchGrade");
		}
		mv.getModel().put("id", au.getName());
		return mv;
	}
	
	/**
	 * 나의정보 화면으로 이동하기 위한 command handler
	 * @param mv
	 * @param au
	 * @return
	 */
	@GetMapping("myInfo")
	public ModelAndView goMyInfo(ModelAndView mv, Authentication au){
		List<String> authorities = AuthorityUtil.getAuthorityList(au);
		if(authorities.contains(AuthConstants.ROLE_STUDENT)){
			mv.setViewName("student/myInfo");
		}else{
			mv.setViewName("professor/myInfo");
		}
		mv.getModel().put("id", au.getName());
		return mv;
	}
	
	/**
	 * 일정 화면으로 이동하기 위한  command handler
	 * @param mv
	 * @param au
	 * @return
	 */
	@GetMapping("schedule")
	public ModelAndView goSchedule(ModelAndView mv, Authentication au){
		List<String> authorities = AuthorityUtil.getAuthorityList(au);
		if(authorities.contains(AuthConstants.ROLE_STUDENT)){
			mv.setViewName("student/schedule");
		}else{
			mv.setViewName("professor/schedule");
		}
		mv.getModel().put("id", au.getName());
		return mv;
	}
	
	/**
	 * 학생용 수강과목 페이지로 이동하는 command handler
	 * @param mv
	 * @param au
	 * @return
	 */
	@GetMapping("attendList")
	public ModelAndView goAttendList(ModelAndView mv, Authentication au){
		mv.setViewName("student/attendList");
		mv.getModel().put("id", au.getName());
		return mv;
	}
	
	/**
	 * 증명서 화면으로 이동하는 command handler
	 * @param user_id
	 * @param mv
	 * @param au
	 * @return
	 */
	@GetMapping("certificate")
	public ModelAndView goCertificate(ModelAndView mv, Authentication au) {
		List<String> authorities = AuthorityUtil.getAuthorityList(au);
		if(authorities.contains(AuthConstants.ROLE_STUDENT)){
			mv.setViewName("student/certificate");
		}else {
			mv.setViewName("professor/certificate");
		}
		mv.getModel().put("id", au.getName());
		return mv;
	}
	
	/**
	 * 공지사항 화면으로 이동하는 command handler
	 * @param mv
	 * @param au
	 * @return
	 */
	@GetMapping("notice")
	public ModelAndView goNotice(ModelAndView mv, Authentication au){
		mv.setViewName("common/notice");
		mv.getModel().put("id", au.getName());
		return mv;
	}
	
	/**
	 * 학생용 수강신청 페이지로 이동하는 command handler
	 * @param mv
	 * @param au
	 * @return
	 */
	@GetMapping("attend")
	public ModelAndView goAttendance(ModelAndView mv, Authentication au){
		mv.setViewName("student/attend");
		mv.getModel().put("id", au.getName());
		return mv;
	}
	
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
	
	
	
	
	
	/**
	 * 교수용 과목관리 페이지로 이동하는 command handler
	 * 이상엽 만든거 보고 수정해야함(0515)
	 * @param mv
	 * @param au
	 * @return
	 */
	@GetMapping("subjectManagement")
	public ModelAndView goSubjectManagement(ModelAndView mv, Authentication au){
		mv.setViewName("professor/subjectManagement");
		mv.getModel().put("id", au.getName());
		return mv;
	}
	
}
