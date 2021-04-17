package com.dbs.dbs.config;

import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.builders.WebSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;

@Configuration
@EnableWebSecurity
public class SecSecurityConfig extends WebSecurityConfigurerAdapter {

	protected void configure(final AuthenticationManagerBuilder auth) throws Exception {
		auth.inMemoryAuthentication().withUser("admin").password("{noop}admin").roles("ADMIN");
	}

	@Override
	protected void configure(final HttpSecurity http) throws Exception {
		http
				.authorizeRequests()
				.antMatchers("/**").hasRole("ADMIN")
				.and()
				.formLogin()
				.loginPage("/logins").permitAll()
				.failureUrl("/logerror?error=true").permitAll()
				.defaultSuccessUrl("/home", true).permitAll()
				.usernameParameter("username")
				.passwordParameter("password")
				.loginProcessingUrl("/perform_login")
				.and().csrf().disable();

	}

	@Override
	public void configure(WebSecurity web) throws Exception {
		web.ignoring().antMatchers("/static/**")
				.antMatchers("/resources/static/**/*", "/login**");
	}
//
//	@Bean
//	public PasswordEncoder passwordEncoder() {
//		return new BCryptPasswordEncoder();
//	}
}