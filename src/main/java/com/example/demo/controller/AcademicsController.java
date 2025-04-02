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

import com.example.demo.dao.AcademicsDao;
import com.example.demo.entity.Academics;
import com.example.demo.entity.Student;

import jakarta.servlet.http.HttpSession;

@Controller
public class AcademicsController {

	@Autowired
	private AcademicsDao dao;

	// controller methods

	@GetMapping("/addAcademics")
	public String addAcademics() {
		return "student/add_academics";
	}

	@PostMapping("/saveAcademics")
	public String saveAcademics(@ModelAttribute Academics academics,
			@RequestParam("courseCertificate") MultipartFile file, Model model, HttpSession session) {
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
			academics.setCourse_certificate_file(fileName);

		} catch (IOException e) {
			System.out.println("Error:" + e);
		}
		int status = dao.saveAcademics(academics);

		if (status > 0) {
			model.addAttribute("academics", academics);
			return "student/add_academics";
		} else {
			model.addAttribute("message", "records not added");
			return "student/add_academics";
		}
	}

	@GetMapping("/viewAcademics")
	public String viewAcademics(HttpSession session, Model model) {
		Student student = (Student) session.getAttribute("student");
		if (student == null) {
			model.addAttribute("message", "No student data found in session. Please log in again.");
			return "student/studentlogin";
		}
		List<Academics> list = dao.getAcademicsById(student);
		model.addAttribute("academics", list);
		return "student/view_academics";
	}

	// Student deleting his academic records
	@GetMapping("/delete_academic")
	public String delete_academic(@RequestParam("id") int academic_id) {
		int status = dao.delete_academic(academic_id);
		if (status > 0) {
			return "redirect:/viewAcademics";
		} else {
			return "/viewAcademics?status=" + status;
		}
	}

	// Student viewing edit academics form
	@GetMapping("/editAcademicsForm")
	public String editAcademicsForm(Model model, @RequestParam("id") int academic_id) {
		Academics academics = dao.getAcademicsByAcademicId(academic_id);
		if (academics != null) {
			model.addAttribute("academics", academics);
			return "student/edit_academics";
		} else {
			return "student/view_academics";
		}
	}

	// Student editing his academic records
	@PostMapping("/updateAcademicRecord")
	public String updateAcademicRecord(@RequestParam("certificate_pic") MultipartFile file,
			@ModelAttribute Academics academics, HttpSession session) {
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
			academics.setCourse_certificate_file(fileName);

		} catch (IOException e) {
			System.out.println("Error:" + e);
		}
		
		int status = dao.updateAcademicRecord(academics);
		if (status > 0) {
			return "redirect:/viewAcademics";
		} else {
			return "/viewAcademics?status=" + status;
		}

	}

}
