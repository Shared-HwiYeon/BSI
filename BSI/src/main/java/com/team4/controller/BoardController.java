package com.team4.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(path = {"/board-khw"})
public class BoardController {

	@GetMapping(path = {"/list"})
	public String list() {
		
		return "board-khw/list";
	}
	
	@GetMapping(path = { "/write" })
	public String showWriteForm() {
		
		return "board-khw/write";
	}
	
	@PostMapping(path = {"/write"})
	public String write() {
		
		return "redirect:list";
	}
	
}
