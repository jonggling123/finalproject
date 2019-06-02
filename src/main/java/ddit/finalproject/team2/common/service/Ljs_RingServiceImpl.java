package ddit.finalproject.team2.common.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import ddit.finalproject.team2.common.dao.Ljs_IRingDao;
import ddit.finalproject.team2.vo.RingVo;

@Service
public class Ljs_RingServiceImpl implements Ljs_IRingService{
	@Inject
	Ljs_IRingDao dao;

	@Override
	public List<RingVo> retrieveRingList(String user_id) {
		return dao.selectRingList(user_id);
	}

	@Override
	@Transactional
	public List<RingVo> modifyRing(RingVo ring) {
		List<RingVo> list = null;
		int cnt = dao.updateRing(ring.getRing_code());
		if(cnt>0){
			list = dao.selectRingList(ring.getRing_response_id());
		}
		return list;
	}

}
