package com.team4.controller;

import java.util.List;
import java.util.Locale;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.team4.Service.SubwayService;
import com.team4.vo.StationVO;


@Controller
public class HomeController {
	 
	@Autowired
	@Qualifier("subwayService")
	private SubwayService subwayService;
	
	 
	
	@RequestMapping(path = { "/", "/home" }, method = RequestMethod.GET)
	public String home(Locale locale, Model model) {

		List<StationVO> list = subwayService.findrank();
		
		StationVO vo = subwayService.findavg();
		model.addAttribute("list",list);
		model.addAttribute("vo",vo);
		
		return "home";
	}
	
}
