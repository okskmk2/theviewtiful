package com.theviewtiful.auction;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AuctionController {
	@RequestMapping("auction/item-list")
	public String itemList() {
		System.out.println("item-list");
		return "/auction/item-list";
	}
}
