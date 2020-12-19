package com.icss.entity;

import java.io.Serializable;

public class Store implements Serializable {
	private Integer tid;
	private String tname;
	private String taddress;

	@Override
	public String toString() {
		return "Store{" +
				"tid=" + tid +
				", tname='" + tname + '\'' +
				", taddress='" + taddress + '\'' +
				'}';
	}

	public Store() {
	}

	public Store(Integer tid, String tname, String taddress) {
		this.tid = tid;
		this.tname = tname;
		this.taddress = taddress;
	}

	public Integer getTid() {
		return tid;
	}

	public void setTid(Integer tid) {
		this.tid = tid;
	}

	public String getTname() {
		return tname;
	}

	public void setTname(String tname) {
		this.tname = tname;
	}

	public String getTaddress() {
		return taddress;
	}

	public void setTaddress(String taddress) {
		this.taddress = taddress;
	}
}
