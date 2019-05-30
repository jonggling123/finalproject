package ddit.finalproject.team2.professor.service;

import java.util.List;

import ddit.finalproject.team2.util.enumpack.ServiceResult;
import ddit.finalproject.team2.vo.KJE_AssFileVo;
import ddit.finalproject.team2.vo.KJE_AssignmentnFileVo;
import ddit.finalproject.team2.vo.KJE_LWeekAssignmentProVo;

public interface KJE_IAssignmentService {

	/**
	 * 파라미터로 전달되는 과목에 대한 수업 주차 정보와 과제물 정보가 담긴 리스트를 반환하는 메서드
	 * @return 수업 주차 정보와 과제물 정보가 담긴 리스트
	 */
	public List<KJE_LWeekAssignmentProVo> retrieveLWeekAssignmentProList(String lecture_code);
	
	/**
	 * 파라미터로 과제번호를 전달받아 과제 내용을 반환하는 메서드
	 * @param assignment_no 과제번호
	 * @return 과제 내용이 담긴 Vo
	 */
	public KJE_AssignmentnFileVo retriveAssignment(String assignment_no);
	
	
	/**
	 * 파라미터로 과제에 대한 내용을 전달받아 DB 에 저장하는 메서드
	 * @return insert 성공 여부
	 */
	public ServiceResult createAssignment(KJE_AssignmentnFileVo assignmentnFileVo);
		
	
	/**
	 * 과제 첨부파일 중 하나에 해당하는 정보를 반환하는 메서드
	 * @param file_no
	 * @return
	 */
	public KJE_AssFileVo retriveAssFile(String file_no);
	
}
