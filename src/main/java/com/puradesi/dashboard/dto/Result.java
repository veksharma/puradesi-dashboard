package com.puradesi.dashboard.dto;

import java.util.List;

public class Result<T> {

	private T response;
	private boolean success;
	private String message;
	private List<T> responseList;

	public Result() {
	}

	public List<T> getResponseList() {
		return responseList;
	}

	public void setResponseList(List<T> responseList) {
		this.responseList = responseList;
	}

	public T getResponse() {
		return response;
	}

	public void setResponse(T response) {
		this.response = response;
	}

	public boolean isSuccess() {
		return success;
	}

	public void setSuccess(boolean success) {
		this.success = success;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

}
