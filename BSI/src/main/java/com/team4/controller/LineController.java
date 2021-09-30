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
		
		List<LineVO> like1 = lineService.findLine1();
		List<LineVO> like2 = lineService.findLine2();
		List<LineVO> like3 = lineService.findLine3();
		List<LineVO> like4 = lineService.findLine4();
		
		/*
		 * System.out.println(lines.get(3).getDivision());
		 * System.out.println(lines.get(3).getAvgNumber());
		 */
		model.addAttribute("lines", lines);
		model.addAttribute("like1", like1);
		model.addAttribute("like2", like2);
		model.addAttribute("like3", like3);
		model.addAttribute("like4", like4);
		
		return "line-khw/line";
	}

	

}
