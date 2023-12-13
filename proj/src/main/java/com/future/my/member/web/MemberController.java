package com.future.my.member.web;

import java.util.HashMap;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.future.my.member.service.MemberService;
import com.future.my.member.vo.MemberVO;

@Controller
public class MemberController {
	@Autowired 
	MemberService memberService; 
	
	@Autowired
	private BCryptPasswordEncoder passwordEncoder;
	
	@RequestMapping("/regist")
	public String registView() {
		return "member/registView";
	}

	
	@RequestMapping("/login")
	public String login() {
		
		return "member/loginView";
	}
	@RequestMapping("/loginDo")
	public String loginDo(MemberVO member, HttpSession session
			   ,boolean remember, String fromUrl
			   ,HttpServletResponse response) {
		System.out.println(member);
		MemberVO login = memberService.loginMember(member);
		
//		pw암호화 db와 pw비교		
		boolean match = passwordEncoder.matches(member.getMemPw(), login.getMemPw());
		
		if(login == null || !match) {
			return "redirect:/loginView?msg=N";
		}
		session.setAttribute("login", login);
		if(remember) {
			//true 쿠기 생성
			Cookie cookie = new Cookie("rememberId", member.getMemId());
			response.addCookie(cookie); //응답하는 객체에 담아서 전달
		}else {
			// 쿠키 삭제
			Cookie cookie = new Cookie("rememberId","");
			cookie.setMaxAge(0);
			response.addCookie(cookie); //응답하는 객체에 담아서 전달
		}
		return "redirect:/" ;
	}
	@RequestMapping("/logoutDo")
	public String logoutDo(HttpSession session
			, HttpServletRequest request) {
		// 세션 종료
		session.invalidate();
		// 현재 요청이 어느 URL을 바라보는지 
		String requestToURL = request.getRequestURL().toString();
		System.out.println(requestToURL);
		String requestUrl = request.getHeader("Referer");
		System.out.println(requestUrl);
		return "redirect:" + requestUrl;
	}
	
}
