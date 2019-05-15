package ddit.finalproject.team2.common.controller;

import java.io.IOException;
import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletResponse;

import org.springframework.jmx.export.annotation.ManagedAttribute;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import ddit.finalproject.team2.common.service.IUserFindService;
import ddit.finalproject.team2.util.AuthConstants;
import ddit.finalproject.team2.util.AuthorityUtil;
import ddit.finalproject.team2.vo.UserVo;

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
 * 로그인 화면에서 권한에 따라 해당하는 메인 페이지로 이동하기 위한 controller
 * </pre>
 */
@Controller
public class ChooseMainSyncController {

	@Inject
	IUserFindService findService;
	/**
	 * 권한에 따라 메인화면을 선택하는 command handler
	 * @param response
	 * @param authentication 인증을 통과한 사용자의 정보를 담은 객체 (권한 정보 포함)
	 * @param mv viewname과 model 데이터를 함께 처리하기 위한 객체
	 * @return
	 * @throws IOException
	 */
	@GetMapping("/chooseMain")
	public ModelAndView chooseMain(HttpServletResponse response, Authentication authentication, ModelAndView mv) throws IOException{
		int statusCode = 0;
		String view = null;
		String authority = null;
		List<String> authorities = AuthorityUtil.getAuthorityList(authentication);
		if(statusCode!=0){
			response.sendError(statusCode);
		}else {
			if(authorities.contains(AuthConstants.ROLE_ADMIN)){
				view = "admin/adminMain";
				authority = "admin";
			}else if(authorities.contains(AuthConstants.ROLE_STUDENT)){
				view = "student/studentMain";
				authority = "student";
			}else {
				view = "professor/professorMain";
				authority = "professor";
			}
		}
		
		mv.setViewName(view);
		mv.getModel().put("authority", authority);
		
		return mv;
	}
	
	@PostMapping(value="/findId", produces="application/json;charset=UTF-8")
	@ResponseBody
	public String findId(
			@RequestParam(name="user_name") String user_name
			, @RequestParam(name="user_hp") String user_hp
			, Model model
			, HttpServletResponse resp
			) {
		UserVo userVo = new UserVo();
		userVo.setUser_name(user_name);
		userVo.setUser_hp(user_hp);
		
		String user_id = null;
		user_id = findService.findId(userVo);
		
		resp.setHeader("Pragma", "no-cache");
		resp.setHeader("Cache-Control", "no-cache");
		resp.addHeader("Cache-Control", "no-store");
		resp.setDateHeader("Expires", 0);
		
		model.addAttribute("user_id", user_id);
		
		return "index";
	}
}
