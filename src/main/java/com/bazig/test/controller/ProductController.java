package com.bazig.test.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class ProductController {

	@GetMapping("/auth/productDetail")
	public String productDetail() {
		return "product/productDetail";
	}
	
	@GetMapping("/auth/itemCollection")
	public String itemCollection() {
		return "product/itemCollection";
	}
	
	@GetMapping("/auth/eventCollection")
	public String eventCollection() {
		return "product/eventCollection";
	}
	
	@GetMapping("/auth/raffleCollection")
	public String raffleCollection() {
		return "product/raffleCollection";
	}
}
