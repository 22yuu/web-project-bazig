package com.bazig.test.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.method.configuration.EnableGlobalMethodSecurity;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

import com.bazig.test.config.auth.PrincipalDetailService;
import com.bazig.test.config.oauth.PrincipalOauth2UserService;


@Configuration //빈 등록: 스프링 컨테이너에서 객체를 관리할 수 있게 하는 것(IoC 관리)
@EnableWebSecurity // 시큐리티 필터 추가 = 스프링 시큐리티가 활성화가 되어 있는데 어떤 설정을 해당 파일에서 하겠다.
@EnableGlobalMethodSecurity(prePostEnabled = true) //특정 주소로 접근을 하면 권한 및 인증을 미리 체크하겠다는 뜻, 요 3개는 시큐리티 세트
public class SecurityConfig extends WebSecurityConfigurerAdapter{
	
	@Autowired
	private PrincipalDetailService principalDetailService;
	
	@Autowired
	private PrincipalOauth2UserService pricipalOauth2DetailService;
	
	@Bean
	@Override
	public AuthenticationManager authenticationManagerBean() throws Exception {
		return super.authenticationManagerBean();
	}

	@Bean //IoC
	public BCryptPasswordEncoder encodePWD() {
		return new BCryptPasswordEncoder();
	}
	
	//시큐리티가 대신 로그인 할 때 password를 가로채기를 하는데
	//해당 password가 어떤 해쉬로 회원가입이 되었는지 알아야
	//같은 해쉬로 암호화해서 DB에 있는 해쉬랑 비교할 수 있음.
	@Override
	protected void configure(AuthenticationManagerBuilder auth) throws Exception {
		auth.userDetailsService(principalDetailService).passwordEncoder(encodePWD());
	}
	
	
	@Override
	protected void configure(HttpSecurity http) throws Exception {
		http
			.csrf().disable() //csrf토큰 비활성화 (테스트시 걸어두는게 좋음)
			.authorizeRequests() //요청이 들어오면,
				.antMatchers("/", "/auth/**", "/js/**","/css/**", "/images/**", "/img/**") // /auth/ 이하 url은 
				.permitAll() // 전부 허가
				.anyRequest()
				.authenticated()
			.and()
				.formLogin()
				.loginPage("/auth/loginForm/") // 허가되지 않은 url은 로그인 폼으로
				.loginProcessingUrl("/auth/loginProc") // 스프링시큐리티가 해당 주소로 오는 로그인을 가로채서 대신 로그인을 해준다.
				.defaultSuccessUrl("/")// 로그인 성공하면 이동하는 디폴트 주소
			.and()
				.oauth2Login() // Tip. 코드X, (엑세스토큰+사용자프로필정보 O)
				.loginPage("/auth/loginForm") 
				.userInfoEndpoint()
				.userService(pricipalOauth2DetailService);
	}
}
