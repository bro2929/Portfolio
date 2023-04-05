package bro.pp.service;

import java.util.ArrayList;

import bro.pp.model.LoginVO;

public interface LoginService {// 추상메서드(설계 목적)
	// 회원가입
	public void signUp(LoginVO member);
	// 로그인
	public LoginVO logIn(LoginVO member);
	
	
	// Service 단계에서 if문 등으로 가공을 한 후 
	// SQL로 넘겨주는 것
}
