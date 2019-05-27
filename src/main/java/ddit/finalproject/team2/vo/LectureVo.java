package ddit.finalproject.team2.vo;

import java.io.Serializable;

import javax.validation.constraints.NotNull;

import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.NoArgsConstructor;
import lombok.ToString;

@NoArgsConstructor
@Data
@EqualsAndHashCode(of="lecture_code")
@ToString
public class LectureVo implements Serializable{
	@NotNull private String lecture_code;
	@NotNull private String user_id;
	@NotNull private String user_name;
	@NotNull private String lecture_name;
	
	public LectureVo(String lecture_code){
		this.lecture_code = lecture_code;
	}
	
}
