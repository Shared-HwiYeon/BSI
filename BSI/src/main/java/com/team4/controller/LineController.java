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
		
		LineVO line1 = lineService.findLine1();
		LineVO line2 = lineService.findLine2();
		LineVO line3 = lineService.findLine3();
		LineVO line4 = lineService.findLine4();
		
		model.addAttribute("line1", line1.getUnumber());
		model.addAttribute("line2", line2.getUnumber());
		model.addAttribute("line3", line3.getUnumber());
		model.addAttribute("line4", line4.getUnumber());
		
		return "line-khw/line";
<<<<<<< HEAD
		
=======
>>>>>>> branch 'main' of https://github.com/Shared-HwiYeon/BSI.git
	}

}
