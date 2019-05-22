package ddit.finalproject.team2.student.service;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

import javax.inject.Inject;
import javax.print.attribute.standard.PDLOverrideSupported;

import org.apache.commons.io.FileUtils;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.context.WebApplicationContext;
import org.springframework.web.multipart.MultipartFile;

import ddit.finalproject.team2.student.dao.Ljs_IAttachmentDao;
import ddit.finalproject.team2.student.dao.Ljs_IAttendDao;
import ddit.finalproject.team2.student.dao.Ljs_IBoardDao;
import ddit.finalproject.team2.student.dao.Ljs_IReplyDao;
import ddit.finalproject.team2.util.enumpack.ServiceResult;
import ddit.finalproject.team2.util.exception.CommonException;
import ddit.finalproject.team2.vo.AttachmentVo;
import ddit.finalproject.team2.vo.AttendVo;
import ddit.finalproject.team2.vo.Ljs_BoardSubjectVo;

@Service
public class Ljs_BoardServiceImpl implements Ljs_IBoardService{
	@Inject
	Ljs_IBoardDao boardDao;
	
	@Inject
	Ljs_IReplyDao replyDao;
	
	@Inject
	Ljs_IAttendDao attendDao;
	
	@Inject
	WebApplicationContext container;
	
	@Value("#{appInfo['attachmentPath']}")
	String attachmentPath;
	
	@Inject
	Ljs_IAttachmentDao attachmentDao;
	
	public void preProcessAttachmentList(Ljs_BoardSubjectVo board){
		List<AttachmentVo> attachList = board.getAttachmentList();
		if(attachList==null) return;
		
		int i=1;
		for(AttachmentVo vo : attachList){
			String saveName = UUID.randomUUID().toString();
			File saveFile = new File(attachmentPath, saveName);
			vo.setFile_path(saveFile.getAbsolutePath());
			vo.setFile_order(i+"");
			i++;
		}
	}
	
	private void processAttachment(Ljs_BoardSubjectVo board){
		preProcessAttachmentList(board);
		
		List<AttachmentVo> attachList = board.getAttachmentList();
		if(attachList!=null && attachList.size()>0){
			attachmentDao.insertAttachmentAll(board);
			for(AttachmentVo vo : attachList){
				String savePath = vo.getFile_path();
				MultipartFile item = vo.getFileItem();
				try(
					InputStream is = item.getInputStream();
					){
					FileUtils.copyInputStreamToFile(is, new File(savePath));
				} catch (IOException e) {
					throw new RuntimeException(e);
				}
			}
		}
		
		int[] delAttachNos = board.getDeleteAttachmentNos();
		if(delAttachNos!=null && delAttachNos.length>0){
			List<AttachmentVo> delAttachList = attachmentDao.selectAttachmentList(board);
			attachmentDao.deleteAttachmentAll(board);
			deleteRealAttachment(delAttachList);
		}
	}
	
	private void deleteRealAttachment(List<AttachmentVo> attachmentList){
		if(attachmentList!=null){
			for(AttachmentVo vo : attachmentList){
				if(vo==null) continue;
				String savedPath = vo.getFile_path();
				if(savedPath!=null){
					FileUtils.deleteQuietly(new File(savedPath));
				}
			}
		}
	}
	
	@Override
	public List<Ljs_BoardSubjectVo> retrieveBoardList(String lecture_code) {
		List<Ljs_BoardSubjectVo> boardList = boardDao.selectBoardList(lecture_code);
		
		if(boardList.size()>0){
			for(int i=0; i<boardList.size(); i++){
				Ljs_BoardSubjectVo vo = boardList.get(i);
				vo.setBoard_title(vo.getBoard_title(), vo.getBoard_no());
				vo.setReplycount(replyDao.selectReplyCount(vo.getBoard_no()));
				vo.setUser_name(vo.getUser().getUser_name());
			}
		}
		
		return boardList;
	}

	@Override
	public List<Ljs_BoardSubjectVo> retrieveBoard(String board_no) {
		boardDao.incrementHit(board_no);
		
		List<Ljs_BoardSubjectVo> board = boardDao.selectboard(board_no);
		if(board.size()>0){
			for(Ljs_BoardSubjectVo b : board){
				b.setBoard_attachmentcount(b.getSavedAttachmentList().size()+"");
			}
		}
		return board;
	}

	@Override
	public AttachmentVo downloadAttachment(String attachment_no) {
		AttachmentVo vo = attachmentDao.selectAttacment(attachment_no);
		return vo;
	}

	@Transactional
	@Override
	public ServiceResult createBoard(Ljs_BoardSubjectVo board) {
		ServiceResult result = ServiceResult.FAILED;
		AttendVo attend = new AttendVo(board.getUser().getUser_id(), board.getLecture_code());
		board.setAttend_no(attendDao.selectAttendNo(attend));
		int cnt = boardDao.insertBoard(board);
		if(cnt>0){
			processAttachment(board);
			result = ServiceResult.OK;
		}
		return result;
	}

	@Transactional
	@Override
	public ServiceResult removeBoard(Ljs_BoardSubjectVo board) {
		ServiceResult result = ServiceResult.FAILED;
		List<Ljs_BoardSubjectVo> savedList = boardDao.selectboard(board.getBoard_no());
		if(savedList.size()==0) throw new CommonException("해당 게시글 없음");
		
		Ljs_BoardSubjectVo saved = null;
		for(Ljs_BoardSubjectVo a : savedList){
			if(a.getBoard_no().equals(board.getBoard_no())){
				saved = a;
				break;
			}
		}
		
		if(replyDao.selectReplyList(saved.getBoard_no()).size()!=0){
			replyDao.deleteAllReply(board.getBoard_no());
		}
		
		int cnt = 0;
		List<AttachmentVo> attachList = saved.getSavedAttachmentList();
		if(attachList!=null){
			int[] delNoArr = new int[attachList.size()];
			for(int i=0; i<attachList.size(); i++){
				delNoArr[i] = Integer.parseInt(attachList.get(i).getAttachment_no());
			}
			saved.setDeleteAttachmentNos(delNoArr);
			attachmentDao.deleteAttachmentAll(saved);
			
			cnt = boardDao.deleteBoard(board.getBoard_no());
			if(cnt>0){
				deleteRealAttachment(attachList);
				result = ServiceResult.OK;
			}
		}else{
			boardDao.deleteBoard(board.getBoard_no());
			result = ServiceResult.OK;
		}
		
		
		return result;
	}

	@Transactional
	@Override
	public Ljs_BoardSubjectVo modifyBoard(Ljs_BoardSubjectVo board) {
		Ljs_BoardSubjectVo modified = null;
   		List<Ljs_BoardSubjectVo> savedList = boardDao.selectboard(board.getBoard_no());
		if(savedList.size()==0) throw new CommonException("해당 게시글 없음");
		int cnt = boardDao.updateBoard(board);
		if(cnt>0){
			processAttachment(board);
			for(Ljs_BoardSubjectVo a : retrieveBoard(board.getBoard_no())){
				if(a.getBoard_no().equals(board.getBoard_no())){
					modified = a;
					break;
				}
			}
		}
		return modified;
	}
	
}
