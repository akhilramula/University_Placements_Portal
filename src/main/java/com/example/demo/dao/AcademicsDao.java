package com.example.demo.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import com.example.demo.entity.Academics;
import com.example.demo.entity.Student;

@Repository
public class AcademicsDao {

	@Autowired
	JdbcTemplate template;

	// crude operations
	public int saveAcademics(Academics academics) {
		int status = 0;
		try {
			String query = "insert into academics(student_id,course_name,academic_year,percentage_or_gpa,course_certificate_file) values(?,?,?,?,?)";
			status = template.update(query, academics.getStudent_id(), academics.getCourse_name(),
					academics.getAcademic_year(), academics.getPercentage_or_gpa(),
					academics.getCourse_certificate_file());
		} catch (Exception e) {
			status = 0;
			e.printStackTrace();
		}
		return status;
	}

	public List<Academics> getAcademicsById(Student student) {
		String query = "select * from academics where student_id=?";
		return template.query(query, new RowMapper<Academics>() {

			@Override
			public Academics mapRow(ResultSet rs, int rowNum) throws SQLException {
				// TODO Auto-generated method stub
				Academics academics = new Academics();
				academics.setAcademic_id(rs.getInt("academic_id"));
				academics.setStudent_id(rs.getString("student_id"));
				academics.setCourse_name(rs.getString("course_name"));
				academics.setAcademic_year(rs.getInt("academic_year"));
				academics.setPercentage_or_gpa(rs.getString("percentage_or_gpa"));
				academics.setCourse_certificate_file(rs.getString("course_certificate_file"));
				return academics;
			}

		}, student.getStudent_id());
	}

	public int delete_academic(int academic_id) {
		String query = "delete from academics where academic_id=?";
		return template.update(query, academic_id);
	}

	public int updateAcademicRecord(Academics academics) {
		String query = "update academics set student_id=?,course_name=?,academic_year=?,percentage_or_gpa=?,course_certificate_file=? where academic_id=?";
		return template.update(query, academics.getStudent_id(), academics.getCourse_name(),
				academics.getAcademic_year(), academics.getPercentage_or_gpa(), academics.getCourse_certificate_file(),
				academics.getAcademic_id());
	}

	public Academics getAcademicsByAcademicId(int academic_id) {
		String query = "select * from academics where academic_id=?";
		return template.queryForObject(query, new RowMapper<Academics>() {

			@Override
			public Academics mapRow(ResultSet rs, int rowNum) throws SQLException {
				// TODO Auto-generated method stub
				Academics academics = new Academics();
				academics.setAcademic_id(rs.getInt("academic_id"));
				academics.setStudent_id(rs.getString("student_id"));
				academics.setCourse_name(rs.getString("course_name"));
				academics.setAcademic_year(rs.getInt("academic_year"));
				academics.setPercentage_or_gpa(rs.getString("percentage_or_gpa"));
				academics.setCourse_certificate_file(rs.getString("course_certificate_file"));
				return academics;
			}

		}, academic_id);
	}

}
