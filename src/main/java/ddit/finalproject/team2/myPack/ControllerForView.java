package ddit.finalproject.team2.myPack;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import ddit.finalproject.team2.vo.Lsy_EmbraceQuizVo;
import ddit.finalproject.team2.vo.Lsy_QuizQuestionVO;


@Controller
public class ControllerForView {
	@Inject
	LSY_IQuizService service;
	
		@GetMapping("/student")
		public String chooseMain() throws IOException{
//			return "professor/window";
			return "new/gradeRank";
		}
		
		@GetMapping("/professor/register")
		public ModelAndView dadsdad(ModelAndView mav, @Validated @ModelAttribute Lsy_QuizQuestionVO quizVo) {
			mav.setViewName("professor/registerLecture");
			System.out.println(quizVo.getClass_identifying_code());
			System.out.println(quizVo.getLecture_code());
			System.out.println(quizVo.getQuestion_answer());
			System.out.println(quizVo.getQuestion_content());
			System.out.println(quizVo.getQuestion_no());
			return mav;
		}
		
		@GetMapping("/professor/quiz")
		public ModelAndView sda(ModelAndView mav){
			mav.addObject("identifier", "quiz");
			mav.setViewName("professor/quizz");
			return mav;
		}
		
		@PostMapping("/professor/addQuiz")
		public String addQuiz(@Validated @ModelAttribute("allQuestion") Lsy_EmbraceQuizVo allQuestion, BindingResult error){
			if(error.hasErrors()) {
				System.out.println(error);
			}
			System.out.println(allQuestion);
			service.insertQuiz(allQuestion);
			return "professor/quizz";
		}
		
		@GetMapping("/professor/showQuiz")
		public ModelAndView showQuiz(@Validated @ModelAttribute Lsy_QuizQuestionVO quizVo, ModelAndView mav) {
//			EmbraceQuizVo thisQuiz = service.retreiveQuiz(quizVo.getClass_identifying_code());
			mav.addObject("btnType", "quiz");
			List<Lsy_QuizQuestionVO> thisQuiz = service.retreiveQuiz("11");
			mav.addObject("oneQuiz", thisQuiz);
			mav.setViewName("professor/showQuiz");
			return mav;
		}
		
		@GetMapping("/professor/quizPage")
		public String dsada() {
			return "professor/shoQuizz";
		}
		
		@PostMapping(value="/professor/showQuizz", produces="application/json;charset=utf-8")
		@ResponseBody
		public List<Lsy_QuizQuestionVO> showQuizz(ModelAndView mav, @Validated @RequestBody Lsy_QuizQuestionVO quizVo) {
			System.out.println("클래스코드 : "+quizVo.getClass_identifying_code());
			System.out.println("강좌코드 : " +quizVo.getLecture_code());
			System.out.println("문제답안 : " +quizVo.getQuestion_answer());
			System.out.println("문제 내용 : "+quizVo.getQuestion_content());
			System.out.println("문제 번호 : "+quizVo.getQuestion_no());
			for (int i = 0; i < quizVo.getProblemList().size(); i++) {
				System.out.println("선택지의 문제번호 :"+quizVo.getProblemList().get(i).getQuestion_no());
				System.out.println("선택지의 문제내용 :"+quizVo.getProblemList().get(i).getQuizProblem_content());
				System.out.println("선택지의 번호 :"+quizVo.getProblemList().get(i).getQuizProblem_no());
			}
//			int result = service.updateQuiz(quizVo);
//			List<Lsy_QuizQuestionVO> thisQuiz = new ArrayList<Lsy_QuizQuestionVO>();
//			if(result > 0) {
//				thisQuiz = service.retreiveQuiz("11");
//			}
			return null;
		}
		
		@GetMapping("/professor/gradeRank")
		public String wqeq() {
			return "professor/gradeRank";
		}
		
		@GetMapping("/professor/myInfo")
		public String dsda() {
			return "professor/myInfo";
		}
		
		@GetMapping("/main/cert	ificate")
		public String sdaqwe() {
			return "professor/certificate";
		}
		
		@GetMapping("/professor/quizz")
		public String quz(){
			return "professor/quizzBackup";
		}
		
		@GetMapping("/professor/searchGrade")
		public String sda2(){
			return "new/gradeRank";
		}
		@GetMapping("/professor/schedule")
		public String sda3(){
			return "professor/testSchedule";
		}
		
		@GetMapping("/professor/modal")
		public String login(){
			return "new/modalResult";
		}
		
		@GetMapping("/student/searchGrade")
		public String dsadsa(){
			return "common/login";
		}
		
		@GetMapping(value="/professor/selectType/{btnType}", produces="application/json;charset=UTF-8")
		@ResponseBody
		public Map<String, List<String>> asdsa(@PathVariable String btnType){
			Map<String, List<String>> resultMap = new HashMap<String, List<String>>();
			if(btnType.equals("survey")) {
			List<String> surveyProblemList = new ArrayList<String>(); 
			List<String> surveySelectSacri = new ArrayList<String>();
			List<String> surveySelectDiffi = new ArrayList<String>();
			
			surveyProblemList.add("문항선택");
			surveyProblemList.add("만족도");
			surveyProblemList.add("난이도");
			
			surveySelectSacri.add("매우만족");
			surveySelectSacri.add("만족");
			surveySelectSacri.add("보통");
			surveySelectSacri.add("불만족");
			surveySelectSacri.add("매우불만족");
			
			surveySelectDiffi.add("매우어려움");
			surveySelectDiffi.add("어려움");
			surveySelectDiffi.add("보통");
			surveySelectDiffi.add("쉬움");
			surveySelectDiffi.add("매우쉬움");
			
			
			resultMap.put("surveyList", surveyProblemList);
			resultMap.put("surveySC", surveySelectSacri);
			resultMap.put("surveySD", surveySelectDiffi);
			return resultMap;
			}
				else if(btnType.equals("quiz")) {
				List<String> classList = new ArrayList<String>();
				classList.add("차시선택");
				classList.add("1교시");
				classList.add("2교시");
				classList.add("3교시");
				resultMap.put("classList", classList);
				return resultMap;
				}
					else if(btnType.equals("test")) {
					List<String> examList = new ArrayList<String>();
					examList.add("시험선택");
					examList.add("중간고사");
					examList.add("기말고사");
					resultMap.put("examList", examList);
					return resultMap;
					}
						else {
							return null;
						}
			
		}
		
		
		
		
}
