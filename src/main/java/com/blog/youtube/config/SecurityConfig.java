package com.blog.youtube.config;

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
import org.springframework.security.oauth2.client.registration.ClientRegistration.ProviderDetails.UserInfoEndpoint;

import com.blog.youtube.config.auth.PrincipalDetailService;
import com.blog.youtube.config.auth.PrincipalOauth2UserService;

import ch.qos.logback.core.pattern.color.BoldCyanCompositeConverter;

@Configuration
@EnableWebSecurity
@EnableGlobalMethodSecurity(prePostEnabled = true)
public class SecurityConfig extends WebSecurityConfigurerAdapter {

    @Autowired
    private PrincipalDetailService principalDetailService;

    @Autowired
    private PrincipalOauth2UserService principalOauth2UserService;


    @Bean
    @Override
    public AuthenticationManager authenticationManagerBean() throws Exception {
        return super.authenticationManagerBean();
    }

    @Bean
    public BCryptPasswordEncoder encodePWD() {
        return new BCryptPasswordEncoder();
    }

    @Override
    protected void configure(AuthenticationManagerBuilder auth) throws Exception {
        auth.userDetailsService(principalDetailService).passwordEncoder(encodePWD());
    }

    @Override
    protected void configure(HttpSecurity http) throws Exception {
        http
                .csrf().disable()
                .authorizeRequests()
                .antMatchers("/reply/**", "/contact/**", "/restaurant/**", "/test/**", "/", "/auth/**", "/js/**", "/css/**", "/image/**", "/fonts/**", "/images/**", "/jquery/**", "/page/**", "/scss/**").permitAll()
                .antMatchers("/mypage/**", "/user/**").access("hasRole('ROLE_USER')")
                .anyRequest().authenticated().and().formLogin().loginPage("/auth/loginForm")
                .loginProcessingUrl("/auth/loginProc")
                .defaultSuccessUrl("/")
                .and()
                .oauth2Login()
                .loginPage("/auth/loginForm")
                .userInfoEndpoint().userService(principalOauth2UserService);

    }


}
