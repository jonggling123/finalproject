package ddit.finalproject.team2.professor.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import ddit.finalproject.team2.vo.AssignmentVo;
import ddit.finalproject.team2.vo.KJE_AssignmentnFileVo;
import ddit.finalproject.team2.vo.KJE_LWeekAssignmentProVo;

@Repository
public interface KJE_IAssignmentDao {

	/**
	 * 파라미터로 전달되는 과목에 대한 수업 주차 정보와 과제물 정보가 담긴 리스트를 반환하는 메서드
	 * @return 수업 주차 정보와 과제물 정보가 담긴 리스트
	 */
	public List<KJE_LWeekAssignmentProVo> selectLWeekAssignmentProList(String lecture_code);
	
	/**
	 * 파라미터로 과제번호를 전달받아 과제 내용을 반환하는 메서드
	 * @param assignment_no 과제번호
	 * @return 과제 내용이 담긴 Vo
	 */
	public KJE_AssignmentnFileVo selectAssignment(String assignment_no);
	
	/**
	 * 과제 에 대한 정보를 전달받아 내용을 저장하는 메서드 
	 * @param assignment 과제에 대한 내용
	 * @return insert 성공여부
	 */
	public int insertAssignment(KJE_AssignmentnFileVo assignment);
	
	
	/** 과제의 첨부파일에 대한 내용을 전달받아 저장하는 메서드 
	 * 
	 * @param assignment 과제에 대한 내용
	 * @return insert 성공여부
	 */
	public int insertAllAssFile(KJE_AssignmentnFileVo assignmentnFileVo);
	
	
	
}
