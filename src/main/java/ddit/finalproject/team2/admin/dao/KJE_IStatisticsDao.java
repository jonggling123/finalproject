package ddit.finalproject.team2.admin.dao;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import ddit.finalproject.team2.vo.AttendVo;
import ddit.finalproject.team2.vo.KJE_StlectureVo;
import ddit.finalproject.team2.vo.KJE_TimeStatisticsVo;
import ddit.finalproject.team2.vo.LectureAccessStatsVo;
import ddit.finalproject.team2.vo.OrganizationVo;

@Repository
public interface KJE_IStatisticsDao {
	/**
	 * 학부 이름을가져오는 메서드
	 * @return 학부이름이 담긴 List
	 */
	public List<OrganizationVo> selectUpperOrganization();
	
	/**
	 * 학과 리스트를 가져오는 메서드
	 * @return 학과 이름이 담긴 List
	 */
	public List<OrganizationVo> selectLowerOrganization();
	
	
	/**
	 * 과목 리스트를 가져오는 메서드
	 * @return 과목이름이 담긴 List
	 */
	public List<KJE_StlectureVo> selectStLecture();
	
	
	/**
	 * 학생이 수강하는 과목에 따른 강좌정보를 가져오는 메서드
	 * @param userinfo user_id 와 강좌이름
	 * @return 강좌정보
	 */
	public AttendVo selectAttend(Map<String, String> userinfo);
	
	/**
	 * 과목정보 테이블에 접속했을때 기록을 insert 하는 메서드
	 * @param LectureAccessStats 접속자 정보
	 * @return insert 성공 여부
	 */
	public int insertLectureAccessStats(LectureAccessStatsVo lectureAccessStats);
	
	
//	public KJE_TimeStatisticsVo
	
}
