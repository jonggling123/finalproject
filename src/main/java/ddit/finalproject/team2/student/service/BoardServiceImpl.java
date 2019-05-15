package ddit.finalproject.team2.student.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import ddit.finalproject.team2.common.dao.IBoardDao;
import ddit.finalproject.team2.vo.BoardSubjectVo;

@Service
public class BoardServiceImpl implements IBoardService{
	@Inject
	IBoardDao boardDao;

	@Override
	public List<BoardSubjectVo> retrieveBoardList() {
		return boardDao.selectBoardList();
	}
	
}
