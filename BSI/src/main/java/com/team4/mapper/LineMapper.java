package com.team4.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.team4.vo.LineVO;

@Mapper
public interface LineMapper {


	List<LineVO> selectAvgUnumber();


	
	

}
