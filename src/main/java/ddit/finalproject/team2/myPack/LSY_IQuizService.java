package ddit.finalproject.team2.myPack;


import java.util.List;

import ddit.finalproject.team2.vo.Lsy_EmbraceQuizVo;
import ddit.finalproject.team2.vo.Lsy_QuizQuestionVO;


public interface LSY_IQuizService {
	public int insertQuiz(Lsy_EmbraceQuizVo quizChunk);
	public List<Lsy_QuizQuestionVO> retreiveQuiz(String oneQuiz);
	public int updateQuiz(Lsy_QuizQuestionVO quizChunk);
}
