package com.bazig.test.config.oauth.provider;

import java.util.HashMap;
import java.util.Map;

import com.bazig.test.model.KakaoProfile.KakaoAccount.Profile;
import com.fasterxml.jackson.databind.ObjectMapper;

public class KakaoUserInfo implements OAuth2UserInfo{

	private Map<String, Object> attributes; //OAuth2의 getAttributes()를 받기 위해(oauth2User.getAttributes())
	private Map<String, Object> kakao_account;
	
	public KakaoUserInfo(Map<String, Object> attributes) {
		this.attributes = attributes;
		//System.out.println("kakao_account:"+attributes.get("kakao_account"));
		kakao_account = (Map)attributes.get("kakao_account");
	}
	
	@Override
	public String getProviderId() {
		return attributes.get("id").toString();//(String)attributes.get("id");
	}

	@Override
	public String getProvider() {
		return "kakao";
	}

	@Override
	public String getEmail() {
		return (String)kakao_account.get("email");
	}

	@Override
	public String getName() {
		return (String) attributes.get("name");
	}
	
//	public class KakaoAccount {
//		public Boolean profile_needs_agreement;
//		public Profile profile;
//		public Boolean has_email;
//		public Boolean email_needs_agreement;
//		public Boolean is_email_valid;
//		public Boolean is_email_verified;
//		public String email;
//		
//		private Map<String, Object> additionalProperties = new HashMap<String, Object>();
//
//		public Map<String, Object> getAdditionalProperties() {
//			return this.additionalProperties;
//		}
//
//		public void setAdditionalProperty(String name, Object value) {
//			this.additionalProperties.put(name, value);
//		}
//	}
	
}
