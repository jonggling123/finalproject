package ddit.finalproject.team2.myPack.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import ddit.finalproject.team2.vo.Lsy_EmbraceAnswer;
import ddit.finalproject.team2.vo.Lsy_EmbraceQuizVo;
import ddit.finalproject.team2.vo.Lsy_QuizAnswerVo;
import ddit.finalproject.team2.vo.Lsy_QuizProblemVo;
import ddit.finalproject.team2.vo.Lsy_QuizQuestionVO;

@Repository
public interface LSY_QuizDAO {
	public List<Lsy_QuizQuestionVO> selectQuizList(Lsy_QuizQuestionVO quizList);
	public Lsy_QuizQuestionVO selectOneQuiz(Lsy_QuizQuestionVO oneQuiz);
	
	public int insertQuiz(Lsy_EmbraceQuizVo quizChunk);
	public int insertStAnswer(Lsy_EmbraceAnswer stQuizChunk);
	
	public List<Lsy_QuizQuestionVO> markingTest(Lsy_EmbraceAnswer stQuizChunk);
	
	public int updateQuiz(Lsy_QuizQuestionVO quizVo);
	public int updateProblems(Lsy_QuizProblemVo problemVo);
	
	public List<String> keyNextVal(int quizSize);
	public List<String> stAnswerNextVal(int quizSize);
} 
