package ddit.finalproject.team2.student.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import ddit.finalproject.team2.student.dao.Ljs_IAttendDao;
import ddit.finalproject.team2.student.dao.Ljs_IReplyDao;
import ddit.finalproject.team2.util.enumpack.ServiceResult;
import ddit.finalproject.team2.vo.Ljs_BoardVo;
import ddit.finalproject.team2.vo.Ljs_ReplyVo;

@Service
public class Ljs_ReplyServiceImpl implements Ljs_IReplyService{

	@Inject
	Ljs_IReplyDao dao;
	
	@Inject
	Ljs_IAttendDao attendDao;
	
	private void setRemover(List<Ljs_ReplyVo> list){
		for(Ljs_ReplyVo vo : list){
			if(vo.getAttend_no()!=null){
				vo.setUser(dao.selectWriterIdByAttendNo(vo.getAttend_no()));
			}else{
				vo.setUser(dao.selectWriterIdByLectureCode(vo.getLecture_code()));
			}
			vo.setUser_name(vo.getUser().getUser_name());
			vo.setRemover("<button type='button' class='delRepBtn' name='"+vo.getUser().getUser_id()+"' value='"+vo.getReply_no()+"'>삭제</button>");
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
		Ljs_BoardVo vo = new Ljs_BoardVo(reply.getUser().getUser_id(), reply.getLecture_code());
		reply.setAttend_no(attendDao.selectAttendNo(vo));
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

	@Override
	public ServiceResult modifyReply(Ljs_ReplyVo reply) {
		ServiceResult result = ServiceResult.FAILED;
		int cnt = dao.updateReply(reply);
		if(cnt>0){
			result = ServiceResult.OK;
		}
		return result;
	}

}
