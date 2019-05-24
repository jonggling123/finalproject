package ddit.finalproject.team2.myPack.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import ddit.finalproject.team2.vo.Lsy_EmbraceQuizVo;
import ddit.finalproject.team2.vo.Lsy_QuizQuestionVO;

@Repository
public interface LSY_QuizDAO {
	public int insertQuiz(Lsy_EmbraceQuizVo quizChunk);
	public List<Lsy_QuizQuestionVO> selectOneQuiz(String class_identifying_code);
	public int updateQuiz(Lsy_QuizQuestionVO quizChunk);
}
