package com.example.demo.entity;

public class Student {

	private String student_id;
	private String fullname;
	private String address;
	private String branch;
	private String sem;
	private String mobile;
	private String email;
	private String student_pic;
	private String password;
	private int otp;

	public Student() {
		super();
	}

	public String getStudent_id() {
		return student_id;
	}

	public void setStudent_id(String student_id) {
		this.student_id = student_id;
	}

	public String getFullname() {
		return fullname;
	}

	public void setFullname(String fullname) {
		this.fullname = fullname;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getBranch() {
		return branch;
	}

	public void setBranch(String branch) {
		this.branch = branch;
	}

	public String getSem() {
		return sem;
	}

	public void setSem(String sem) {
		this.sem = sem;
	}

	public String getMobile() {
		return mobile;
	}

	public void setMobile(String mobile) {
		this.mobile = mobile;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getStudent_pic() {
		return student_pic;
	}

	public void setStudent_pic(String student_pic) {
		this.student_pic = student_pic;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public int getOtp() {
		return otp;
	}

	public void setOtp(int otp) {
		this.otp = otp;
	}

	@Override
	public String toString() {
		return "Student [student_id=" + student_id + ", fullname=" + fullname + ", address=" + address + ", branch="
				+ branch + ", sem=" + sem + ", mobile=" + mobile + ", email=" + email + ", student_pic=" + student_pic
				+ ", password=" + password + ", otp=" + otp + "]";
	}

}
