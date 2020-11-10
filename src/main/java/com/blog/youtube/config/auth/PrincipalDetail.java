package com.blog.youtube.config.auth;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Map;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.oauth2.core.user.OAuth2User;

import com.blog.youtube.model.User;

import lombok.Getter;

@Getter
public class PrincipalDetail implements UserDetails,OAuth2User{
	
	private User user;  
	private Map<String,Object> attributes;
	
	public PrincipalDetail(User user) {
		this.user=user;
		
	}
	public PrincipalDetail(User user,Map<String,Object> attributes) {
		this.user=user;
		this.attributes=attributes;
	}
	@Override
	public String getPassword() {
		return user.getPassword();
	}

	@Override
	public String getUsername() {
		return user.getUsername();
	}
	@Override
	public boolean isAccountNonExpired() {
		return true;
	}
	@Override
	public boolean isAccountNonLocked() {
		return true;
	}
	@Override
	public boolean isCredentialsNonExpired() {
		return true;
	}
	@Override
	public boolean isEnabled() {
		return true;
	}
	@Override
	public Collection<? extends GrantedAuthority> getAuthorities() {
		Collection<GrantedAuthority> collecters = new ArrayList<>();
		collecters.add(()->{
			if(user.getRole() != null) {
			return "ROLE_"+user.getRole();
			}
			
			return "ROLE_USER";
		});
		return collecters;
	}
	@Override
	public Map<String, Object> getAttributes() {
		
		return attributes;
	}
	@Override
	public String getName() {
		
		return null;
	}
	
}
