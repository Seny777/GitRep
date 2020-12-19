package com.icss.entity;

import java.io.Serializable;

public class BookVo implements Serializable {
	private Integer bid;
	private String bname;
	private String taddress;
	private Double price;

	public Integer getBid() {
		return bid;
	}

	public void setBid(Integer bid) {
		this.bid = bid;
	}

	public String getBname() {
		return bname;
	}

	public void setBname(String bname) {
		this.bname = bname;
	}

	public String getTaddress() {
		return taddress;
	}

	public void setTaddress(String taddress) {
		this.taddress = taddress;
	}

	public Double getPrice() {
		return price;
	}

	public void setPrice(Double price) {
		this.price = price;
	}

	@Override
	public String toString() {
		return "BookVo{" +
				"bid=" + bid +
				", bname='" + bname + '\'' +
				", taddress='" + taddress + '\'' +
				", price=" + price +
				'}';
	}

	public BookVo() {
	}

	public BookVo(Integer bid, String bname, String taddress, Double price) {
		this.bid = bid;
		this.bname = bname;
		this.taddress = taddress;
		this.price = price;
	}
}
