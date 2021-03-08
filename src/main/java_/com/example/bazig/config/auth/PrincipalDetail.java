package com.bazig.test.config.auth;

import java.util.ArrayList;
import java.util.Collection;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

import com.bazig.test.model.User;

// 스프링 시큐리티가 로그인 요청을 가로채서 로그인을 진행하고 완료가 되면 UserDetails 타입의 오브젝트를
// 스프링 시큐리티의 고유한 세션저장소에 저장을 해준다.
public class PrincipalDetail implements UserDetails{
	private User user; // 콤포지션 (객체를 품고 있는 것)

	public PrincipalDetail(User user) {
		this.user = user;
	}

	@Override
	public String getPassword() {
		return user.getPassword();
	}

	@Override
	public String getUsername() {
		return user.getMemberId();
	}

	@Override
	public boolean isAccountNonExpired() { //계정이 만료되지 않았는지 리턴한다. (true:만료안됨)
		return true;
	}

	@Override
	public boolean isAccountNonLocked() { // 계정이 잠겨있지 않았는지 리턴한다. (true:잠기지 않음)
		return true;
	}

	@Override
	public boolean isCredentialsNonExpired() { // 비밀번호가 만료되지 않았는지 리턴한다.(true:만료안됨)
		return true;
	}

	@Override
	public boolean isEnabled() { // 계정이 활성화(사용가능)인지 리턴한다. (true:활성화)
		return true;
	}
	
	@Override
	public Collection<? extends GrantedAuthority> getAuthorities() { // 계정의 권한을 리턴한다
		Collection<GrantedAuthority> collectors = new ArrayList<>();
		
//		collectors.add(new GrantedAuthority() {
//			
//			@Override
//			public String getAuthority() {
//				return "ROLE_"+user.getRole(); //스프링에서 ROLE을 받을 때, ROLE_를 꼭 붙여야한다. -> ex) ROLE_USER
//			}
//		}); 
		
		// 위의 주석처리된 부분을 다음과 같이 람다식으로 표현가능
		collectors.add(()->{return "ROLE_"+user.getRole();}); 
		return collectors;
	}
}
