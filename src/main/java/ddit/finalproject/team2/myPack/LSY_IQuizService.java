package ddit.finalproject.team2.myPack;


import java.util.List;

import ddit.finalproject.team2.vo.Lsy_EmbraceAnswer;
import ddit.finalproject.team2.vo.Lsy_EmbraceQuizVo;
import ddit.finalproject.team2.vo.Lsy_QuizProblemVo;
import ddit.finalproject.team2.vo.Lsy_QuizQuestionVO;


public interface LSY_IQuizService {
	public int createQuiz(Lsy_EmbraceQuizVo quizChunk);
	public int createStAnswer(Lsy_EmbraceAnswer stQuizChunk);
	
	public List<Lsy_QuizQuestionVO> retreiveQuiz(Lsy_QuizQuestionVO quizList);
	public Lsy_QuizQuestionVO retrieveOneQuiz(Lsy_QuizQuestionVO oneQuiz);
	
	public List<Lsy_QuizQuestionVO> markingTest(Lsy_EmbraceAnswer stQuizChunk);
	
	public int updateQuiz(Lsy_QuizQuestionVO quizVo);
	public int updateProblems(Lsy_QuizProblemVo problemVo);
	
	public List<String> stAnswerNextVal(int quizSize);
	public List<String> keyNextVal(int quizSize);
}
