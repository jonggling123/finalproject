package ddit.finalproject.team2.myPack;


import java.util.ArrayList;
import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import ddit.finalproject.team2.myPack.dao.LSY_QuizDAO;
import ddit.finalproject.team2.vo.Lsy_EmbraceAnswer;
import ddit.finalproject.team2.vo.Lsy_EmbraceQuizVo;
import ddit.finalproject.team2.vo.Lsy_QuizAnswerVo;
import ddit.finalproject.team2.vo.Lsy_QuizProblemVo;
import ddit.finalproject.team2.vo.Lsy_QuizQuestionVO;


@Service
public class LSY_QuizServiceImpl implements LSY_IQuizService{
	@Inject
	LSY_QuizDAO quizDao;
	
	@Override
	@Transactional
	public int createQuiz(Lsy_EmbraceQuizVo quizChunk) {
		int quizSize = quizChunk.getQuizList().size();
		List<String> keyList = keyNextVal(quizSize);
		
		for (int i = 0; i < quizSize; i++) {
			quizChunk.getQuizList().get(i).setQuestion_no(keyList.get(i));
		}
		
		
		int result = quizDao.insertQuiz(quizChunk);
		if(result>0) {
			return result;
		}
		return 0;
	}
	
	@Override
	@Transactional
	public int createStAnswer(Lsy_EmbraceAnswer stQuizChunk) {
//		int realSize = 0;
//		for(Lsy_QuizAnswerVo vo : stQuizChunk.getAnswerList()) {
//			vo.splitQuizproblem_no();
//			if(vo.getQuizProblem_no_div()!=null) {
//				int lengths = vo.getQuizProblem_no_div().length;
//				realSize += lengths;
//			}
//		}
		
//		List<String> keys = quizDao.stAnswerNextVal(realSize);
		List<String> keys = quizDao.stAnswerNextVal(stQuizChunk.getAnswerList().size());
		for (int i = 0; i < stQuizChunk.getAnswerList().size(); i++) {
			stQuizChunk.getAnswerList().get(i).setQuizAnswer_code(keys.get(i));
		}
//			if(stQuizChunk.getAnswerList().get(i).getQuizProblem_no_div().length>1) {
//				for (int j = 0; j < stQuizChunk.getAnswerList().get(i).getQuizProblem_no_div().length; j++) {
//					stQuizChunk.getAnswerList().get(i).splitQuizAnswer_code(keys.get(i));
//				}
//			} else {
//				stQuizChunk.getAnswerList().get(i).splitQuizAnswer_code(keys.get(i));
//			}
//		}
		
		int result = quizDao.insertStAnswer(stQuizChunk);
		if(result>0) {
			return result;
		}
		return 0;
	}
	
	@Override
	public List<Lsy_QuizQuestionVO> retreiveQuiz(Lsy_QuizQuestionVO quizInfo) {
		List<Lsy_QuizQuestionVO> thisQuiz = quizDao.selectQuizList(quizInfo);
		if(thisQuiz!=null) {
			return thisQuiz;
		}
		return null;
	}

	@Override
	@Transactional
	public int updateQuiz(Lsy_QuizQuestionVO quizChunk) {
		int result = quizDao.updateQuiz(quizChunk);
		int result2 = 0;
		if(result>0) {
			for (int i = 0; i < quizChunk.getProblemList().size(); i++) {
				result2 += updateProblems(quizChunk.getProblemList().get(i));
			}
			if(result2>0) {
				return result2;
			}
		}
		return result2;
	}

	@Override
	@Transactional
	public int updateProblems(Lsy_QuizProblemVo problemVo) {
		int result = 0; 
		result = quizDao.updateProblems(problemVo);
		if(result>0) {
			return result;
		}
		return result;
	}

	@Override
	@Transactional
	public List<String> keyNextVal(int quizSize) {
		List<String> keyVal = quizDao.keyNextVal(quizSize);
		return keyVal;
	}
	
	

	@Override
	public Lsy_QuizQuestionVO retrieveOneQuiz(Lsy_QuizQuestionVO oneQuiz) {
		Lsy_QuizQuestionVO oneQuizz = quizDao.selectOneQuiz(oneQuiz);
		return oneQuizz;
	}

	@Override
	@Transactional
	public List<String> stAnswerNextVal(int quizSize) {
		List<String> keyVal = quizDao.stAnswerNextVal(quizSize);
		return keyVal;
	}
	
	public List<String> markingTest(List<Lsy_QuizQuestionVO> realAnswer, List<Lsy_QuizAnswerVo> stAnswer) {
		List<String> answerFlag = new ArrayList<String>();
		if(realAnswer.size()==stAnswer.size()) {
			for (int idx = 0; idx < realAnswer.size(); idx++) {
				if(realAnswer.get(idx).getQuestion_answer().replace(" ", "").equals(stAnswer.get(idx).getStSelect_no().replace(" ", ""))) {
					answerFlag.add("O");
				} else {
					answerFlag.add("X");
			} 
			}
		}
		return null;
	}

	@Override
	public List<Lsy_QuizQuestionVO> markingTest(Lsy_EmbraceAnswer stQuizChunk) {
		List<Lsy_QuizQuestionVO> result = quizDao.markingTest(stQuizChunk);
		return result;
	}

	
}
