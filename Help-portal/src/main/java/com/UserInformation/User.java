package com.UserInformation;

public class User {
	private String userId;
	private String name;
	private String nic;
	private String email;
	private String phone;
	private String gender;
	private String userCategory;
	private String Password;
	
	public User(String userId, String name, String nic, String email, String phone, String gender, String userCategory,
			String password) {
		this.userId = userId;
		this.name = name;
		this.nic = nic;
		this.email = email;
		this.phone = phone;
		this.gender = gender;
		this.userCategory = userCategory;
		Password = password;
	}

	public String getUserId() {
		return userId;
	}

	public String getName() {
		return name;
	}

	public String getNic() {
		return nic;
	}

	public String getEmail() {
		return email;
	}

	public String getPhone() {
		return phone;
	}

	public String getGender() {
		return gender;
	}

	public String getUserCategory() {
		return userCategory;
	}


	public String getPassword() {
		return Password;
	}



}
