package com.bazig.test.controller.api;


import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.bazig.test.config.auth.PrincipalDetails;
import com.bazig.test.dto.ResponseDto;
import com.bazig.test.model.User;
import com.bazig.test.service.UserService;

@RestController
public class UserApiController {
	
	@Autowired
	private UserService userService;
	
	@Autowired
	private AuthenticationManager authenticationManager;
	
	@Value("${OAuth2.key}")
	private String OAuth2Key; // 절대 노출되면 안됨!!!!!!!!!!!!
	
	@PostMapping("/auth/joinProc")
	public ResponseDto<Integer> save(@RequestBody User user) {
		System.out.println("UserApiController: save 호출됨");
		userService.회원가입(user);
		System.out.println("회원가입 getPassword: " + user.getPassword());
		
		
//		Authentication authentication = authenticationManager.authenticate(new UsernamePasswordAuthenticationToken(user.getMemberId(), OAuth2Key)); 
//		SecurityContextHolder.getContext().setAuthentication(authentication); // bad credential error
//		System.out.println(user);
		return new ResponseDto<Integer>(HttpStatus.OK.value(), 1);
	}
	
	@PostMapping("/auth/idCheck")
	public boolean idoverlap(@RequestBody User user) { // id 중복 체크 함수
		System.out.println("UserApiController: idoverlap 호출됨 memberId : " + user.getMemberId());
		System.out.println("중복체크 : " + userService.중복체크(user.getMemberId()));
		return userService.중복체크(user.getMemberId());
	}
	
	@PutMapping("/user")
	public ResponseDto<Integer> update(@RequestBody User user, Authentication oAuthentication) { //key=value, x-www-form-urlencoded
		System.out.println("user.getId() : " + user.getId());
		
		//여기서는 트랜잭션이 종료되기 때문에 DB에 값은 변경이 됐음.
		// 하지만 세션값은 변경되지 않은 상태이기 때문에 직접 세션값을 변경해줘야 한다.
		//세션 등록
		// Authentication 객체가 만들어지면서 세션에 등록되어짐
		
		System.out.println("User body : "+user);
		System.out.println("user.getPassword() : " + user.getPassword());
		System.out.println("user.getMemberId() : " + user.getMemberId());
		
		System.out.println("****Put Mapping /user*****");
		System.out.println("oauth principal : " + oAuthentication.getPrincipal());
		
		
		// 일반 로그인 사용자
		userService.회원수정(user);
		Authentication authentication = authenticationManager.authenticate(new UsernamePasswordAuthenticationToken(user.getMemberId(), user.getPassword())); 
		SecurityContextHolder.getContext().setAuthentication(authentication);
		// 세션에 접근할 필요가 없음
		
		return new ResponseDto<Integer>(HttpStatus.OK.value(),1);
	}
	
//	@PostMapping("/api/user/login")
//	public ResponseDto<Integer> login(@RequestBody User user, HttpSession session){
//		System.out.println("UserApiController:login 호출됨.");
//		User principal = userService.로그인(user); // principal (접근주체)
//		
//		if(principal != null) {
//			session.setAttribute("principal", principal);
//		}
//		return new ResponseDto<Integer>(HttpStatus.OK.value(), 1);
//	}
}
