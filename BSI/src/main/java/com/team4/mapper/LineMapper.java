package com.team4.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.team4.vo.LineVO;

@Mapper
public interface LineMapper {


	List<LineVO> selectAvgUnumber();

	List<LineVO> selectLine1();

	List<LineVO> selectLine2();

	List<LineVO> selectLine3();

	List<LineVO> selectLine4();


	
	

}
