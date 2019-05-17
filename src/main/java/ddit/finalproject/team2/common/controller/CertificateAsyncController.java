package ddit.finalproject.team2.common.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.springframework.security.core.Authentication;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import ddit.finalproject.team2.common.service.KJE_CertificateServiceImpl;
import ddit.finalproject.team2.vo.KJE_CertificateVo;
import ddit.finalproject.team2.vo.Ljs_BoardSubjectVo;
import ddit.finalproject.team2.vo.UserVo;

@RestController
@RequestMapping("/certificateList")
public class CertificateAsyncController {
	@Inject
	KJE_CertificateServiceImpl certificateService;
	
	@GetMapping(produces="application/json;charset=UTF-8")
	public Map<String, Object> getList(Authentication authentication){
		Map<String, Object> map = new HashMap<>();
		String user_authority = ((UserVo)authentication.getPrincipal()).getUser_authority();
		List<KJE_CertificateVo> list = certificateService.retriveCertificateList(user_authority);
		map.put("data", list);
		return map;
	}
	
}
