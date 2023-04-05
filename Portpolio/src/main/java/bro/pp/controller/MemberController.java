
package bro.pp.controller;

import javax.servlet.http.HttpSession;
// 코드 숨겨져있음
import bro.pp.model.LoginVO;
import bro.pp.service.LoginService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
public class MemberController {

	@Autowired
	LoginService ls;// LoginService ls = new LoginService(); <<주소를 만들어 클래스를 객체화(인스턴스화)
					// ls는 참조변수
	// 회원가입
	@RequestMapping(value = "/signup", method = RequestMethod.POST)
	public String signUp (LoginVO member) {
		ls.signUp(member);
		return "index";	// member폴더 안 memberin.jsp(회원가입 페이지)를 실행해라!
									// void로 주면 안된다? view안에 memberin이 없다?
	};
	// 로그인
	@RequestMapping(value = "/login", method = RequestMethod.POST)
		public String logIn (LoginVO member, HttpSession session) {
			System.out.println(member);// 어떤 값을 받았는지 콘솔에서 확인
			System.out.println(ls.logIn(member));// 로그인할때 입력한 정보가 null값인지 콘솔에서 확인
			if(ls.logIn(member) == null) {
				return "logIn";
			}
			else {
				session.setAttribute("login", ls.logIn(member));				
				return "index";	// return "redirect:'/'" 도 가능 -> redirect: '반드시 서버주소'
			}
	};
	
	
}
