package com.team4.Service;

import java.io.IOException;

import javax.servlet.http.HttpServletResponse;

import com.team4.vo.MembersVO;

public interface AuthService {

	void registerMember(MembersVO member);

	MembersVO findMemberByIdAndPasswd(String memberId, String passwd);

	void updateMember(String email, String passwd, String memberId);


}