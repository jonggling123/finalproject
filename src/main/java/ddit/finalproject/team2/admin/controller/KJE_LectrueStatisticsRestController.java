package ddit.finalproject.team2.admin.controller;

import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.commons.collections.map.HashedMap;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import ddit.finalproject.team2.admin.service.KJE_IStatisticsService;
import ddit.finalproject.team2.vo.KJE_StlectureVo;
import ddit.finalproject.team2.vo.KJE_TimeStatisticsVo;

@Controller
@RequestMapping("/letureStatistics")
public class KJE_LectrueStatisticsRestController {

	@Inject
	KJE_IStatisticsService StatisticsService; 
	
	@ResponseBody
	@RequestMapping(method=RequestMethod.POST, produces="application/json;charset=UTF-8")
	public List<KJE_TimeStatisticsVo> getTimeStatistics(
			@RequestParam (required =false)String lecture_code,
			@RequestParam (required =false)String start_date,
			@RequestParam (required =false)String end_date
			){
		
		Map<String, String> stinfo = new HashedMap();
		stinfo.put("lecture_code", lecture_code);
		stinfo.put("start_date", start_date);
		stinfo.put("end_date", end_date);
		
		List<KJE_TimeStatisticsVo> resp = StatisticsService.getLectureStatistics(stinfo);
				
		return resp;
	}
	
	
}
