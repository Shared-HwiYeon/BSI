package com.team4.mapper;

import java.util.List;

import com.team4.vo.CustomerVO;
import com.team4.vo.SubwayVO;

public interface SubwayMapper {

	void insertSubway(List<SubwayVO> subways);
	
	void insertCustomer(List<CustomerVO> customers);
	
//	List<MemberVO> selectAll();
}
