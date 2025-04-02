package com.example.demo.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import com.example.demo.entity.Admin;
import com.example.demo.entity.Student;

@Repository
public class AdminDao {

	@Autowired
	private JdbcTemplate template;

	// crud operations
	// validate admin
	public Admin validateAdmin(Admin admin) {
		try {
			String query = "select * from admin where username=? and password=?";
			return template.queryForObject(query, new RowMapper<Admin>() {

				@Override
				public Admin mapRow(ResultSet rs, int rowNum) throws SQLException {
					// TODO Auto-generated method stub
					Admin admin = new Admin();
					admin.setUsername(rs.getString("username"));
					admin.setPassword(rs.getString("password"));
					return admin;
				}

			}, admin.getUsername(), admin.getPassword());
		} catch (Exception e) {
			System.err.println("Error while validating admin: " + e.getMessage());
			e.printStackTrace();
			return null;
		}
	}

	public int register(Student student) {
		int status = 0;
		try {
			String query = "insert into student values(?,?,?,?,?,?,?,?,?)";
			status = template.update(query, student.getStudent_id(), student.getFullname(), student.getAddress(),
					student.getBranch(), student.getSem(), student.getMobile(), student.getEmail(),
					student.getStudent_pic(), student.getPassword());
		} catch (Exception e) {
			status = 0;
			e.getMessage();
		}
		return status;
	}

	public String generatePassword() {
		int password = (int) (Math.random() * 900000) + 100000; // Generates a number between 100000 and 999999
		return String.valueOf(password);
	}

	// Deleting the student Records
	public int deleteStudent(String student_id) {
		String query = "delete from student where student_id=?";
		return template.update(query, student_id);
	}

	// Admin updating student records
	public int updateStudentDetails(Student s) {
		String query = "update student set fullname=?,address=?,branch=?,sem=?,mobile=?,email=?,student_pic=? where student_id =?";
		return template.update(query, s.getFullname(), s.getAddress(), s.getBranch(), s.getSem(), s.getMobile(),
				s.getEmail(), s.getStudent_pic(), s.getStudent_id());
	}

	// admin searching students
	public List<Student> searchStudents(String search) {
		String sql = "SELECT * FROM student WHERE student_id LIKE ? OR fullname LIKE ?";

		return template.query(sql, new RowMapper<Student>() {
			@Override
			public Student mapRow(ResultSet rs, int rowNum) throws SQLException {
				Student student = new Student();
				student.setStudent_id(rs.getString("student_id"));
				student.setFullname(rs.getString("fullname"));
				student.setEmail(rs.getString("email"));
				student.setMobile(rs.getString("mobile"));
				student.setBranch(rs.getString("branch"));
				student.setSem(rs.getString("sem"));
				student.setAddress(rs.getString("address"));
				student.setStudent_pic(rs.getString("student_pic"));
				return student;
			}
		}, "%" + search + "%", "%" + search + "%");
	}

}
