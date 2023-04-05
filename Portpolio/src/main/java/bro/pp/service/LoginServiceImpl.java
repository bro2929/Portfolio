package bro.pp.service;

import java.util.ArrayList;

import bro.pp.mapper.LoginMapper;
import bro.pp.model.LoginVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class LoginServiceImpl implements LoginService {
	
	@Autowired
	LoginMapper lm;
	
	// 회원가입
	public void signUp(LoginVO member) {// 구현메서드
		lm.signUp(member);//클래스.메소드(매개변수)
	};
	// 로그인
	public LoginVO logIn(LoginVO member) {
		lm.logIn(member);
		return lm.logIn(member);
	};
	

	
}
