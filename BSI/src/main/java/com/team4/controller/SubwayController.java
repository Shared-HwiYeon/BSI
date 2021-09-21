package com.team4.controller;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
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
	
//	@GetMapping(path= { "/3" })
//	public String third() {
//		return "subway/3";
//	} // 김혜원
	
//	@GetMapping(path= { "/4" })
//	public String four() {
//		return "subway/4";
//	} // 김혜원
	
	@GetMapping(path= { "/5" })
	public String five() {
		return "subway/5";
	}
	
	@GetMapping(path= { "/manage" })
	public String manage(Model model) {
		
		//데이터 조회
		//List<MemberVO> members = subwayService.findAll();
		
		// View 에서 사용할 수 있도록	 Model 타입의 전달인자에 저장 -> requesst 객체에 저장
//		model.addAttribute("members" , members);
		return "subway/manage";
	}
	
	@GetMapping(path= { "/managedetail" })
	public String managedetail(int memberNo, Model model) {
		
		// 1. 요청데이터 읽기
		// 2. 데이터베이스에서 데이터 조회(데이터가 없으면 목록으로 이동)
//		MemberVO member = MemberService.findBoardByMemberNo(memberNo);
		
//		if(member == null) {
//			return "redirect:manage";
//		}
//		
//		//3. view(.jsp)에서 읽을 수 있도록 데이터 저장
//		model.addAttribute("member",member);//HttpServlertRequest.setattribute;
		
		return "subway/managedetail";
	}
}
