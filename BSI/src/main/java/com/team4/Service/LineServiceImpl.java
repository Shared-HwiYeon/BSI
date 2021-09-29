package com.team4.Service;

import java.util.List;

import com.team4.mapper.LineMapper;
import com.team4.vo.LineVO;

import lombok.Setter;

public class LineServiceImpl implements LineService{

	@Setter
	private LineMapper lineMapper;

	@Override
	public List<LineVO> findAvgUnumber() {
		
		List<LineVO> lines = lineMapper.selectAvgUnumber();
		
		return lines;
	}
	

}
