package com.bazig.test.model;

import java.util.HashMap;
import java.util.Map;

import lombok.Data;

@Data
public class KakaoProfile {

	public Integer id;
	public String connected_at;
	public Properties properties;
	public KakaoAccount kakao_account;
	private Map<String, Object> additionalProperties = new HashMap<String, Object>();

	public Map<String, Object> getAdditionalProperties() {
		return this.additionalProperties;
	}

	public void setAdditionalProperty(String name, Object value) {
		this.additionalProperties.put(name, value);
	}

	@Data
	public class Properties {

		public String nickname;
		public String profile_image;
		public String thumbnail_image;
		private Map<String, Object> additionalProperties = new HashMap<String, Object>();

		public Map<String, Object> getAdditionalProperties() {
			return this.additionalProperties;
		}

		public void setAdditionalProperty(String name, Object value) {
			this.additionalProperties.put(name, value);
		}
	}

	@Data
	public class KakaoAccount {

		public Boolean profile_needs_agreement;
		public Profile profile;
		public Boolean has_email;
		public Boolean email_needs_agreement;
		public Boolean is_email_valid;
		public Boolean is_email_verified;
		public String email;
		private Map<String, Object> additionalProperties = new HashMap<String, Object>();

		public Map<String, Object> getAdditionalProperties() {
			return this.additionalProperties;
		}

		public void setAdditionalProperty(String name, Object value) {
			this.additionalProperties.put(name, value);
		}

		@Data
		public class Profile {

			public String nickname;
			public String thumbnail_image_url;
			public String profile_image_url;
			private Map<String, Object> additionalProperties = new HashMap<String, Object>();

			public Map<String, Object> getAdditionalProperties() {
				return this.additionalProperties;
			}

			public void setAdditionalProperty(String name, Object value) {
				this.additionalProperties.put(name, value);
			}
		}
	}
}
