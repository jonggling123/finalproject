package ddit.finalproject.team2.common.controller;

import java.io.IOException;
import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.CookieValue;
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
import ddit.finalproject.team2.util.EncryptUtils;
import ddit.finalproject.team2.util.constant.AuthConstants;
import ddit.finalproject.team2.util.enumpack.ServiceResult;
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
	public UserVo findId(
			@RequestBody UserVo userVo
			, @CookieValue(value="confirm", required=false) Cookie confirmCookie
			, HttpServletRequest request) {

		String confirm = "";
		String user_id = null;
		UserVo uservo = new UserVo();
		if(confirmCookie != null) {
			confirm = confirmCookie.getValue();
		}
		
		if(confirm.equals(userVo.getUser_mail())) {
			user_id = findService.findId(userVo);
			uservo.setUser_id(user_id);
		}
		return uservo;
	}
	
	@RequestMapping(value="/confirmHp", produces="application/json; charset=UTF-8", method=RequestMethod.POST)
	@ResponseBody
	public String confirmHp(@RequestBody UserVo userVo, HttpServletResponse response) throws Exception {
		ServiceResult result = findService.confirmHp(userVo);
		
		String msg = "";
		String ins = "";
		if (ServiceResult.OK.equals(result)) {
			for(int i=0; i<6; i++) {
				ins += String.valueOf(((int)(Math.random()*9)));
			}
			Cookie setCookie = new Cookie("confirm", ins);
			System.out.println(ins);
			setCookie.setMaxAge(300); 
			response.addCookie(setCookie);
		} else {
			msg = "이름과 핸드폰 번호를 확인하여 주세요.";
		}
		return msg;
	}
	
	@RequestMapping(value="/confirmPassHp", produces="application/json; charset=UTF-8", method=RequestMethod.POST)
	@ResponseBody
	public String confirmPassHp(@RequestBody UserVo userVo, HttpServletResponse response) throws Exception {
		ServiceResult result = findService.confirmPassHp(userVo);
		
		String msg = "";
		String ins = "";
		if (ServiceResult.OK.equals(result)) {
			for(int i=0; i<6; i++) {
				ins += String.valueOf(((int)(Math.random()*9)));
			}
			Cookie setCookie = new Cookie("confirmPass", ins);
			System.out.println(ins);
			setCookie.setMaxAge(300); 
			response.addCookie(setCookie);
		} else {
			msg = "이름과 핸드폰 번호를 확인하여 주세요.";
		}
		return msg;
	}
	
	@RequestMapping(value="/findPass", produces="application/json; charset=UTF-8", method=RequestMethod.POST)
	@ResponseBody
	public String findPass(
			@RequestBody UserVo userVo
			, @CookieValue(value="confirmPass", required=false) Cookie confirmconfirmPassCookie
			, HttpServletRequest request) {

		String confirm = "";
		String user_id = null;
		UserVo uservo = new UserVo();
		if(confirmconfirmPassCookie != null) {
			confirm = confirmconfirmPassCookie.getValue();
		}
		String msg = null;
		if(confirm.equals(userVo.getUser_mail())) {
			msg = "인증번호 확인이 완료되었습니다.";
		}
		return msg;
	}
}
