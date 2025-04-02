package com.example.demo.entity;

public class Applications {

	private int application_id;
	private String apply_date;
	private int placement_id;
	private String student_id;
	private String application_status;

	public Applications() {
		super();
	}

	public int getApplication_id() {
		return application_id;
	}

	public void setApplication_id(int application_id) {
		this.application_id = application_id;
	}

	public String getApply_date() {
		return apply_date;
	}

	public void setApply_date(String apply_date) {
		this.apply_date = apply_date;
	}

	public int getPlacement_id() {
		return placement_id;
	}

	public void setPlacement_id(int placement_id) {
		this.placement_id = placement_id;
	}

	public String getStudent_id() {
		return student_id;
	}

	public void setStudent_id(String student_id) {
		this.student_id = student_id;
	}

	public String getApplication_status() {
		return application_status;
	}

	public void setApplication_status(String application_status) {
		this.application_status = application_status;
	}

	@Override
	public String toString() {
		return "Applications [application_id=" + application_id + ", apply_date=" + apply_date + ", placement_id="
				+ placement_id + ", student_id=" + student_id + ", application_status=" + application_status + "]";
	}

}
