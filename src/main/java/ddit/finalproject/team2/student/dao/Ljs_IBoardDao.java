package ddit.finalproject.team2.student.dao;


import java.util.List;

import org.springframework.stereotype.Repository;

import ddit.finalproject.team2.vo.Ljs_BoardSubjectVo;

@Repository
public interface Ljs_IBoardDao {
	/**
	 * 게시글 전체 목록을 가져오는 메서드
	 * @return not exist : list.size()==0;
	 */
	List<Ljs_BoardSubjectVo> selectBoardList(String lecture_code);
	
	/**
	 * 해당 게시글과 앞, 뒤 2개의 게시글을 같이 가져오는 메서드
	 * @param board_no
	 * @return not exist : null
	 */
	List<Ljs_BoardSubjectVo> selectboard(String board_no);
	
	/**
	 * 게시글 조회수 증가 메서드
	 * @param board_no
	 * @return
	 */
	int incrementHit(String board_no);
	
	/**
	 * 게시글 삽입 메서드
	 * @param board
	 * @return 
	 */
	int insertBoard(Ljs_BoardSubjectVo board);
	
	int deleteBoard(String board_no);
	
	int updateBoard(Ljs_BoardSubjectVo board);
	
	int selectCurrentUser(String user_id);
}
