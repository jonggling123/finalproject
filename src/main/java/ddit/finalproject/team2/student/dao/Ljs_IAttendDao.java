package ddit.finalproject.team2.student.dao;

import org.springframework.stereotype.Repository;

import ddit.finalproject.team2.vo.Ljs_BoardVo;

@Repository
public interface Ljs_IAttendDao {
	String selectAttendNo(Ljs_BoardVo board);
}
