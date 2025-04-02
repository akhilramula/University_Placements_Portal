package com.example.demo.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import com.example.demo.entity.Applications;

@Repository
public class ApplicationsDao {

	@Autowired
	private JdbcTemplate template;

	public int applyForJob(Applications applications, int placement_id, String student_id) {
		String query = "insert into applications(apply_date,placement_id,student_id,application_status) values(?,?,?,?)";
		return template.update(query, applications.getApply_date(), placement_id, student_id,
				applications.getApplication_status());
	}

	public List<Applications> getApplicationsById(String student_id) {
		String query = "select * from applications where student_id=?";
		return template.query(query, new RowMapper<Applications>() {

			@Override
			public Applications mapRow(ResultSet rs, int rowNum) throws SQLException {
				Applications a = new Applications();
				a.setApplication_id(rs.getInt("application_id"));
				a.setApply_date(rs.getString("apply_date"));
				a.setPlacement_id(rs.getInt("placement_id"));
				a.setStudent_id(rs.getString("student_id"));
				a.setApplication_status(rs.getString("application_status"));
				return a;
			}

		}, student_id);
	}

	public List<Applications> getAllApplications() {
		String query = "SELECT * from applications";
		return template.query(query, new RowMapper<Applications>() {

			@Override
			public Applications mapRow(ResultSet rs, int rowNum) throws SQLException {
				Applications a = new Applications();
				a.setApplication_id(rs.getInt("application_id"));
				a.setApply_date(rs.getString("apply_date"));
				a.setPlacement_id(rs.getInt("placement_id"));
				a.setStudent_id(rs.getString("student_id"));
				a.setApplication_status(rs.getString("application_status"));
				return a;
			}

		});
	}

	// admin approving or rejecting applications
	public int updateApplicationStatus(int application_id, Applications applications) {
		String query = "update applications set application_status=? where application_id =?";
		return template.update(query, applications.getApplication_status(), application_id);
	}

}
