package com.example.demo.controller;

import java.io.File;
import java.io.IOException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.example.demo.dao.AdminDao;
import com.example.demo.dao.StudentDao;
import com.example.demo.entity.Admin;
import com.example.demo.entity.Student;
import com.example.demo.mail.SendMail;

import jakarta.servlet.http.HttpSession;

@Controller
public class AdminController {

	@Autowired
	private AdminDao dao;

	@Autowired
	private StudentDao sdao;

	// controller methods
	@GetMapping("/index")
	public String index() {
		return "index";
	}

	@GetMapping("/about")
	public String aboutPage() {
		return "about";
	}

	@GetMapping("/contactus")
	public String contactUsPage() {
		return "contactus";
	}

	@GetMapping("/adminhome")
	public String adminHome() {
		return "admin/adminhome";
	}

	@GetMapping("/adminlogin")
	public String adminLogin() {
		return "admin/adminlogin";
	}

	@PostMapping("/validateAdmin")
	public String validateAdmin(@ModelAttribute Admin admin, Model model) {
		Admin admin1 = dao.validateAdmin(admin);
		if (admin1 != null) {
			return "admin/adminhome"; // Navigate to admin home page
		} else {
			model.addAttribute("error", "Invalid username or password"); // Add an error message to the model
			return "admin/adminlogin"; // Return the login page with an error message
		}
	}

	//////////////// student registration//////////////////////////
	@GetMapping("/addStudent")
	public String registerPage() {
		return "admin/studentregistration";
	}

	@PostMapping("/saveStudent")
	public String registerStudent(@ModelAttribute Student student, @RequestParam("profilePic") MultipartFile file,
			Model model, HttpSession session) {
		try {

			// Handle file upload
			String path = session.getServletContext().getRealPath("/");
			System.out.println("path=" + path);

			// Define the upload directory
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

			// Set the student picture path
			student.setStudent_pic(fileName);

		} catch (IOException e) {
			System.out.println("Error:" + e);
		}

		String password = dao.generatePassword();
		student.setPassword(password);
		int status = dao.register(student);

		// sending mail to student
		String subject = "Student Registration";
		String msgContent = "<html>" + "    <body>" + "        <h1>Welcome to the University Placements Portal!</h1>"
				+ "        <p>Dear Student,</p>"
				+ "        <p>We are excited to have you on board. Here are your login details:</p>" + "        <ul>"
				+ "            <li><strong>Password:</strong> " + password + "</li>" + "        </ul>"
				+ "        <p>Please make sure to keep this information secure and do not share it with anyone.</p>"
				+ "        <br>" + "        <p>Thank you,</p>"
				+ "        <p><strong>University Placements Team</strong></p>" + "    </body>" + "</html>";
		SendMail mail = new SendMail();
		mail.sendMail(student.getEmail(), subject, msgContent);

		// Check if the registration was successful
		if (status > 0) {
			model.addAttribute("message", "Registered successfully");
			return "admin/studentregistration";
		} else {
			model.addAttribute("message", "Registration failed");
			return "admin/studentregistration";
		}
	}

	// Admin deleting student record
	@GetMapping("/deleteStudent")
	public String deleteStudent(@RequestParam("id") String student_id) {
		int status = dao.deleteStudent(student_id);
		if (status > 0) {
			return "redirect:/viewStudents"; // /viewStudents is in StudentController
		} else {
			return "/viewStudents?status=" + status;
		}
	}

	// Admin getting a edit student form
	@GetMapping("/editStudent")
	public String editStudent(@RequestParam("id") String student_id, Model model) {
		Student student = sdao.getStudentById(student_id);
		if (student != null) {
			model.addAttribute("student", student);
			return "admin/edit_students";
		} else {
			return "admin/view_tudents";
		}
	}

	// admin editing the student records
	@PostMapping("/updateStudentDetails")
	public String updateStudentDetails(@ModelAttribute Student student, HttpSession session,
			@RequestParam("profile_pic") MultipartFile file) {
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

		int status = dao.updateStudentDetails(student);
		if (status > 0) {
			return "redirect:/viewStudents";
		} else {
			return "/viewStudents?status=" + status;
		}

	}
	
	// admin searching for students (Searc Bar Feature)
	@GetMapping("/searchStudent")
    public String searchStudent(@RequestParam(name = "search", required = false) String search, Model model) {
        List<Student> students = dao.searchStudents(search);
        model.addAttribute("students", students);
        return "admin/view_students"; // Redirects to studentList.jsp
    }
	
	

}
