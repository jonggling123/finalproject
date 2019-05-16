package ddit.finalproject.team2.common.controller.subjectpage;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.URLEncoder;

import javax.inject.Inject;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.io.IOUtils;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestHeader;
import org.springframework.web.servlet.ModelAndView;

import ddit.finalproject.team2.common.service.Ljs_BoardServiceImpl;
import ddit.finalproject.team2.util.enumpack.BrowserType;
import ddit.finalproject.team2.vo.AttachmentVo;

/**
 * @author 이종선
 * @since 2019. 5. 16.
 * @version 1.0
 * @see 
 * <pre>
 * [[개정이력(Modification Information)]]
 * 수정일                          수정자               수정내용
 * --------     --------    ----------------------
 * 2019. 5. 16.      이종선       최초작성
 * Copyright (c) 2019 by DDIT All right reserved
 * 
 * 과목게시판 화면에서 동기 요청을 처리하기 위한 컨트롤러
 * </pre>
 */
@Controller
public class BoardSyncController {
	@Inject
	Ljs_BoardServiceImpl boardService;
	
	@GetMapping("/board/{board_no}")
	public ModelAndView goBoardView(@PathVariable String board_no, ModelAndView mv, Authentication au){
		mv.setViewName("common/boardView");
		mv.getModel().put("id", au.getName());
		mv.getModel().put("board", boardService.retrieveBoard(board_no));
		
		return mv;
	}
	
	@GetMapping("/board/download/{attachment_no}")
	public String download(@PathVariable String attachment_no
		, @RequestHeader(name="User-Agent") String userAgent
		, HttpServletResponse resp) throws IOException {
		
		AttachmentVo attach = boardService.downloadAttachment(attachment_no);
		String savePath = attach.getFile_path();
		String filename = attach.getFile_name();
		
		BrowserType brType = BrowserType.matchedType(userAgent);
		if(BrowserType.IE.equals(brType) || BrowserType.TRIDENT.equals(brType)){
			filename = URLEncoder.encode(filename, "UTF-8");
		}else{
			filename = new String(filename.getBytes(), "ISO-8859-1");
		}
		
		File saveFile = new File(savePath);
		if(!saveFile.exists()){
			resp.sendError(404);
			return null;
		}
		
		resp.setHeader("Content-Disposition", "attachment;filename=\""+filename+"\"");
		
		try(
			InputStream is = new FileInputStream(saveFile);
			OutputStream os = resp.getOutputStream();
		){
			IOUtils.copy(is, os);
		}
		return null;
	}
}
