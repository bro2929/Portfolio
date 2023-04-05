package bro.pp.mapper;

import java.util.ArrayList;	// ArrayList<LoginVO>를 사용하기 위해 import

import bro.pp.model.LoginVO;

public interface LoginMapper {// 추상메서드
	// 회원가입
	public void signUp(LoginVO member);
	// 로그인
	public LoginVO logIn(LoginVO member);
}
