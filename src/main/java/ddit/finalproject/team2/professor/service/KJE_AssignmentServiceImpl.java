package ddit.finalproject.team2.professor.service;

import java.io.File;
import java.io.InputStream;
import java.util.List;
import java.util.UUID;

import javax.inject.Inject;

import org.apache.commons.io.FileUtils;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import ddit.finalproject.team2.professor.dao.KJE_IAssignmentDao;
import ddit.finalproject.team2.util.enumpack.ServiceResult;
import ddit.finalproject.team2.vo.AttachmentVo;
import ddit.finalproject.team2.vo.KJE_AssFileVo;
import ddit.finalproject.team2.vo.KJE_AssignmentnFileVo;
import ddit.finalproject.team2.vo.KJE_LWeekAssignmentProVo;
import ddit.finalproject.team2.vo.Ljs_BoardVo;

@Service
public class KJE_AssignmentServiceImpl implements KJE_IAssignmentService {
	
	@Inject
	KJE_IAssignmentDao assignmentDao; 
	
	@Value("#{appInfo['assignmentPath']}") // spEL사용
	String assignmentPath ;
	
	public void preProcessAssignmentFileListList(KJE_AssignmentnFileVo assignmentnFileVo){
		
		List<KJE_AssFileVo> assignmentFileList = assignmentnFileVo.getAssignmentFileList();
		if(assignmentFileList==null) return;
		
		for(KJE_AssFileVo assignmentFile: assignmentFileList){
				String saveName=UUID.randomUUID().toString();
				File saveFile = new File(assignmentPath, saveName);
				assignmentFile.setFile_path(saveFile.getAbsolutePath());
		}
		
	}
	
	@Override
	public List<KJE_LWeekAssignmentProVo> retrieveLWeekAssignmentProList(String lecture_code){
		List<KJE_LWeekAssignmentProVo> lWeekAssignmentProList = assignmentDao.selectLWeekAssignmentProList(lecture_code);
		for(int i = 0 ; i<lWeekAssignmentProList.size();i++){
			
			if(StringUtils.isNotBlank(lWeekAssignmentProList.get(i).getAssignment_no())){
				
				lWeekAssignmentProList.get(i).setBtnView("<button class='btn btn-default notika-btn-default viewbtn' name='"+
						lWeekAssignmentProList.get(i).getAssignment_no()+"'>과제 보기</button>");
			}else{
				
				lWeekAssignmentProList.get(i).setBtnInsert("<button class='btn btn-default notika-btn-default insertbtn'>과제등록</button>");
			}
			
		}
		
		return  lWeekAssignmentProList;
	}

	@Override
	public KJE_AssignmentnFileVo retriveAssignment(String assignment_no) {
		KJE_AssignmentnFileVo assignmentnFile = assignmentDao.selectAssignment(assignment_no);
		return assignmentnFile;
	}

	@Override
	public ServiceResult createAssignment(KJE_AssignmentnFileVo assignmentnFileVo) {
		preProcessAssignmentFileListList(assignmentnFileVo);
		
		int rowCnt = assignmentDao.insertAssignment(assignmentnFileVo);
		
		ServiceResult result = ServiceResult.FAILED;
		if(rowCnt > 0) {
			List<KJE_AssFileVo> assignmentFileList = assignmentnFileVo.getAssignmentFileList();
			if(assignmentFileList.size()!=0) {
				
				assignmentDao.insertAllAssFile(assignmentnFileVo);
				for(KJE_AssFileVo assFile : assignmentFileList) {
					String savePath = assFile.getFile_path();
					MultipartFile item = assFile.getFileItem();
					try(
							InputStream is = item.getInputStream();
							){
						FileUtils.copyInputStreamToFile(is, new File(savePath));
					}catch (Exception e) {
						throw new RuntimeException(e);
					}
				}
			}
			result = ServiceResult.OK;
		} // if(rowCnt > 0) end
		return result;
	}

	@Override
	public KJE_AssFileVo retriveAssFile(String file_no) {
		KJE_AssFileVo assfile = assignmentDao.selectAssFile(file_no);
		return assfile;
	}

}
