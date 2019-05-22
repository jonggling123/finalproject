package ddit.finalproject.team2.vo;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

import org.apache.commons.lang3.StringUtils;
import org.springframework.web.multipart.MultipartFile;

import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.NoArgsConstructor;
import lombok.ToString;

@NoArgsConstructor
@Data
@EqualsAndHashCode(of="board_no")
@ToString(exclude={
	"board_content", "replyList", "deleteAttachmentNos"
	, "attachmentList", "savedAttachmentList", "bo_files"
})
public class Ljs_BoardSubjectVo implements Serializable{
	private String board_no;
	private String board_type;
	private String board_attachmentcount;
	private String board_date;
	private String board_title;
	private String board_content;
	private String board_hit;
	private String attend_no;
	private String lecture_code;
	
	private UserVo user;
	private String user_name;
	
	private List<Ljs_ReplyVo> replyList;
	private int replycount;
	
	private Integer startAttachmentNo;
	private int[] deleteAttachmentNos;
	private List<AttachmentVo> attachmentList;
	private List<AttachmentVo> savedAttachmentList;
	private MultipartFile[] bo_files;
	
	public void setBoard_title(String board_title, String board_no){
		this.board_title = "<a href='"+board_no+"'>"+board_title+"</a>";
	}
	
	public void setBo_files(MultipartFile[] bo_files) {
		if(bo_files==null) return;
		this.bo_files = bo_files;
		this.board_attachmentcount = bo_files.length+"";
		this.attachmentList = new ArrayList<>();
		for(MultipartFile file : bo_files){
			if(StringUtils.isBlank(file.getOriginalFilename())) continue;
			attachmentList.add(new AttachmentVo(file));
		}
	}
	
	public void setUserVo(String user_id){
		user = new UserVo(user_id);
	}
}
