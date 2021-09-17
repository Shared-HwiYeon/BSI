package com.team4.Service;

import java.util.List;

import com.team4.vo.SubwayVO;

public interface SubwayService {

	void initData(String csvPath);

	List<SubwayVO> readbsiFromCsv(String csvPath);
	
//	List<MemberVO> findAll(); // 나중에 memberService로 이동

}