package com.example.demo.entity;

public class Placements {

	private int placement_id;
	private String company_name;
	private String job_title;
	private String job_description;
	private String job_location;
	private int salary_package;
	private String eligibility_description;
	private String interview_location;
	private String interview_datetime;

	public Placements() {
		super();
	}

	public int getPlacement_id() {
		return placement_id;
	}

	public void setPlacement_id(int placement_id) {
		this.placement_id = placement_id;
	}

	public String getCompany_name() {
		return company_name;
	}

	public void setCompany_name(String company_name) {
		this.company_name = company_name;
	}

	public String getJob_title() {
		return job_title;
	}

	public void setJob_title(String job_title) {
		this.job_title = job_title;
	}

	public String getJob_description() {
		return job_description;
	}

	public void setJob_description(String job_description) {
		this.job_description = job_description;
	}

	public String getJob_location() {
		return job_location;
	}

	public void setJob_location(String job_location) {
		this.job_location = job_location;
	}

	public int getSalary_package() {
		return salary_package;
	}

	public void setSalary_package(int salary_package) {
		this.salary_package = salary_package;
	}

	public String getEligibility_description() {
		return eligibility_description;
	}

	public void setEligibility_description(String eligibility_description) {
		this.eligibility_description = eligibility_description;
	}

	public String getInterview_location() {
		return interview_location;
	}

	public void setInterview_location(String interview_location) {
		this.interview_location = interview_location;
	}

	public String getInterview_datetime() {
		return interview_datetime;
	}

	public void setInterview_datetime(String interview_datetime) {
		this.interview_datetime = interview_datetime;
	}

	@Override
	public String toString() {
		return "Placements [placement_id=" + placement_id + ", company_name=" + company_name + ", job_title="
				+ job_title + ", job_description=" + job_description + ", job_location=" + job_location
				+ ", salary_package=" + salary_package + ", eligibility_description=" + eligibility_description
				+ ", interview_location=" + interview_location + ", interview_datetime=" + interview_datetime + "]";
	}

}
