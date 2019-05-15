package ddit.finalproject.team2.common.service;

import javax.inject.Inject;

import org.apache.commons.lang3.StringUtils;
import org.springframework.stereotype.Service;

import ddit.finalproject.team2.common.dao.IUserDao;
import ddit.finalproject.team2.vo.UserVo;

@Service
public class UserFindServiceImpl implements IUserFindService {

	@Inject
	IUserDao userDao;
	
	@Override
	public String findId(UserVo user) {
		String user_id = userDao.findId(user);
		if(StringUtils.isBlank(user_id)) {
			user_id="no";
		}
		return user_id;
	}

	@Override
	public String findPass(UserVo user) {
		return null;
	}

}
