package com.icss.entity;


import java.io.Serializable;
public class Book implements Serializable {
	private Integer bid;
	private String bname;
	private Double price;
	private String author;
	private Integer tid;

	@Override
	public String toString() {
		return "Book{" +
				"bid=" + bid +
				", bname='" + bname + '\'' +
				", price=" + price +
				", author='" + author + '\'' +
				", tid=" + tid +
				'}';
	}

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

	public Double getPrice() {
		return price;
	}

	public void setPrice(Double price) {
		this.price = price;
	}

	public String getAuthor() {
		return author;
	}

	public void setAuthor(String author) {
		this.author = author;
	}

	public Integer getTid() {
		return tid;
	}

	public void setTid(Integer tid) {
		this.tid = tid;
	}

	public Book() {
	}

	public Book(String bname, Double price, String author, Integer tid) {
		this.bname = bname;
		this.price = price;
		this.author = author;
		this.tid = tid;
	}

	public Book(Integer bid, String bname, Double price, String author, Integer tid) {
		this.bid = bid;
		this.bname = bname;
		this.price = price;
		this.author = author;
		this.tid = tid;
	}
}
