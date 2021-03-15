

package com.bazig.test.config.oauth;



import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.oauth2.client.userinfo.DefaultOAuth2UserService;
import org.springframework.security.oauth2.client.userinfo.OAuth2UserRequest;
import org.springframework.security.oauth2.core.OAuth2AuthenticationException;
import org.springframework.security.oauth2.core.user.OAuth2User;
import org.springframework.stereotype.Service;

import com.bazig.test.config.auth.PrincipalDetails;
import com.bazig.test.config.oauth.provider.FacebookUserInfo;
import com.bazig.test.config.oauth.provider.GoogleUserInfo;
import com.bazig.test.config.oauth.provider.KakaoUserInfo;
import com.bazig.test.config.oauth.provider.NaverUserInfo;
import com.bazig.test.config.oauth.provider.OAuth2UserInfo;
import com.bazig.test.model.User;
import com.bazig.test.service.UserService;

@Service
public class PrincipalOauth2UserService  extends DefaultOAuth2UserService{

	@Autowired
	private UserService userService;
	
	@Autowired
	private AuthenticationManager authenticationManager;
	
	@Value("${OAuth2.key}")
	private String OAuth2Key; // 절대 노출되면 안됨!!!!!!!!!!!!
	
	@Override
	public OAuth2User loadUser(OAuth2UserRequest userRequest) throws OAuth2AuthenticationException {
		System.out.println("getClientRegistration:"+userRequest.getClientRegistration()); //registationId로 어떤 Oauth로 로그인 했는지 확인가능
		System.out.println("getAccessToken:"+userRequest.getAccessToken().getTokenValue());

		OAuth2User oauth2User = super.loadUser(userRequest);
		
		// 구글 로그인 버튼 클릭 -> 구글 로그인창 -> 로그인을 완료 -> code를 리턴 받음(Oauth-Client 라이브러리) -> AccessToken 요청
		// 여기까지가 userRequest 정보 -> loadUser함수 호출-> 구글로부터 회원 프로필을 리턴 받음
		System.out.println("getAttributes:"+oauth2User.getAttributes());
		
		OAuth2UserInfo oAuth2UserInfo = null;
		if(userRequest.getClientRegistration().getRegistrationId().equals("google")) {
			oAuth2UserInfo = new GoogleUserInfo(oauth2User.getAttributes());
		} else if(userRequest.getClientRegistration().getRegistrationId().equals("facebook")) {
			oAuth2UserInfo = new FacebookUserInfo(oauth2User.getAttributes());
		} else if(userRequest.getClientRegistration().getRegistrationId().equals("naver")) {
			oAuth2UserInfo = new NaverUserInfo((Map)oauth2User.getAttributes().get("response"));
		} else if(userRequest.getClientRegistration().getRegistrationId().equals("kakao")) {
			oAuth2UserInfo = new KakaoUserInfo(oauth2User.getAttributes());
		}
		
		String provider = oAuth2UserInfo.getProvider(); // google, naver, kakao
		String providerId = oAuth2UserInfo.getProviderId();
		String memberId = provider+"_"+providerId; 
		String username = oAuth2UserInfo.getName();
		String password = OAuth2Key;
		String email = oAuth2UserInfo.getEmail();
		
		
		User oauth2UserBuilder = User.builder()
				.memberId(memberId)
				.username(username)
				.password(password)
				.email(email)
				.oauth(provider)
				.role("user")
				.build();
		
		//가입자 혹은 비가입자 체크해서 처리
		System.out.println("가입자 혹은 비가입자 체크해서 처리");
		User originUser = userService.회원찾기(oauth2UserBuilder.getMemberId());
		if(originUser.getMemberId() == null) {
			System.out.println("가입되지 않았습니다. 자동 회원가입처리");
			userService.회원가입(oauth2UserBuilder);
		} else {
			System.out.println(originUser.getId());	
		}
		
		System.out.println("***Oauth2UserSerivce***");
		System.out.println("id : "+ oauth2UserBuilder.getMemberId() + " pwd :  "+ oauth2UserBuilder.getPassword());
		
//		Authentication authentication = authenticationManager.authenticate(new UsernamePasswordAuthenticationToken(oauth2UserBuilder.getMemberId(), oauth2UserBuilder.getPassword())); 
//		SecurityContextHolder.getContext().setAuthentication(authentication);
		

		
		return new PrincipalDetails(oauth2UserBuilder, oauth2User.getAttributes()); // Authentication 객체에 오브젝트가 저장이 된다.
	}
}
