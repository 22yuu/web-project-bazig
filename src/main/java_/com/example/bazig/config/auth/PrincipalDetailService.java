package com.bazig.test.config.auth;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import com.bazig.test.model.User;
import com.bazig.test.repository.UserRepository;

@Service // Bean 등록
public class PrincipalDetailService implements UserDetailsService{

	@Autowired
	private UserRepository userRepository;
	
	// 스프링이 로그인 요청을 가로챌 때, username, password 변수 2개를 가로채는데
	// password 부분 처리는 알아서 함.
	// username이 DB에 있는지만 확인해서 return 해주면 됨.
	@Override
	public UserDetails loadUserByUsername(String memberId) throws UsernameNotFoundException {
		User principal = userRepository.findByMemberId(memberId)
				.orElseThrow(()->{
					return new UsernameNotFoundException("해당 사용자를 찾을 수 없습니다.:"+memberId);
				});
		return new PrincipalDetail(principal);
	}
}
