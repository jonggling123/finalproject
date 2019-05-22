package ddit.finalproject.team2.myPack;


import java.util.ArrayList;
import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import ddit.finalproject.team2.myPack.dao.LSY_QuizDAO;
import ddit.finalproject.team2.vo.Lsy_EmbraceQuizVo;
import ddit.finalproject.team2.vo.Lsy_QuizQuestionVO;


@Service
public class LSY_QuizServiceImpl implements LSY_IQuizService{
	@Inject
	LSY_QuizDAO quizDao;
	
	@Override
	@Transactional
	public int insertQuiz(Lsy_EmbraceQuizVo quizChunk) {
		int result = quizDao.insertQuiz(quizChunk);
//		if(result > 0) {
//			EmbraceProblemListVo emProblemList = new EmbraceProblemListVo();
//			emProblemList.setProblemList(new ArrayList<QuizProblemVo>());
//			for (int i = 0; i < quizChunk.getQuizList().size(); i++) {
//				for (int j = 0; j < quizChunk.getQuizList().get(i).getProblemList().size(); j++) {
//				emProblemList.getProblemList().add(quizChunk.getQuizList().get(i).getProblemList().get(j));
//				System.out.println(quizChunk.getQuizList().get(i).getProblemList().get(j).getQuestion_no());
//				System.out.println(quizChunk.getQuizList().get(i).getProblemList().get(j).getQuizProblem_content());
//				System.out.println(quizChunk.getQuizList().get(i).getProblemList().get(j).getQuizProblem_no());
//				}
//			}
//			result2 += insertProblem(emProblemList);
//		}
//		if(result2>0) {
//			return result2;
//		}
		if(result>0) {
			return result;
		}
		return 0;
	}
	
	@Override
	public List<Lsy_QuizQuestionVO> retreiveQuiz(String class_identifying_code) {
		List<Lsy_QuizQuestionVO> thisQuiz = quizDao.selectOneQuiz(class_identifying_code);
		if(thisQuiz!=null) {
			return thisQuiz;
		}
		return null;
	}

	@Override
	@Transactional
	public int updateQuiz(Lsy_QuizQuestionVO quizChunk) {
		int result = quizDao.updateQuiz(quizChunk);
		if(result>0) {
			return result;
		}
		return 0;
	}
}
