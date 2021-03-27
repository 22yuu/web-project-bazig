package com.bazig.test.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.bazig.test.model.User;
import com.bazig.test.repository.UserRepository;

// 스프링이 컴포넌트 스캔을 통해서 Bean에 등록을 해줌. IoC를 해준다.
@Service
public class UserService {

	@Autowired
	private UserRepository userRepository;
	
	@Autowired //DI
	private BCryptPasswordEncoder encoder;
	
	@Transactional(readOnly=true)
	public User 회원찾기(String username) {
		System.out.println("회원찾기");
		User user = userRepository.findByMemberId(username).orElseGet(()->{
			return new User();
		});
		return user;
	}
	
	@Transactional
	public void 회원가입(User user) {
		try {
			String rawPassword = user.getPassword();
			String encPassword = encoder.encode(rawPassword);
			user.setPassword(encPassword);
			user.setConfirm_password(encPassword);
			if(user.getOauth() == null || user.getOauth() == "") {
				user.setRegisted(1);
			}
			userRepository.save(user);
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			System.out.println("UserService:회원가입():"+ e.getMessage());
		}
	}
	
	@Transactional
	public void 회원수정(User user) {
		// 수정시에는 영속성 컨텍스트 User 오브젝트를 영속화시키고, 영속화된 User 오브젝트를 수정
		// select를 해서 User 오브젝트를 DB로 부터 가져오는 이유는 영속화를 하기 위해서!!
		// 영속화된 오브젝트를 변경하면 자동으로 DB에 update문을 날려주거든요.
		System.out.println("회원수정 : "+ user.getId());
		User persistance = userRepository.findById(user.getId()).orElseThrow(()->{
			System.out.println(user.getId());
			return new IllegalArgumentException("회원찾기 실패");
		});
		System.out.println("회원수정(): user mobile :  " + user.getMobile());
		System.out.println("회원수정(): user gender :  " + user.getGender());
		String rawPassword = user.getPassword();
		String encPassword = encoder.encode(rawPassword);
		persistance.setPassword(encPassword);
		persistance.setEmail(user.getEmail());
		persistance.setAddress(user.getAddress());
		persistance.setMobile(user.getMobile());
		persistance.setGender(user.getGender());
		persistance.setBorn_yyyy(user.getBorn_yyyy());
		persistance.setBorn_mm(user.getBorn_dd());
		persistance.setBorn_dd(user.getBorn_dd());
		persistance.setBorn_date(user.getBorn_date());
		persistance.setRegisted(1);
		userRepository.save(persistance);
		// Validate 체크 -> post 공격 때문에 서버단에서 수정 못하게 막음 
//		if(persistance.getOauth()==null || persistance.getOauth().equals("")) {
//			// oauth값이 없으면 수정 가능
//			String rawPassword = user.getPassword();
//			String encPassword = encoder.encode(rawPassword);
//			persistance.setPassword(encPassword);
//			persistance.setEmail(user.getEmail());
//			persistance.setAddress(user.getAddress());
//			persistance.setMobile(user.getMobile());
//			persistance.setGender(user.getGender());
//		} else {
//
//		}
		//회원수정 함수 종료시 = 서비스 종료 = 트랜잭션 종료 = commit이 자동으로 됨.
		//영속화된 persistance 객체의 변화가 감지되면 더티체킹이 되어 update문을 날려줌.
	}
	
//	 @Transactional(readOnly = true) //readOnly = true : select할 때 트랜잭션 시작, 서비스 종료시에 트랜잭션 종료(정합성) 
//	 public User 로그인(User user) { 
//		 return userRepository.findByMemberIdAndPassword(user.getMemberId(), user.getPassword()); 
//	 }
	 
}
