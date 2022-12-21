package com.TimeTable;

public class TimeTable {
	private String moduleCode;
	private String module;
	private String topic;
	private String date;
	private String time;
	private String lecturer;
	private String platform;
	private String description;

	public TimeTable(String moduleCode, String module, String topic, String date, String time, String lecturer,
			String platform, String description) {
		this.moduleCode = moduleCode;
		this.module = module;
		this.topic = topic;
		this.date = date;
		this.time = time;
		this.lecturer = lecturer;
		this.platform = platform;
		this.description = description;
	}

	public String getModuleCode() {
		return moduleCode;
	}

	public String getModule() {
		return module;
	}

	public String getTopic() {
		return topic;
	}

	public String getDate() {
		return date;
	}

	public String getTime() {
		return time;
	}

	public String getLecturer() {
		return lecturer;
	}

	public String getPlatform() {
		return platform;
	}

	public String getDescription() {
		return description;
	}




}
