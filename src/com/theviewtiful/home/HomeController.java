package com.theviewtiful.home;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {
	
	@Autowired
	HomeService homesvc;

	@RequestMapping("home.do")
	public String execute(Model model) {
		List<Object> artList =homesvc.artlist();
		model.addAttribute("artList", artList);
		//model.addAttribute("artList", "아트리스트");
		return "home/home";
	}
}
