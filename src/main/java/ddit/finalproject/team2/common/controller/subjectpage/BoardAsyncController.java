package ddit.finalproject.team2.common.controller.subjectpage;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import ddit.finalproject.team2.common.service.Ljs_IBoardService;
import ddit.finalproject.team2.vo.Ljs_BoardSubjectVo;

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
 * 게시판 화면에서 비동기 요청을 처리하기 위한 controller
 * </pre>
 */
@RestController
@RequestMapping("/board")
public class BoardAsyncController {
	@Inject
	Ljs_IBoardService boardService;
	
	@GetMapping(produces="application/json;charset=UTF-8")
	public Map<String, Object> getList(){
		Map<String, Object> map = new HashMap<>();
		List<Ljs_BoardSubjectVo> list = boardService.retrieveBoardList();
		
		map.put("data", list);
		return map;
	}
	
}
