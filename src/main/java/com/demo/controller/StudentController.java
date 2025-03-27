package com.demo.controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.demo.entity.Student;
import com.demo.repo.StudentRepo;


@Controller
public class StudentController {
	
	@Autowired StudentRepo studentRepo;
	
	@GetMapping("/AddStudent")
	public String add() {
		return "AddStudent";
	}
//***************************************************************************************
//Save Student
	@PostMapping("/saveStudent")
	public String saveStudent(@ModelAttribute  Student student) {
		studentRepo.save(student);
		return "redirect:/StudentList";
	}
//***************************************************************************************	
//Get all Student
	@GetMapping("/StudentList")
	public String studentList(Model model) {
		List<Student> list = (List<Student>) studentRepo.findAll();
		model.addAttribute("result", list);
		return "StudentList";
	}
//***************************************************************************************
//load Student form from Database for Edit
	@GetMapping("/editStudent/{rollNo}")
	public String editStudent(@PathVariable Integer rollNo,  Model m) {
		Student updatestudent = studentRepo.findById(rollNo).get();
		m.addAttribute("newStudent", updatestudent);
		return "EditStudent";
	}
	 
//Update Student
	@PostMapping("/editStudent/updateStudent")
	public String UpdateStudent(@ModelAttribute  Student student) {
		studentRepo.save(student);
		return "redirect:/StudentList";
	}
//***************************************************************************************	
//Delete  Student 
	@GetMapping("/deleteStudent/{rollNo}")
	public String deleteVillage(@PathVariable Integer rollNo) {
		studentRepo.deleteById(rollNo);
		return "redirect:/StudentList";
	}
}
