package ddit.finalproject.team2.admin.service;

import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import ddit.finalproject.team2.admin.dao.KJE_IStatisticsDao;
import ddit.finalproject.team2.vo.AttendVo;
import ddit.finalproject.team2.vo.KJE_StlectureVo;
import ddit.finalproject.team2.vo.KJE_TimeStatisticsVo;
import ddit.finalproject.team2.vo.LectureAccessStatsVo;
import ddit.finalproject.team2.vo.OrganizationVo;

@Service
public class KJE_StatisticsServiceImpl implements KJE_IStatisticsService {

	@Inject
	KJE_IStatisticsDao statisticsDao;
	
	@Override
	public List<OrganizationVo> getUpperOrganization() {
		 List<OrganizationVo> upperOrganizationList = statisticsDao.selectUpperOrganization();
		return upperOrganizationList;
	}

	@Override
	public List<OrganizationVo> getLowerOrganization() {
		 List<OrganizationVo> lowerOrganizationList = statisticsDao.selectLowerOrganization();
		return lowerOrganizationList;
	}

	@Override
	public List<KJE_StlectureVo> getStLecture() {
		 List<KJE_StlectureVo> stLectureList = statisticsDao.selectStLecture();
		return stLectureList;
	}

	@Override
	public int recodeLectureAccessStats(Map<String, String> userinfo) {
		AttendVo attend = statisticsDao.selectAttend(userinfo);
		LectureAccessStatsVo lectureAccessStats = new LectureAccessStatsVo();
		lectureAccessStats.setAcc_ip(userinfo.get("acc_ip"));
		lectureAccessStats.setAttend_no(attend.getAttend_no());
		int result = statisticsDao.insertLectureAccessStats(lectureAccessStats);
		
		return result;
	}

	@Override
	public List<KJE_TimeStatisticsVo> getLectureStatistics(Map<String, String> stinfo) {
		List<KJE_TimeStatisticsVo> timeStatisticsList = statisticsDao.selectLectureStatistics(stinfo); 
		return timeStatisticsList;
	}

	
	

}
