package ddit.finalproject.team2.vo;

import java.util.List;

import lombok.Data;
import lombok.Getter;

@Data
public class Lsy_QuizQuestionVO {
	private String question_no;
	private String question_content;
	private String question_answer;
	private String class_identifying_code;
	private String lecture_code;
	private List<Lsy_QuizProblemVo> problemList;
}
