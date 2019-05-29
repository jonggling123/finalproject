package ddit.finalproject.team2.vo;

import java.io.File;
import java.sql.Date;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

import javax.validation.constraints.NotNull;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.web.multipart.MultipartFile;

import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.NoArgsConstructor;
import lombok.ToString;

@NoArgsConstructor
@Data
@EqualsAndHashCode(of = "assignment_no")
@ToString
public class KJE_AssignmentnFileVo {
	private Integer startAssFileNo;

	@NotNull
	private String assignment_no;
	@NotNull
	private String assignment_title;
	@NotNull
	private String assignment_date;
	@NotNull
	private String submit_period1;
	@NotNull
	private String submit_period2;
	
	private String insert_period1;
	
	private String insert_period2;
	
	@NotNull
	private String class_identifying_code;
	
	@NotNull
	private String lecture_code;

	private String assignment_content;

	MultipartFile[] ass_files;

	private List<KJE_AssFileVo> assignmentFileList;
	private List<KJE_AssFileVo> savedAssFileList;

	private String[] assDelFileList;

	@Value("#{appInfo['assignmentPath']}") // spEL사용
	String assignmentPath;

	public void setAss_files(MultipartFile[] ass_files) {
		this.ass_files = ass_files;
		assignmentFileList = new ArrayList<KJE_AssFileVo>(ass_files.length);
			for(MultipartFile multi: ass_files){
				if(ass_files!=null &&StringUtils.isNotBlank(multi.getOriginalFilename())){
					String saveName=UUID.randomUUID().toString();
					File saveFile = new File(assignmentPath, saveName);
					
					KJE_AssFileVo assFileVo= new KJE_AssFileVo(multi);
					assFileVo.setFile_path(saveFile.getAbsolutePath());
					assignmentFileList.add(assFileVo);
			}
		}
	}
	
}
