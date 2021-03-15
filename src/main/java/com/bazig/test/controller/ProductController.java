package com.bazig.test.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class ProductController {

	@GetMapping("/auth/productDetail")
	public String productDetail() {
		return "product/productDetail";
	}
}
