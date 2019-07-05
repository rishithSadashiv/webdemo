package com.cruds.exception;

@SuppressWarnings("serial")
public class WebException extends Exception{
	
	private String details;
	
	public WebException(String details) {
		super();
		this.details = details;
	}

	public String getDetails() {
		return details;
	}


}
