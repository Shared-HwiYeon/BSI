package com.team4.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/member")
public class MemberController {

	@GetMapping(path= { "/edit" })
	public String edit() {
		
		return "member/edit";
	}
	
	@GetMapping(path= { "/like" })
	public String like() {
		
		return "member/like";
	}
}
