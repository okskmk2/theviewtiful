package com.theviewtiful.admin;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.context.request.WebRequest;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
@MultipartConfig
public class AdminController {

	@RequestMapping("admin")
	public String index() {
		System.out.println("admin");
		return "admin/login";
	}

	@RequestMapping("admin/home")
	public String home() {
		System.out.println("admin/home");
		return "admin/home";
	}

	@RequestMapping("admin/login")
	public String adminLogin(HttpSession session, Model model, String adminId) {
		System.out.println("admin/login");
		// 이미 접속중인 경우
		if (session.getAttribute("adminInfo") != null) {
			model.addAttribute("result", "이미접속중");
		} else {
			// 접속로직처리
			HashMap<String, String> map = new HashMap<String, String>();
			if (adminId.equals("admin")) {
				map.put("enrollArtRight", "1");
			}
			map.put("adminId", adminId);
			session.setAttribute("adminInfo", map);
			model.addAttribute("result", "접속성공");
		}
		return "admin/home";
	}

	@RequestMapping("admin/logout")
	public String adminLogout(HttpSession session, Model model, String adminId) {
		System.out.println("admin/logout");
		// 접속중인 경우
		if (session.getAttribute("adminInfo") != null) {
			session.removeAttribute("adminInfo");
			model.addAttribute("result", "관리자 로그아웃성공");
		}
		// 접속이 아닌 경우
		else {
			model.addAttribute("result", "관리자 로그인 상태가 아닙니다.");
		}
		return "admin/login";
	}

	@RequestMapping("admin/art/enroll-form")
	public String enrollArt(HttpSession session, Model model) {
		System.out.println("admin/art/enroll-form");
		if (session.getAttribute("adminInfo") != null) {
			@SuppressWarnings("unchecked")
			HashMap<String, String> adminInfo = (HashMap<String, String>) session.getAttribute("adminInfo");
			if (adminInfo != null) {
				String enrollArtRight = adminInfo.get("enrollArtRight");
				if (enrollArtRight != null) {
					if (enrollArtRight.equals("1")) {
						return "admin/art/enroll-form";
					}
				} else {
					model.addAttribute("result", "작품등록권한이 없습니다.");
				}
			}else{
				model.addAttribute("result", "관리자로그인이 필요합니다.");
			}
		}
		return "admin/home";
	}
	
	//@RequestMapping("admin/art/enroll")
	@PostMapping("admin/art/enroll")
	public String enrollArtwork(@RequestParam("artworkImgFile") MultipartFile file, RedirectAttributes redirectAttributes) throws IOException, ServletException {
		if (file.isEmpty()) {
			redirectAttributes.addFlashAttribute("message", "파일을 업로드하지 않았습니다.");
			return "rediret:uploadStatus";
		}
		try {
			byte[] bytes = file.getBytes();
			Path path = Paths.get("c://upload/"+file.getOriginalFilename());
			Files.write(path, bytes);
			redirectAttributes.addFlashAttribute("message", "You successfully uploaded "+file.getOriginalFilename());
		} catch (IOException e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return "redirect:/uploadStatus";
	}

    @GetMapping("/uploadStatus")
    public String uploadStatus(HttpServletRequest request) {
    	String s = request.getServletPath();
    	System.out.println(s);
        return "admin/art/uploadStatus";
    }
}
