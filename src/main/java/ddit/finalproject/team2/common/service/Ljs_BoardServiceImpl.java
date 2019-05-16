package ddit.finalproject.team2.common.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import ddit.finalproject.team2.common.dao.Ljs_IAttachmentDao;
import ddit.finalproject.team2.common.dao.Ljs_IBoardDao;
import ddit.finalproject.team2.common.dao.Ljs_IReplyDao;
import ddit.finalproject.team2.util.exception.CommonException;
import ddit.finalproject.team2.vo.AttachmentVo;
import ddit.finalproject.team2.vo.Ljs_BoardSubjectVo;

@Service
public class Ljs_BoardServiceImpl implements Ljs_IBoardService{
	@Inject
	Ljs_IBoardDao boardDao;
	
	@Inject
	Ljs_IReplyDao replyDao;
	
	@Inject
	Ljs_IAttachmentDao attachmentDao;

	@Override
	public List<Ljs_BoardSubjectVo> retrieveBoardList() {
		List<Ljs_BoardSubjectVo> boardList = boardDao.selectBoardList();
		if(boardList.size()==0){
			throw new CommonException("목록이 없습니다.");
		}
		
		for(int i=0; i<boardList.size(); i++){
			Ljs_BoardSubjectVo vo = boardList.get(i);
			vo.setReplycount(replyDao.selectReplyCount(vo.getBoard_no()));
		}
		
		return boardList;
	}

	@Override
	public Ljs_BoardSubjectVo retrieveBoard(String board_no) {
		Ljs_BoardSubjectVo board = boardDao.selectboard(board_no);
		if(board==null){
			throw new CommonException(board_no+"에 해당하는 게시글이 존재하지 않습니다.");
		}
		board.setReplyList(replyDao.selectReplyList(board_no));
		return board;
	}

	@Override
	public AttachmentVo downloadAttachment(String attachment_no) {
		AttachmentVo vo = attachmentDao.selectAttacment(attachment_no);
		if(vo==null) throw new CommonException(attachment_no+"에 해당하는 파일이 없음");
		return vo;
	}
	
}
