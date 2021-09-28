package com.team4.vo;

import java.sql.Date;

import lombok.Data;

@Data
public class MembersVO {
	
	private String memberId;
	private String passwd;
	private String email;
	private String userType;
	private boolean active;
	private Date regDate;
	
}
