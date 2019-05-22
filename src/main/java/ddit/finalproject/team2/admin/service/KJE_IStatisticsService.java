package ddit.finalproject.team2.admin.service;

import java.util.List;
import java.util.Map;

import ddit.finalproject.team2.vo.AttendVo;
import ddit.finalproject.team2.vo.KJE_StlectureVo;
import ddit.finalproject.team2.vo.LectureAccessStatsVo;
import ddit.finalproject.team2.vo.OrganizationVo;

public interface KJE_IStatisticsService {

	/**
	 * 학부 이름을가져오는 메서드
	 * @return 학부이름이 담긴 List
	 */
	public List<OrganizationVo> getUpperOrganization();
	
	/**
	 * 학과 리스트를 가져오는 메서드
	 * @return 학과 이름이 담긴 List
	 */
	public List<OrganizationVo> getLowerOrganization();
	
	
	/**
	 * 과목 리스트를 가져오는 메서드
	 * @return 과목이름이 담긴 List
	 */
	public List<KJE_StlectureVo> getStLecture();
	
	
	
	/**
	 * 과목정보 테이블에 유저가 접속했을때 기록하는 메서드
	 * @param userinfo
	 * @return 기록성공 여부
	 */
	public int recodeLectureAccessStats(Map<String, String> userinfo);
	
}
