package ddit.finalproject.team2.vo;

import java.io.Serializable;
import java.util.List;

import org.springframework.security.core.GrantedAuthority;

import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.NoArgsConstructor;
import lombok.ToString;

@NoArgsConstructor
@Data
@EqualsAndHashCode
@ToString
public class StudentVo implements Serializable {

	public String user_id;
	public String lower_organization;
	public String current_year;
	public String enrollment;
	public String stud_degree;
	public String face_id;
	
}
