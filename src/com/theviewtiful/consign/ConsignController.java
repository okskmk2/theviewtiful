package com.theviewtiful.consign;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/consign/*")
public class ConsignController {

	@RequestMapping("/info")
	public String info() {
		return "consign/info";
	}
}
