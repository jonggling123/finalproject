package ddit.finalproject.team2.common.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.transaction.annotation.Transactional;

import ddit.finalproject.team2.common.dao.Ljs_IReplyDao;
import ddit.finalproject.team2.util.enumpack.ServiceResult;
import ddit.finalproject.team2.util.exception.CommonException;
import ddit.finalproject.team2.vo.Ljs_ReplyVo;

@Service
public class Ljs_ReplyServiceImpl implements Ljs_IReplyService{

	@Inject
	Ljs_IReplyDao dao;
	
	private void setRemover(List<Ljs_ReplyVo> list){
		for(Ljs_ReplyVo vo : list){
			vo.setRemover("<button type='button' class='delRepBtn' name='"+vo.getUser_id()+"' value='"+vo.getReply_no()+"'>삭제</button>");
			vo.setEditor("<button type='button' class='editRepBtn' name='"+vo.getUser_id()+"' value='"+vo.getReply_no()+"'>수정</button>");
		}
	}
	
	@Override
	public List<Ljs_ReplyVo> retrieveReplyList(String board_no) {
		List<Ljs_ReplyVo> list = dao.selectReplyList(board_no);
		if(list.size()!=0){
			setRemover(list);
		}
		return list;
	}

	@Override
	public ServiceResult createReply(Ljs_ReplyVo reply) {
		ServiceResult result = ServiceResult.FAILED;
		int cnt = dao.insertReply(reply);
		if(cnt>0){
			result = ServiceResult.OK;
		}
		
		return result;
	}

	@Override
	@Transactional
	public ServiceResult removeReply(String reply_no) {
		ServiceResult result = ServiceResult.FAILED;
		int cnt = dao.deleteReply(reply_no);
		if(cnt>0){
			result = ServiceResult.OK;
		}
		return result;
	}

}
