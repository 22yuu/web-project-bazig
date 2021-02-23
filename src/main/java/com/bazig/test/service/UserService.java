package com.bazig.test.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.bazig.test.model.User;
import com.bazig.test.repository.UserRepository;

// 스프링이 컴포넌트 스캔을 통해서 Bean에 등록을 해줌. IoC를 해준다.
@Service
public class UserService {

	@Autowired
	private UserRepository userRepository;
	
	@Transactional
	public void 회원가입(User user) {
		try {
			userRepository.save(user);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			System.out.println("UserService:회원가입():"+ e.getMessage());
		}
	}
	
	@Transactional(readOnly = true) //readOnly = true : select할 때 트랜잭션 시작, 서비스 종료시에 트랜잭션 종료(정합성)
	public User 로그인(User user) {
		return userRepository.findByMemberIdAndPwd(user.getMemberId(), user.getPwd());
	}
}