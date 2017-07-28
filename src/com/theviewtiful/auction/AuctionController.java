package com.theviewtiful.auction;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/auction/*")
public class AuctionController {

	@RequestMapping("/item-list")	
	public String itemList() {
		System.out.println("옥션-아이템리스트");
		return "auction/item-list";
	}
	
	@RequestMapping("/item-detail")	
	public String itemDetail() {
		System.out.println("옥션-아이템상세");
		return "auction/item-detail";
	}
	
}
