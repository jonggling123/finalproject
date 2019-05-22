package ddit.finalproject.team2.vo;

import java.io.Serializable;
import java.util.Date;

import javax.validation.constraints.NotNull;

import org.springframework.validation.annotation.Validated;

import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.NoArgsConstructor;
import lombok.ToString;

@NoArgsConstructor
@Data
@EqualsAndHashCode(of="reply_no")
@ToString
public class Ljs_ReplyVo implements Serializable{
	@NotNull private String board_no;
	@NotNull private String lecture_code;
	@NotNull private String reply_no;
	@NotNull private String attend_no;
	@NotNull private String reply_content;
	@NotNull private String reply_reg;
	
	private UserVo user;
	private String user_name;
	
	private String remover;
	
}
