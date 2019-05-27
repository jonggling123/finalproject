package ddit.finalproject.team2.common.service;

import java.util.List;

import ddit.finalproject.team2.vo.RingVo;

public interface Ljs_IRingService {
	List<RingVo> retrieveRingList(String user_id);
	List<RingVo> modifyRing(RingVo ring);
}
