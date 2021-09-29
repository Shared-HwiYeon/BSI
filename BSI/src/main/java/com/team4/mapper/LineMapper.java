package com.team4.mapper;

import org.apache.ibatis.annotations.Mapper;

import com.team4.vo.LineVO;

@Mapper
public interface LineMapper {

	LineVO selectLine1(); 

	LineVO selectLine2(); 
	
	LineVO selectLine3(); 
		
	LineVO selectLine4(); 
	

}
