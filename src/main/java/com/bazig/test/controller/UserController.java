package com.bazig.test.controller;


import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpMethod;
import org.springframework.http.ResponseEntity;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.util.LinkedMultiValueMap;
import org.springframework.util.MultiValueMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.client.RestTemplate;

import com.bazig.test.model.KakaoProfile;
import com.bazig.test.model.OAuthToken;
import com.bazig.test.model.User;
import com.bazig.test.service.UserService;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.ObjectMapper;

@Controller
public class UserController {
	
	@Value("${OAuth2.key}")
	private String OAuth2Key; // 절대 노출되면 안됨!!!!!!!!!!!!
	
	@Autowired
	private UserService userService;
	
	@Autowired
	private AuthenticationManager authenticationManager;
	
//	@GetMapping("/")
//	public String login() {
//		System.out.println("******************logging************************");
//		return "login";
//	}
		
	@GetMapping("/auth/joinForm")
	public String joinForm() {
		return "user/joinForm";
	}
	@GetMapping("/auth/loginForm")
	public String loginForm() {
		return "user/loginForm";
	}
	@GetMapping("/mypage")
	public String memberInfo() {
		return "user/memberInfo";
	}
	@GetMapping("/auth/modal_loginForm")
	public String modal_loginForm() {
		return "user/modal_loginForm";
	}
	
	// 카카오 로그인 OAuth2 사용하지 않고 
//	@GetMapping("/auth/kakao/callback")
//	public String kakaoCallback(String code) { //@ResponseBody Data를 리턴해주는 컨트롤러 함수
//		
//		// POST 방식으로 key=value 데이터를 요청 (카카오쪽으로)
//		// Retrofit2 안드로이드에서 많이 쓰임
//		// OkHttp
//		// RestTemplate
//		
//		RestTemplate rt = new RestTemplate();
//		
//		//HttpHeader 오브젝트 생성
//		HttpHeaders headers = new HttpHeaders();
//		headers.add("Content-type", "application/x-www-form-urlencoded;charset=utf-8");
//		
//		//HttpBody 오브젝트 생성
//		MultiValueMap<String, String> params = new LinkedMultiValueMap<>();
//		params.add("grant_type", "authorization_code");
//		params.add("client_id", "34c4dd1b843bc1b79acfc1b6c119f767");
//		params.add("redirect_uri", "http://localhost:8080/auth/kakao/callback");
//		//params.add("redirect_uri", "http://13.209.41.213:8080/auth/kakao/callback");
//		params.add("code", code);
//		
//		//HttpHeader와 HttpBody를 하나의 오브젝트에 담기
//		HttpEntity<MultiValueMap<String, String>> kakaoTokenRequest =
//				new HttpEntity<>(params, headers);
//		
//		//Http 요청하기 - Post 방식으로 - 그리고 resoponse 변수의 응답 받음.
//		ResponseEntity<String> response = rt.exchange(
//				"https://kauth.kakao.com/oauth/token",
//				HttpMethod.POST,
//				kakaoTokenRequest,
//				String.class
//		);
//		
//		//Gson, Json Simple, ObjectMapper : 제이슨 데이터를 오브젝트에 담아주는 라이브러리
//		ObjectMapper obMapper = new ObjectMapper(); // 쉽고 기본적으로 내장되어 있음
//		OAuthToken oauthToken = null;
//		try {
//			oauthToken = obMapper.readValue(response.getBody(),OAuthToken.class);
//		} catch (JsonMappingException e) {
//			e.printStackTrace();
//		} catch (JsonProcessingException e) {
//			e.printStackTrace();
//		}
//		
//		System.out.println("카카오 엑세스 토큰:"+oauthToken.getAccess_token());
//		
//		RestTemplate rt2 = new RestTemplate();
//		
//		//HttpHeader 오브젝트 생성
//		HttpHeaders headers2 = new HttpHeaders();
//		headers2.add("Authorization", "Bearer "+oauthToken.getAccess_token());
//		headers2.add("Content-type", "application/x-www-form-urlencoded;charset=utf-8");
//		
//		
//		//HttpHeader와 HttpBody를 하나의 오브젝트에 담기
//		HttpEntity<MultiValueMap<String, String>> kakaoProfileRequest2 =
//				new HttpEntity<>(headers2);
//		
//		//Http 요청하기 - Post 방식으로 - 그리고 resoponse 변수의 응답 받음.
//		ResponseEntity<String> response2 = rt2.exchange(
//				"https://kapi.kakao.com/v2/user/me",
//				HttpMethod.POST,
//				kakaoProfileRequest2,
//				String.class
//		);
//		
//		ObjectMapper obMapper2 = new ObjectMapper(); // 쉽고 기본적으로 내장되어 있음
//		KakaoProfile kakaoProfile = null;
//		try {
//			kakaoProfile = obMapper2.readValue(response2.getBody(),KakaoProfile.class);
//		} catch (JsonMappingException e) {
//			e.printStackTrace();
//		} catch (JsonProcessingException e) {
//			e.printStackTrace();
//		}
//		
//		// User 오브젝트: username, password, email
//		System.out.println("카카오 아이디(번호):"+kakaoProfile.getId());
//		System.out.println("카카오 이메일:"+kakaoProfile.getKakao_account().getEmail());
//		
//		// 카카오로 회원가입시 
//		System.out.println("베이지그 카카오 멤버네임:"+kakaoProfile.getKakao_account().getEmail()+"_"+kakaoProfile.getId()); // 기존의 방식 회원들의 id랑 안겹치게
//		System.out.println("베이지그 카카오 이메일:"+kakaoProfile.getKakao_account().getEmail());
//		// UUID란 -> 중복되지 않는 어떤 특정 값을 만들어내는 알고리즘
//		// 이걸 쓰게되면 계속 바껴있는 아이디, 패스워드를 확인을 못하기 때문에 로그인을 할 수 없다.
//		//UUID tempPassword = UUID.randomUUID(); // 임시비밀번호 
//		System.out.println("베이지그 카카오 패스워드:"+OAuth2Key);
//		// 만약 쇼핑몰을 구성하게 되면 주소 정보는?? -> 추가로 사용자에게 주소 정보를 입력하게 만듬
//
//		String kakaoId = kakaoProfile.getKakao_account().getEmail()+"_"+kakaoProfile.getId();
//		String kakaoEmail = kakaoProfile.getKakao_account().getEmail();
//		String kakaoPassword = OAuth2Key.toString();
//		
//		User kakaoUser = User.builder()
//				.memberId(kakaoId)
//				.password(kakaoPassword)
//				.email(kakaoEmail)
//				.oauth("kakao")
//				.build();
//		
//		//가입자 혹은 비가입자 체크해서 처리
//		User originUser = userService.회원찾기(kakaoUser.getMemberId());
//		
//		if(originUser.getMemberId() == null) {
//			userService.회원가입(kakaoUser);
//		}
//		
//		//로그인 처리
//		Authentication authentication = authenticationManager.authenticate(new UsernamePasswordAuthenticationToken(kakaoUser.getMemberId(), OAuth2Key)); 
//		SecurityContextHolder.getContext().setAuthentication(authentication);
//		
//		return "redirect:/auth/joinForm"; 
//	}
}
