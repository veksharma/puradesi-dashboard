package com.puradesi.dashboard.security;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.access.vote.RoleVoter;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.password.NoOpPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;

@Configuration
@EnableWebSecurity
public class SecurityConfig extends WebSecurityConfigurerAdapter{
	@Override
	protected void configure (AuthenticationManagerBuilder auth) throws Exception {
		
		auth.inMemoryAuthentication()
		.withUser("admin")
		.password("svm@123")
		.roles("ADMIN")
		.and()
		.withUser("adminvek")
		.password("vek@123")
		.roles("ADMIN");
	}
	
	@Bean
	public PasswordEncoder getPasswordEncoder() {
		return NoOpPasswordEncoder.getInstance();
	}
	
	
	@Override
	protected void configure(HttpSecurity http) throws Exception{
		http.authorizeRequests()
//		.antMatchers("/addCustomerPage").permitAll()
		.antMatchers("/**")
		.access("isFullyAuthenticated()")
		.and()
		.formLogin()
		.and()
		.csrf().disable();
	}

}
