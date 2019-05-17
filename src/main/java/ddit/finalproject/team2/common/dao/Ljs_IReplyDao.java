package ddit.finalproject.team2.common.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import ddit.finalproject.team2.vo.ReplyVo;

@Repository
public interface Ljs_IReplyDao {
	/**
	 * 게시글의 댓글의 개수를 조회하는 메서드
	 * @param board_no
	 * @return
	 */
	int selectReplyCount(String board_no);
	
	/**
	 * 게시글의 댓글 목록을 조회하는 메서드
	 * @param board_no
	 * @return not exist : list.size()==0
	 */
	List<ReplyVo> selectReplyList(String board_no);
	
	int insertReply(ReplyVo vo);
	int deleteReply(String reply_no);
}
