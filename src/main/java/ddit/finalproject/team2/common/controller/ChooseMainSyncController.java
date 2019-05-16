package ddit.finalproject.team2.common.controller;

import java.io.IOException;
import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletResponse;

import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import ddit.finalproject.team2.common.service.IUserFindService;
import ddit.finalproject.team2.common.service.KJE_IFaceIdService;
import ddit.finalproject.team2.util.AuthorityUtil;
import ddit.finalproject.team2.util.constant.AuthConstants;
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
	@Inject
	KJE_IFaceIdService faceIdService;
	
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
				
				String userId = authentication.getName();
				
				if(!(faceIdService.getFaceId(userId))){
					view = "student/createFaceId";
					authority = "student";
				}else{
					
					view = "student/studentMain";
					authority = "student";
				}
				
			}else {
				view = "professor/professorMain";
				authority = "professor";
			}
		}
		
		mv.setViewName(view);
		mv.getModel().put("authority", authority);
		
		return mv;
	}
	
	@RequestMapping(value="/findId", produces="application/json; charset=UTF-8", method=RequestMethod.POST)
	@ResponseBody
	public UserVo findId(@RequestBody UserVo userVo) throws Exception {
		System.out.println(userVo.toString());
		String user_id = null;
		user_id = findService.findId(userVo);
		UserVo uservo = new UserVo();
		
		String ins = "";
		for(int i=0; i<6; i++) {
			ins += String.valueOf(((int)(Math.random()*9)));
		}
		System.out.println(ins);
		
		uservo.setUser_mail(ins);
		uservo.setUser_id(user_id);
		System.out.println(user_id);
		return uservo;
	}
}
