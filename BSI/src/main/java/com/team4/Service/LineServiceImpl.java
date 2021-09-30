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

	@Override
	public List<LineVO> findLine1() {
		
		List<LineVO> like1 = lineMapper.selectLine1();
		
		return like1;
	}

	@Override
	public List<LineVO> findLine2() {
		
		List<LineVO> like2 = lineMapper.selectLine2();
		
		return like2;
	}

	@Override
	public List<LineVO> findLine3() {
		
		List<LineVO> like3 = lineMapper.selectLine3();
		
		return like3;
	}

	@Override
	public List<LineVO> findLine4() {
		
		List<LineVO> like4 = lineMapper.selectLine4();
		
		return like4;
	}
	

}
