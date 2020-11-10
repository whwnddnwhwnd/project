package com.blog.youtube.config.auth;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.security.oauth2.client.userinfo.DefaultOAuth2UserService;
import org.springframework.security.oauth2.client.userinfo.OAuth2UserRequest;
import org.springframework.security.oauth2.core.OAuth2AuthenticationException;
import org.springframework.security.oauth2.core.user.OAuth2User;
import org.springframework.stereotype.Service;

import com.blog.youtube.config.auth.provider.FacebookUserInfo;
import com.blog.youtube.config.auth.provider.GoogleUserInfo;
import com.blog.youtube.config.auth.provider.OAuth2UserInfo;
import com.blog.youtube.model.User;
import com.blog.youtube.service.UserService;

@Service
public class PrincipalOauth2UserService extends DefaultOAuth2UserService {

	@Value("${cos.key}")
	private String cosKey;
	
	@Autowired
	private UserService userService;
	
	@Override
	public OAuth2User loadUser(OAuth2UserRequest userRequest) throws OAuth2AuthenticationException {
		OAuth2User oauth2User = super.loadUser(userRequest);

		OAuth2UserInfo oAuth2UserInfo = null;
		if(userRequest.getClientRegistration().getRegistrationId().equals("google")) {
			oAuth2UserInfo = new GoogleUserInfo(oauth2User.getAttributes());
		}else if(userRequest.getClientRegistration().getRegistrationId().equals("facebook")){
			oAuth2UserInfo = new FacebookUserInfo(oauth2User.getAttributes());
		}
		
		String provider = oAuth2UserInfo.getProvider();
		String providerId = oAuth2UserInfo.getProviderId();
		
		String username = provider+"_"+ providerId;
		String name = oauth2User.getAttribute("name");
		String email = oAuth2UserInfo.getEmail();
		
		User OAuth2User = new User();
		OAuth2User.setUsername(username);
		OAuth2User.setPassword(cosKey);
		OAuth2User.setName(name);
		OAuth2User.setEmail(email);
		OAuth2User.setType(provider);
		
		User originUser = userService.find(OAuth2User.getUsername());
		if(originUser.getUsername()==null) {
			userService.join(OAuth2User);
		}
		
		return new PrincipalDetail(OAuth2User,oauth2User.getAttributes());
	}

}
