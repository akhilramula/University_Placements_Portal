package com.example.demo.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.demo.entity.Placements;
import com.example.demo.entity.Student;

@Repository
public class StudentDao {

	@Autowired
	private JdbcTemplate template;

	// CRUD operations

	public Student validateStudent(Student student) {
		String query = "select email,password from student where email=? and password=?";
		return template.queryForObject(query, new RowMapper<Student>() {

			@Override
			public Student mapRow(ResultSet rs, int rowNum) throws SQLException {
				// TODO Auto-generated method stub
				Student student = new Student();
				student.setEmail(rs.getString("email"));
				student.setPassword(rs.getString("password"));
				return student;
			}

		}, student.getEmail(), student.getPassword());
	}

	public Student getStudentByEmail(Student student, String email) {
		String query = "select * from student where email=?";
		return template.queryForObject(query, new RowMapper<Student>() {

			@Override
			public Student mapRow(ResultSet rs, int rowNum) throws SQLException {
				// TODO Auto-generated method stub
				Student student = new Student();
				student.setStudent_id(rs.getString("student_id"));
				student.setFullname(rs.getString("fullname"));
				student.setAddress(rs.getString("address"));
				student.setBranch(rs.getString("branch"));
				student.setEmail(rs.getString("email"));
				student.setMobile(rs.getString("mobile"));
				student.setPassword(rs.getString("password"));
				student.setStudent_pic(rs.getString("student_pic"));
				student.setSem(rs.getString("sem"));
				return student;
			}

		}, email);
	}

	public int updateProfile(int student_id, Student student) {

		String query = "update student set fullname=?,address=?,branch=?,email=?,mobile=?,password=?,sem=? where student_id=?";
		int status = template.update(query, student.getFullname(), student.getAddress(), student.getBranch(),
				student.getEmail(), student.getMobile(), student.getPassword(), student.getSem(), student_id);
		return status;
	}

	public int updateProfilePic(int student_id, Student student) {
		int status = 0;
		try {
			String query = "update student set student_pic=? where student_id=?";
			status = template.update(query, student.getStudent_pic(), student_id);
		} catch (Exception e) {
			status = 0;
			e.printStackTrace();
		}
		return status;
	}

	public List<Student> getAllStudents() {
		String query = "select * from student";
		return template.query(query, new RowMapper<Student>() {

			@Override
			public Student mapRow(ResultSet rs, int rowNum) throws SQLException {
				Student s = new Student();
				s.setStudent_id(rs.getString("student_id"));
				s.setFullname(rs.getString("fullname"));
				s.setAddress(rs.getString("address"));
				s.setBranch(rs.getString("branch"));
				s.setSem(rs.getString("sem"));
				s.setMobile(rs.getString("mobile"));
				s.setEmail(rs.getString("email"));
				s.setStudent_pic(rs.getString("student_pic"));
				s.setPassword(rs.getString("password"));
				return s;
			}
		});
	}

	// student view placements
	public List<Placements> getAllPlacements() {
		String query = "select * from placements";
		return template.query(query, new RowMapper<Placements>() {

			@Override
			public Placements mapRow(ResultSet rs, int rowNum) throws SQLException {
				Placements p = new Placements();
				p.setPlacement_id(rs.getInt("placement_id"));
				p.setCompany_name(rs.getString("company_name"));
				p.setJob_title(rs.getString("job_title"));
				p.setJob_description(rs.getString("job_description"));
				p.setJob_location(rs.getString("job_location"));
				p.setSalary_package(rs.getInt("salary_package"));
				p.setEligibility_description(rs.getString("eligibility_description"));
				p.setInterview_location(rs.getString("interview_location"));
				p.setInterview_datetime(rs.getString("interview_datetime"));
				return p;
			}

		});
	}

	// getting students based on ID
	public Student getStudentById(String student_id) {
		String query = "select * from student where student_id=?";
		return template.queryForObject(query, new RowMapper<Student>() {

			@Override
			public Student mapRow(ResultSet rs, int rowNum) throws SQLException {
				Student s = new Student();
				s.setStudent_id(rs.getString("student_id"));
				s.setFullname(rs.getString("fullname"));
				s.setAddress(rs.getString("address"));
				s.setBranch(rs.getString("branch"));
				s.setSem(rs.getString("sem"));
				s.setMobile(rs.getString("mobile"));
				s.setEmail(rs.getString("email"));
				s.setStudent_pic(rs.getString("student_pic"));
				s.setPassword(rs.getString("password"));
				return s;
			}

		}, student_id);
	}
	
	
	

}
