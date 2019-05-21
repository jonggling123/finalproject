package ddit.finalproject.team2.common.dao;

import org.springframework.stereotype.Repository;

import ddit.finalproject.team2.vo.AttendVo;

@Repository
public interface Ljs_IAttendDao {
	String selectAttendNo(AttendVo attend);
}
