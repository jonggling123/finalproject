package ddit.finalproject.team2.common.dao;


import java.util.List;

import org.springframework.stereotype.Repository;

import ddit.finalproject.team2.vo.BoardSubjectVo;

@Repository
public interface IBoardDao {
	List<BoardSubjectVo> selectBoardList();
}
