package com.bazig.test.handler;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.context.annotation.Bean;
import org.springframework.security.core.Authentication;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;

import com.bazig.test.config.auth.PrincipalDetails;
import com.bazig.test.model.User;


public class OAuth2SuccessHandler implements AuthenticationSuccessHandler{

	
//	public OAuth2SuccessHandler(String defaultTargetUrl) {
//		
//	}
//	
	public void aaa() {
		
			
	}
	
	@Override
	public void onAuthenticationSuccess(HttpServletRequest request, HttpServletResponse response,
			Authentication authentication) throws IOException, ServletException {
		
		
		System.out.println("onAuthenticationSuccess():authentication.getPrincipal() : " + authentication.getPrincipal());
		
		PrincipalDetails principalDetails = (PrincipalDetails)authentication.getPrincipal();
//		System.out.println("principalDetails.getAttributes() : " +  principalDetails.getAttributes()); 
//		System.out.println("principalDetails.getUser() : " +  principalDetails.getUser()); 
		
		String oAuthClient = principalDetails.getUser().getOauth();
		int registed = principalDetails.getUser().getRegisted();
		System.out.println("onAuthenticationSuccess():Oauth2 : " + oAuthClient +" registed : " + registed);
//		System.out.println("Oauth Client : " +  user.getOauth());
		
		if(registed == 1) {
			response.sendRedirect("/");
		} else {
			response.sendRedirect("/mypage");
		}
	}

	
}
