package ddit.finalproject.team2.common.dao;


import java.util.List;

import org.springframework.stereotype.Repository;

import ddit.finalproject.team2.vo.Ljs_BoardSubjectVo;

@Repository
public interface Ljs_IBoardDao {
	/**
	 * 게시글 전체 목록을 가져오는 메서드
	 * @return not exist : list.size()==0;
	 */
	List<Ljs_BoardSubjectVo> selectBoardList();
	
	/**
	 * 게시글 1개를 가져오는 메서드
	 * @param board_no
	 * @return not exist : null
	 */
	Ljs_BoardSubjectVo selectboard(String board_no);
	
	/**
	 * 게시글 조회수 증가 메서드
	 * @param board_no
	 * @return
	 */
	int incrementHit(String board_no);
}
