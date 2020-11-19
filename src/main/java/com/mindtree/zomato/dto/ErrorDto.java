package com.mindtree.zomato.dto;

public class ErrorDto {
	private String errorMsg;

	public String getErrorMsg() {
		return errorMsg;
	}

	public void setErrorMsg(String errorMsg) {
		this.errorMsg = errorMsg;
	}

	public ErrorDto() {
		super();
		// TODO Auto-generated constructor stub
	}

	public ErrorDto(String errorMsg) {
		super();
		this.errorMsg = errorMsg;
	}
	

}
