package com.team4.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.team4.Service.LineService;
import com.team4.vo.LineVO;

@Controller
@RequestMapping(path = {"/line-khw"})
public class LineController {
	
	@Autowired
	@Qualifier("LineService")
	private LineService lineService;
	
	@GetMapping(path = {"/line"})
	public String line(Model model) {
		
		List<LineVO> lines = lineService.findAvgUnumber();
		
		/*
		 * System.out.println(lines.get(3).getDivision());
		 * System.out.println(lines.get(3).getAvgNumber());
		 */
		model.addAttribute("lines", lines);
		
		return "line-khw/line";
	}

	

}
