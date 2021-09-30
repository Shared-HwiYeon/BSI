package com.team4.Service;

import java.util.List;

import com.team4.vo.JjimVO;
import com.team4.vo.MembersVO;
import com.team4.vo.StationVO;
import com.team4.vo.SubwayVO;

public interface SubwayService {

	void initData(String csvPath);

	List<SubwayVO> readbsiFromCsv(String csvPath);

	List<MembersVO> findAll();

	MembersVO findMemberByMemberId(String memberId);

	void updateMember(MembersVO member);

	List<String> getSname();

	void deleteMember(String memberId);

	List<StationVO> findrank();

	StationVO findavg();

	List<Integer> findline();

	List<String> findSnameGroupByLine(int lname);

	void insertlist(String snames, String memberId);

	List<JjimVO> findjjim(String memberId);

	void deletejjim(String sname, String memberId);
		

	
	

}