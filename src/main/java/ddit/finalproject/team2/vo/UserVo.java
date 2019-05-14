package ddit.finalproject.team2.vo;

import java.io.Serializable;
import java.util.Collection;
import java.util.List;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.NoArgsConstructor;
import lombok.ToString;

@NoArgsConstructor
@Data
@EqualsAndHashCode
@ToString
public class UserVo implements Serializable, UserDetails{
	
	private String user_pass;
	private String user_name;
	private String user_regno;
	private String user_hp;
	private String user_mail;
	private String user_add1;
	private String user_add2;
	private String user_id;
	private String user_profile_path;
	private String user_authority;
	
	//dataTable에 동적으로 삽입될 태그
	private String checkbox = "<input type='checkbox' class='checkbox' />";
	private String button = "<button type='button' class='btn'>버튼</button>";
	
	private List<GrantedAuthority> authorities;
	
	@Override
	public Collection<? extends GrantedAuthority> getAuthorities() {
		return authorities;
	}

	@Override
	public String getPassword() {
		return user_pass;
	}

	@Override
	public String getUsername() {
		return user_id;
	}

	@Override
	public boolean isAccountNonExpired() {
		return true;
	}

	@Override
	public boolean isAccountNonLocked() {
		return true;
	}

	@Override
	public boolean isCredentialsNonExpired() {
		return true;
	}

	@Override
	public boolean isEnabled() {
		return true;
	}

}
