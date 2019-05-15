package ddit.finalproject.team2.vo;

import java.io.Serializable;
import java.util.Date;

import javax.validation.constraints.NotNull;

import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.NoArgsConstructor;
import lombok.ToString;

@NoArgsConstructor
@Data
@EqualsAndHashCode(of="ring_code")
@ToString
public class RingVo implements Serializable{
	@NotNull private String ring_code;
	@NotNull private String ring_response_id;
	@NotNull private String ring_request_id;
	@NotNull private String ring_type;
	@NotNull private String ring_no;
	@NotNull private String ring_move_address;
	@NotNull private Date ring_occur_date;
	@NotNull private Date ring_confirm_date;
	@NotNull private String ring_confirm_yn;
}
