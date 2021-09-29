package com.team4.Service;

import java.util.List;

import com.team4.mapper.LineMapper;
import com.team4.vo.LineVO;

import lombok.Setter;

public class LineServiceImpl implements LineService{

	@Setter
	private LineMapper lineMapper;
	
	@Override
	public LineVO findLine1() {
		
		LineVO line = lineMapper.selectLine1();
		return line;
	}

	@Override
	public LineVO findLine2() {
		
		LineVO line = lineMapper.selectLine2();
		return line;
	}

	@Override
	public LineVO findLine3() {
		
		LineVO line = lineMapper.selectLine3();
		return line;
	}

	@Override
	public LineVO findLine4() {
		
		LineVO line = lineMapper.selectLine4();
		return line;
	}
	
	

}
