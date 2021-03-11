package com.bazig.test.config.oauth;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.oauth2.client.userinfo.DefaultOAuth2UserService;
import org.springframework.security.oauth2.client.userinfo.OAuth2UserRequest;
import org.springframework.security.oauth2.core.OAuth2AuthenticationException;
import org.springframework.security.oauth2.core.user.OAuth2User;
import org.springframework.stereotype.Service;

import com.bazig.test.config.auth.PrincipalDetails;
import com.bazig.test.model.User;
import com.bazig.test.service.UserService;

@Service
public class PrincipalOauth2UserService  extends DefaultOAuth2UserService{

	@Autowired
	private UserService userService;
	
//	@Autowired
//	private AuthenticationManager authenticationManager;
	
	@Value("${cos.key}")
	private String cosKey; // 절대 노출되면 안됨!!!!!!!!!!!!
	
	@Override
	public OAuth2User loadUser(OAuth2UserRequest userRequest) throws OAuth2AuthenticationException {
		System.out.println("getClientRegistration:"+userRequest.getClientRegistration()); //registationId로 어떤 Oauth로 로그인 했는지 확인가능
		System.out.println("getAccessToken:"+userRequest.getAccessToken().getTokenValue());

		OAuth2User oauth2User = super.loadUser(userRequest);
		
		// 구글 로그인 버튼 클릭 -> 구글 로그인창 -> 로그인을 완료 -> code를 리턴 받음(Oauth-Client 라이브러리) -> AccessToken 요청
		// 여기까지가 userRequest 정보 -> loadUser함수 호출-> 구글로부터 회원 프로필을 리턴 받음
		System.out.println("getAttributes:"+oauth2User.getAttributes());
		
		String provider = userRequest.getClientRegistration().getRegistrationId(); // google
		String providerId = oauth2User.getAttribute("sub");
		String memberId = provider+"_"+providerId; // google_sub 
		String username = oauth2User.getAttribute("name");
		String password = cosKey;
		String email = oauth2User.getAttribute("email");
		
		
		User OAuthUser = User.builder()
				.memberId(memberId)
				.username(username)
				.password(password)
				.email(email)
				.oauth(provider)
				.role("user")
				.build();
		
		//가입자 혹은 비가입자 체크해서 처리
		User originUser = userService.회원찾기(OAuthUser.getMemberId());
		if(userService.회원찾기(OAuthUser.getMemberId()) == null) {
			userService.회원가입(OAuthUser);
		}
		
//		Authentication authentication = authenticationManager.authenticate(new UsernamePasswordAuthenticationToken(OAuthUser.getMemberId(), cosKey)); 
//		SecurityContextHolder.getContext().setAuthentication(authentication);
		
		return new PrincipalDetails(OAuthUser, oauth2User.getAttributes()); // Authentication 객체에 오브젝트가 저장이 된다.
	}
	
}
