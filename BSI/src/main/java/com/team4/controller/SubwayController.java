package com.team4.controller;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.team4.Service.CustomerService;
import com.team4.Service.SubwayService;

@Controller
@RequestMapping(path= { "/subway" })
public class SubwayController {
	
	@Autowired
	@Qualifier("subwayService")
	private SubwayService subwayService;
	
	@Autowired
	@Qualifier("customerService")
	private CustomerService customerService; 
	
	@GetMapping(path= {"/init-data.action"})
	public String initData(HttpServletRequest req) {
		
		//subway 테이블에 데이터 저장
		ServletContext application = req.getServletContext();
		String csvPath = application.getRealPath("/WEB-INF/data-files/bsi_2021.csv");
		
		subwayService.initData(csvPath);
		customerService.initData(csvPath);
		System.out.println("test");
		
		return "redirect:/" ;
	}
	@GetMapping(path= { "/1" })
	public String one() {
		
		return "subway/1";
	}
	
	@GetMapping(path= { "/2" })
	public String two() {
		return "subway/2";
	}
	
	@GetMapping(path= { "/3" })
	public String third() {
		return "subway/3";
	}
	
	@GetMapping(path= { "/4" })
	public String four() {
		return "subway/4";
	}
	
	@GetMapping(path= { "/5" })
	public String five() {
		return "subway/5";
	}
}
