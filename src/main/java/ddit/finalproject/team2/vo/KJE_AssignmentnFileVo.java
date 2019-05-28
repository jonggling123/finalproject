package ddit.finalproject.team2.vo;

import java.util.Date;
import java.util.List;

import javax.validation.constraints.NotNull;

import org.springframework.web.multipart.MultipartFile;

import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.NoArgsConstructor;
import lombok.ToString;

@NoArgsConstructor
@Data
@EqualsAndHashCode(of="assignment_no")
@ToString
public class KJE_AssignmentnFileVo {
	@NotNull
	private String assignment_no;
	@NotNull
	private String assignment_title;
	@NotNull
	private String assignment_date;
	@NotNull
	private String submit_period1;
	@NotNull
	private String class_identifying_code;
	@NotNull
	private String submit_period2;
	@NotNull
	private String lecture_code;
	
	private String assignment_content;
	
	MultipartFile[] ass_files;
	
	private List<KJE_AssignmentFileVo> assignmentFileList;
	private List<KJE_AssignmentFileVo> saveAssFileList;
	
	private String[] aFileList;
	
}


