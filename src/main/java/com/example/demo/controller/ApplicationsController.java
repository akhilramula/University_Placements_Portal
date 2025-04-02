package com.example.demo.controller;

import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;

import com.example.demo.dao.ApplicationsDao;
import com.example.demo.dao.PlacementsDao;
import com.example.demo.dao.StudentDao;
import com.example.demo.entity.Applications;
import com.example.demo.entity.Placements;
import com.example.demo.entity.Student;
import com.example.demo.mail.SendMail;

import jakarta.servlet.http.HttpSession;

import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class ApplicationsController {

	@Autowired
	private ApplicationsDao appdao;

	@Autowired
	private PlacementsDao pdao;

	@Autowired
	private StudentDao sdao;

	// admin view applications of ALL students
	@GetMapping("/showApplications")
	public String showApplications(Model model) {
		List<Applications> applicationList = appdao.getAllApplications();
		if (applicationList != null) {
			model.addAttribute("applications", applicationList);
			return "admin/applications";
		}
		return "admin/applications";
	}

	// user viewing his submitted applications
	@GetMapping("/showApplicationPage")
	public String showApplicationPage(HttpSession session, Model model) {
		Student student = (Student) session.getAttribute("student");
		List<Applications> applicationList = appdao.getApplicationsById(student.getStudent_id());
		model.addAttribute("applications", applicationList);
		return "student/view_applications";
	}

	// Student applying for jobs(Placements)
	@GetMapping("/applyForJob")
	public String applyForJob(@RequestParam("placement_id") int placement_id, HttpSession session) {
		Student student = (Student) session.getAttribute("student");
		if (student == null) {
			return "/studentlogin";
		}

		Placements placements = pdao.getPlacementsById(placement_id);
		System.out.println(placements);

		LocalDate date = LocalDate.now();
		DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");
		String formattedDate = date.format(formatter);

		Applications applications = new Applications();
		applications.setApply_date(formattedDate);
		String application_status = "application submitted";
		applications.setApplication_status(application_status);

		int status = appdao.applyForJob(applications, placements.getPlacement_id(), student.getStudent_id());
		if (status > 0) {
			return "redirect:/showApplicationPage";
		} else {
			return "student/view_placements";
		}
	}

	// Admin approving application
	@GetMapping("/approveApplication")
	public String approveApplication(@RequestParam("id") int application_id,
			@RequestParam("student_id") String student_id, Applications applications) {
		applications.setApplication_status("Application approved");
		int status = appdao.updateApplicationStatus(application_id, applications);
		if (status > 0) {
			Student student = sdao.getStudentById(student_id);
			String subject = "Congratulations! Your Application Has Been Approved";
			String msgContent = "<p>Dear " + student.getFullname() + ",</p>"
					+ "<p>We are pleased to inform you that your application with Application  ID:" + application_id
					+ " has been successfully approved. Congratulations on this achievement!</p>"
					+ "<p><strong>Next Steps:</strong><br></p>"
					+ "<p>If you have any questions or need further assistance, feel free to reach out to us any time.</p>"
					+ "<p>Once again, congratulations, and we look forward to welcoming you!</p>"
					+ "<p>Best regards,<br>University Placements Team</p>";
			SendMail mail = new SendMail();
			mail.sendMail(student.getEmail(), subject, msgContent);
			return "redirect:/showApplications?status=" + status;
		}
		return "redirect:/showApplications?status=" + status;
	}

	// Admin rejecting application
	@GetMapping("/rejectApplication")
	public String rejectApplication(@RequestParam("id") int application_id,
			@RequestParam("student_id") String student_id, Applications applications) {

		applications.setApplication_status("Application rejected");
		int status = appdao.updateApplicationStatus(application_id, applications);
		if (status > 0) {
			Student student = sdao.getStudentById(student_id);
			String subject = "Application Status Update – Not Approved";
			String msgContent = "<p>Dear " + student.getFullname() + ",</p>"
					+ "<p>We regret to inform you that your application for ID:" + application_id
					+ " has not been approved at this time.</p>"
					+ "<p>We understand this may be disappointing, but we encourage you to explore other available opportunities and apply again in the future.</p>"
					+ "<p>If you would like further clarification or assistance, please feel free to reach out to us any time.</p>"
					+ "<p>We appreciate your interest and wish you the best in your future endeavors.</p>"
					+ "<p>Best regards,<br>University Placements Team</p>";

			SendMail mail = new SendMail();
			mail.sendMail(student.getEmail(), subject, msgContent);
			return "redirect:/showApplications?status=" + status;
		}
		return "redirect:/showApplications?status=" + status;
	}

}
