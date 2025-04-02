package com.example.demo.entity;

public class Academics {

	private int academic_id;
	private String student_id;
	private String course_name;
	private int academic_year;
	private String percentage_or_gpa;
	private String course_certificate_file;

	public Academics() {
		super();
	}

	public int getAcademic_id() {
		return academic_id;
	}

	public void setAcademic_id(int academic_id) {
		this.academic_id = academic_id;
	}

	public String getStudent_id() {
		return student_id;
	}

	public void setStudent_id(String student_id) {
		this.student_id = student_id;
	}

	public String getCourse_name() {
		return course_name;
	}

	public void setCourse_name(String course_name) {
		this.course_name = course_name;
	}

	public int getAcademic_year() {
		return academic_year;
	}

	public void setAcademic_year(int academic_year) {
		this.academic_year = academic_year;
	}

	public String getPercentage_or_gpa() {
		return percentage_or_gpa;
	}

	public void setPercentage_or_gpa(String percentage_or_gpa) {
		this.percentage_or_gpa = percentage_or_gpa;
	}

	public String getCourse_certificate_file() {
		return course_certificate_file;
	}

	public void setCourse_certificate_file(String course_certificate_file) {
		this.course_certificate_file = course_certificate_file;
	}

	@Override
	public String toString() {
		return "Academics [academic_id=" + academic_id + ", student_id=" + student_id + ", course_name=" + course_name
				+ ", academic_year=" + academic_year + ", percentage_or_gpa=" + percentage_or_gpa
				+ ", course_certificate_file=" + course_certificate_file + "]";
	}

}
