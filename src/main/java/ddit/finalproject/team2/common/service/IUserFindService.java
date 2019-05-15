package ddit.finalproject.team2.common.service;

import ddit.finalproject.team2.vo.UserVo;

public interface IUserFindService {
	
	public String findId(UserVo user);
	public String findPass(UserVo user);
}
