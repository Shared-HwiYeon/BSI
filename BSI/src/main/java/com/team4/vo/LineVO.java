package com.team4.vo;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Builder
@NoArgsConstructor
@Data
@AllArgsConstructor
public class LineVO {
	private String sname;
	private int line;
	private int number;
	private int snumber;
	private Date date;
	private String hour;
	private String division;
	private int unumber;

}

