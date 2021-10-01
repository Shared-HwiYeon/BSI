package com.team4.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.team4.Service.LineService;
import com.team4.vo.LineVO;

@Controller
@RequestMapping(path = {"/line-khw"})
public class LineController {
	
	@Autowired
	@Qualifier("LineService")
	private LineService lineService;
	
	@GetMapping(path = {"/line"})
	public String line(@RequestParam(defaultValue = "1") String month,
					@RequestParam(defaultValue = "1") String days,Model model) {
		
		List<LineVO> lines = lineService.findAvgUnumber();
		
		//List<LineVO> lines2 = lineService.findDateLine();
		
		//List<LineVO> date = lineService.findMonDay();
		
		
		//List<LineVO> day = lineService.findDay(month);
		
		List<LineVO> vo = lineService.findAVGandDivision(month, days);
		
		//System.out.println(vo);
		/*
		 * System.out.println(lines.get(3).getDivision());
		 * System.out.println(lines.get(3).getAvgNumber());
		 */
		model.addAttribute("vo",vo);
		model.addAttribute("lines", lines);
		//model.addAttribute("lines2", lines2);
		//model.addAttribute("month", months);
		//model.addAttribute("day", day);
		
		return "line-khw/line";
	}

	

}
