package com.Request;

public class Request {
	private String sId;
	private String name;
	private String faculty;
	private String batch;
	private String module;
	private String lesson;
	private String reqDate;

	public Request(String sId, String name, String faculty, String batch, String module, String lesson, String reqDate) {
		this.sId = sId;
		this.name = name;
		this.faculty = faculty;
		this.batch = batch;
		this.module = module;
		this.lesson = lesson;
		this.reqDate = reqDate;
	}


	public String getsId() {
		return sId;
	}

	public String getName() {
		return name;
	}

	public String getFaculty() {
		return faculty;
	}

	public String getBatch() {
		return batch;
	}

	public String getModule() {
		return module;
	}

	public String getLesson() {
		return lesson;
	}

	public String getReqDate() {
		return reqDate;
	}

}
