package com.example.demo.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.demo.dao.PlacementsDao;
import com.example.demo.entity.Placements;

import jakarta.servlet.http.HttpSession;

@Controller
public class PlacementsController {

	@Autowired
	private PlacementsDao dao;

	// CONNTROLLER METHODS
	@GetMapping("/postPlacement")
	public String postPlacement() {
		return "admin/add_placements";
	}

	// Admin adding placements
	@PostMapping("/savePlacements")
	public String savePlacements(@ModelAttribute Placements placements, Model model) {
		int status = dao.savePlacements(placements);
		return status > 0 ? "redirect:/viewPlacements" : "/postPlacement";
	}

	// admin viewing placements
	@GetMapping("/viewPlacements")
	public String viewPlacements(Model model) {
		List<Placements> placements = dao.getAllPlacements();
		if (placements != null) {
			model.addAttribute("placements", placements);
			return "admin/view_placements";
		} else {
			return "admin/adminhome";
		}

	}

	// Admin deleting placements
	@GetMapping("/deletePlacements/{placement_id}")
	public String deletePlacements(@PathVariable int placement_id, Model model) {
		int status = dao.deletePlacements(placement_id);
		if (status > 0) {
			return "redirect:/viewPlacements";
		} else {
			model.addAttribute("Error", "Failed to delete placement record");
			return "redirect:/viewPlacements";
		}
	}

	// opening edit page
	@GetMapping("/editPlacementsPage")
	public String editPage(@RequestParam("placement_id") int placement_id, Model model) {
		Placements placement = dao.getPlacementsById(placement_id);
		if (placement != null) {
			model.addAttribute("placement", placement);
			System.out.println(placement);
			return "admin/edit_placements";
		} else {
			return "viewPlacements";
		}

	}

	// Admin editing placements
	@PostMapping("/updatePlacements")
	public String editPlacements(Model model, @ModelAttribute Placements placements) {
		int status = dao.updatePlacements(placements);
		System.out.println(status);
		if (status > 0) {
			return "redirect:/viewPlacements";
		} else {
			model.addAttribute("Editing error", "Records not found");
			return "admin/edit_placements";
		}
	}
}
