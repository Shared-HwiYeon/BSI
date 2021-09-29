package com.team4.Service;

import java.util.List;

import com.team4.vo.MembersVO;
import com.team4.vo.StationVO;
import com.team4.vo.SubwayVO;

public interface SubwayService {

	void initData(String csvPath);

	List<SubwayVO> readbsiFromCsv(String csvPath);

	List<StationVO> findrank();

	StationVO findavg();

	List<MembersVO> findAll();

	MembersVO findMemberByMemberId(String memberId);

	void updateMember(MembersVO member);

	void deleteMember(String memberId);
	
	
}