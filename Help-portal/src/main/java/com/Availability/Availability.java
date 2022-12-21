package com.Availability;

public class Availability {
	private String empId;
	private String name;
	private String faculty;
	private String module;
	private String email;
	private String platform;
	private String day;
	private String time;

	public Availability(String empId, String name, String faculty, String module, String email, String platform,
			String day, String time) {
		this.empId = empId;
		this.name = name;
		this.faculty = faculty;
		this.module = module;
		this.email = email;
		this.platform = platform;
		this.day = day;
		this.time = time;
	}

	public String getEmpId() {
		return empId;
	}

	public String getName() {
		return name;
	}

	public String getFaculty() {
		return faculty;
	}

	public String getModule() {
		return module;
	}

	public String getEmail() {
		return email;
	}

	public String getPlatform() {
		return platform;
	}

	public String getDay() {
		return day;
	}

	public String getTime() {
		return time;
	}



}
