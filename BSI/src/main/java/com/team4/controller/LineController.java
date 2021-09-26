package com.team4.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(path = {"/line-khw"})
public class LineController {
	
	@GetMapping(path = {"/line"})
	public String line() {
		
		return "line-khw/line";
	}
	
	@GetMapping(path = {"/line2"})
	public String line2() {
		
		return "line-khw/line2";
	}

}
