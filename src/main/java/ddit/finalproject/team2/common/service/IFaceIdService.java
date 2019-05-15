package ddit.finalproject.team2.common.service;

import ddit.finalproject.team2.vo.StudentVo;

public interface IFaceIdService {
	public int modifyFaceId(StudentVo student);
	public boolean getFaceId(String userId);
	
}
