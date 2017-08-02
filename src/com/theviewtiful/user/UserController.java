package com.theviewtiful.user;

import java.util.HashMap;

import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.context.request.WebRequest;

import com.theviewtiful.mail.EmailPublisherService;


@Controller
@RequestMapping("/user/*")
public class UserController {
	
	Logger log = Logger.getLogger(this.getClass());
	
	@Autowired
	private EmailPublisherService emailsvc;
	
	@Autowired
	private UserService usersvc;
	
	// 로그인 goto
	@RequestMapping("/signin")
	public String login(WebRequest request) {
		System.out.println("로그인");
		return "user/signin";
	}
	
	// 로그인 data
	@RequestMapping("/signin-data")
	public String signinData(WebRequest request, Model model, HttpSession session) {
		
		HashMap<String, Object> userData = usersvc.checkUser(request.getParameterMap());
		if (userData == null) {
			model.addAttribute("result", "실패");
			return "home/main";
		}else {
			session.setAttribute("userInfo", userData);
		return "home/main";
		}
	}

	// 회원가입 goto
	@RequestMapping("/signup")
	public String signup(WebRequest request) {
		System.out.println("회원가입");
		return "user/signup";
	}
	
	// 회원가입 이메일 폼 goto
	@RequestMapping("/signup-email-form")
	public String signupEmailForm() {
		System.out.println("회원가입 이메일 폼");
		return "user/signup-email-form";
	}

	// 회원가입 이메일data
	//TODO 8월 1일 화요일 법인등록 후 카페24 등록후 ssl
	@RequestMapping("/signup-email-data")
	public String signupEmailData(WebRequest request) {
		System.out.println("회원가입 이메일 데이타");
		emailsvc.publish("이메일내용");
		return "user/signup-result";
	}

	// 비밀번호재설정 goto
	@RequestMapping("/password-reset")
	public String passwordReset() {
		System.out.println("비밀번호재설정");
		return "user/password-reset";
	}
	
	// 비밀번호재설정data goto
	@RequestMapping("/password-reset-data")
	public String passwordResetData() {
		System.out.println("비밀번호재설정신청");
		return "user/password-result";
	}

	// 새비밀번호 goto
	@RequestMapping("/passwordnew")
	public String passwordnew() {
		System.out.println("새비밀번호");
		return "user/passwordnew";
	}
}
