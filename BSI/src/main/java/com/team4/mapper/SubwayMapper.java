package com.team4.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.team4.vo.CustomerVO;
import com.team4.vo.MembersVO;
import com.team4.vo.StationVO;
import com.team4.vo.SubwayVO;

public interface SubwayMapper {

	void insertSubway(List<SubwayVO> subways);
	
	void insertCustomer(List<CustomerVO> customers);

	List<StationVO> selectrank();

	StationVO selectAvg();

	void insertMember(MembersVO member);

	MembersVO selectMemberIdAndPasswd(@Param("memberId") String memberId,@Param("passwd") String passwd);

	List<MembersVO> selectAll();

	MembersVO selectMemberId(String memberId);

	void updateMember(MembersVO member);

	void deleteMember(String memberId);
	
	
}
