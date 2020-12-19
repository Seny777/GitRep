package com.icss.entity;

import java.io.Serializable;

public class ResultInfo implements Serializable {
	private String message;
	private boolean flag;

	public ResultInfo(String message, boolean flag) {
		this.message = message;
		this.flag = flag;
	}

	public ResultInfo() {
	}

	@Override
	public String toString() {
		return "ResultInfo{" +
				"message='" + message + '\'' +
				", flag=" + flag +
				'}';
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	public boolean isFlag() {
		return flag;
	}

	public void setFlag(boolean flag) {
		this.flag = flag;
	}
}
