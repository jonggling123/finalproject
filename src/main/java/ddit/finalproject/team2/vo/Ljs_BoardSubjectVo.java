package ddit.finalproject.team2.vo;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

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
	, "attachmentList", "savedAttachmentList", "board_files"
	, "updatableList"
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
	
	private String user_id;
	
	private List<ReplyVo> replyList;
	private int replycount;
	
	private int[] deleteAttachmentNos;
	private List<AttachmentVo> attachmentList;
	private List<AttachmentVo> savedAttachmentList;
	private MultipartFile[] board_files;
	
	private String[] updatableList = new String[]{
		".doc", ".hwp", ".pdf", ".xls", ".xlsx", ".jpg", ".jpeg", ".png", ".gif", ".zip"
	};
	
	public void setBoard_title(String board_title, String board_no){
		this.board_title = "<a href='${pageContext.request.contextPath}/board/"+board_no+"'>"+board_title+"</a>";
	}
	
	public void setBoard_files(MultipartFile[] board_files){
		if(board_files==null) return;
		this.board_files = board_files;
		
		this.attachmentList = new ArrayList<>();
		for(MultipartFile file : board_files){
			String fileName = file.getOriginalFilename();
			if(fileName==null){
				continue;
			}
			
			boolean flag = false;
			for(int i=0; i<updatableList.length; i++){
				if(!fileName.contains(updatableList[i])){
					continue;
				}else{
					flag = true;
					break;
				}
			}
			
			if(!flag){
				throw new RuntimeException(fileName.split(".")[1]+"은(는) 지원하지 않는 확장자 입니다.");
			}
			
			attachmentList.add(new AttachmentVo(file));
		}
	}
}
