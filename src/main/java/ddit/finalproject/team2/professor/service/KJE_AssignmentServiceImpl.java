package ddit.finalproject.team2.professor.service;

import java.util.List;

import javax.inject.Inject;

import org.apache.commons.lang3.StringUtils;
import org.springframework.stereotype.Service;

import ddit.finalproject.team2.professor.dao.KJE_IAssignmentDao;
import ddit.finalproject.team2.vo.KJE_AssignmentnFileVo;
import ddit.finalproject.team2.vo.KJE_LWeekAssignmentProVo;

@Service
public class KJE_AssignmentServiceImpl implements KJE_IAssignmentService {
	
	@Inject
	KJE_IAssignmentDao AssignmentDao; 
	
	@Override
	public List<KJE_LWeekAssignmentProVo> retrieveLWeekAssignmentProList(String lecture_code){
		List<KJE_LWeekAssignmentProVo> lWeekAssignmentProList = AssignmentDao.selectLWeekAssignmentProList(lecture_code);
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
		KJE_AssignmentnFileVo assignmentnFile = AssignmentDao.selectAssignment(assignment_no);
		return assignmentnFile;
	}

}
