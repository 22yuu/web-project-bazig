package com.bazig.test.controller.api;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.bazig.test.dto.ResponseDto;
import com.bazig.test.model.User;
import com.bazig.test.service.UserService;

@RestController
public class UserApiController {
	
	@Autowired
	private UserService userService;
	
	
	@PostMapping("/api/user")
	public ResponseDto<Integer> save(@RequestBody User user) {
		System.out.println("UserApiController: save 호출됨");
		userService.회원가입(user);
		System.out.println(user);
		return new ResponseDto<Integer>(HttpStatus.OK.value(), 1);
	}
	
	@PostMapping("/api/user/login")
	public ResponseDto<Integer> login(@RequestBody User user, HttpSession session) {
		System.out.println("UserApiController:login호출됨");
		User principal = userService.로그인(user);
		System.out.println("principal:" + principal);
		if(principal != null) {
			session.setAttribute("principal", principal);
		}
		System.out.println("세션 정보:" + session.getAttribute("principal"));
		return new ResponseDto<Integer>(HttpStatus.OK.value(), 1);
	}
}
