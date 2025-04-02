package com.example.demo.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import com.example.demo.entity.Placements;

@Repository
public class PlacementsDao {

	@Autowired
	private JdbcTemplate template;

	// CRUD OPERATIONS

	public int savePlacements(Placements p) {
		int status = 0;
		try {
			String query = "insert into placements(company_name,job_title,job_description,job_location,salary_package,eligibility_description,interview_location,interview_datetime) values(?,?,?,?,?,?,?,?)";
			status = template.update(query, p.getCompany_name(), p.getJob_title(), p.getJob_description(),
					p.getJob_location(), p.getSalary_package(), p.getEligibility_description(),
					p.getInterview_location(), p.getInterview_datetime());
			return status;
		} catch (Exception e) {
			status = 0;
			e.printStackTrace();
			return status;
		}
	}

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

	public int deletePlacements(int placement_id) {
		String query = "delete from placements where placement_id=?";
		return template.update(query, placement_id);
	}

	public int updatePlacements(Placements placements) {
		String query = "update placements set company_name=?,job_title=?,job_description=?,job_location=?,salary_package=?,eligibility_description=?,interview_location=?,interview_datetime=? where placement_id=?";
		return template.update(query, placements.getCompany_name(), placements.getJob_title(),
				placements.getJob_description(), placements.getJob_location(), placements.getSalary_package(),
				placements.getEligibility_description(), placements.getInterview_location(),
				placements.getInterview_datetime(), placements.getPlacement_id());
	}

	public Placements getPlacementsById(int placement_id) {
		String query = "SELECT * FROM placements WHERE placement_id = ?";
		return template.queryForObject(query, new RowMapper<Placements>() {

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

		},placement_id);
	}

}
