package com.icss.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serializable;
import java.sql.Date;
@Data
@AllArgsConstructor
@NoArgsConstructor
public class WebVo implements Serializable {
	private Integer id;

	private String wname;

	private String url;

	private String tname;

	private Integer accessNum;

	private Date lastAccessDate;

	private Date createDate;

	private String uname;
}
