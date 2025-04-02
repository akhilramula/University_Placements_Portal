package com.example.demo.controller;

import java.io.File;
import java.io.IOException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.example.demo.dao.StudentDao;
import com.example.demo.entity.Placements;
import com.example.demo.entity.Student;
import com.example.demo.mail.SendMail;

import jakarta.servlet.http.HttpSession;

@Controller
public class StudentController {

	@Autowired
	private StudentDao dao;

	// controller methods
	@GetMapping("/studentlogin")
	public String studentLogin() {
		return "student/studentlogin";
	}

	@PostMapping("/validateStudent")
	public String validateStudent(@ModelAttribute Student student, Model model, HttpSession session) {

		Student student1 = dao.validateStudent(student);
		if (student1 != null) {
			model.addAttribute("student", student1);
			// getting students details here for profile and view_academics
			Student student2 = dao.getStudentByEmail(student, student.getEmail());
			session.setAttribute("student", student2);
			return "student/studenthome";
		} else {
			model.addAttribute("message", "Invalid Username/Password");
			return "student/stuentlogin";
		}
	}

	@GetMapping("/profile")
	public String profile(HttpSession session, Model model) {
		// Retrieve the student object from the session
		Student student = (Student) session.getAttribute("student");

		// Check if the student is null
		if (student == null) {
			model.addAttribute("message", "No student data found in session. Please log in again.");
			return "student/studentlogin"; // Redirect to login if session data is missing
		}

		// Add the student object to the model
		model.addAttribute("student", student);
		return "student/studentprofile"; // Return the profile JSP
	}

	@GetMapping("/studenthome")
	public String studentHome() {
		return "student/studenthome";
	}

	@GetMapping("/uploadStudentPic")
	public String updateStudentPage(HttpSession session, Model model) {
		Student student = (Student) session.getAttribute("student");
		model.addAttribute("student", student);
		return "student/updatestudentpic";
	}

	@PostMapping("/updateProfile")
	public String updateProfile(@ModelAttribute Student student, Model model,
			@RequestParam("student_id") int student_id) {
		int status = dao.updateProfile(student_id, student);
		if (status > 0) {
			model.addAttribute("message", "Records updated successfully");
			return "student/studentprofile";
		} else {
			model.addAttribute("message", "Records not updated");
			return "student/studentprofile";
		}
	}

	@PostMapping("/updateStudentPic")
	public String updateStudentPic(@RequestParam("student_id") int student_id,
			@RequestParam("student_pic") MultipartFile file, HttpSession session, Model model) {
		Student student = new Student();
		try {
			//
			String path = session.getServletContext().getRealPath("/");
			System.out.println("path=" + path);

			// Define the directory where you want to store the uploaded files
			// String UPLOAD_DIR = path + "/uploads/";
			String UPLOAD_DIR = path + "uploads/";

			// Get the original file name
			String fileName = file.getOriginalFilename();

			// Create the upload directory if it doesn't exist
			File uploadDir = new File(UPLOAD_DIR);
			if (!uploadDir.exists()) {
				uploadDir.mkdirs();
			}

			// Save the file to the server
			File uploadedFile = new File(uploadDir, fileName);
			file.transferTo(uploadedFile);

			// Set the student picture path in the student object
			student.setStudent_pic(fileName);

		} catch (IOException e) {
			System.out.println("Error:" + e);
		}

		int status = dao.updateProfilePic(student_id, student);
		if (status > 0) {
			model.addAttribute("message", "pic updated successfully");
			return "student/studentprofile";
		} else {
			model.addAttribute("message", "pic not updated");
			return "student/studentprofile";
		}
	}
	
	@GetMapping("/viewStudents")
	public String viewStudents(Model model) {
		List<Student> list=dao.getAllStudents();
		if (list!=null) {
			model.addAttribute("students",list);
			return "admin/view_students";
		} else {
			return "admin/adminhome";
		}
		
	}
	
	@GetMapping("/viewJobs")
	public String viewPlacements(Model model) {
		List<Placements> list=dao.getAllPlacements();
		model.addAttribute("placements",list);
		return "student/view_placements";
	}
	

	
	
	
	
}
