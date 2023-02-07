package com.spring.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import com.spring.Dao.DBConnection;
import com.spring.Entity.*;
import com.spring.Service.Services;

import jakarta.servlet.http.HttpServletRequest;

// Main Controller
@Controller
public class MainController {
	
	Services service = new Services();
	DBConnection db = new DBConnection();

// for All Data
	@RequestMapping("/")
	public String Index(Model model) {
		model.addAttribute("list",service.getAll());
		return "index";
	}
	
// For the New User Page
	@RequestMapping("new")
	public String NewUser() {
		return "UserForm";
	}
// For Save the Record
	@RequestMapping(path="save",method=RequestMethod.POST)
	public String Save(HttpServletRequest request) {
		Users u = new Users();
		UsersAccess uc = new UsersAccess();
		u.setName(request.getParameter("name"));
		u.setAge(request.getParameter("age"));
		u.setSex(request.getParameter("sex"));
		u.setContact(request.getParameter("contact"));
		u.setMail(request.getParameter("mail"));
		uc.setPwsd(request.getParameter("pswd"));
		service.SaveRecord(u,uc);
		return "redirect:/";
	}
	

// For the Update Form
	@RequestMapping(path="edit", method=RequestMethod.GET)
	public String UpdateForm(Model model,@RequestParam String id) {
		model.addAttribute("list",service.FindById(id));
		return "Update";
	}

// For the Update the Record
	@RequestMapping(path="update",method=RequestMethod.POST)
	public String UpdateUsers(HttpServletRequest request) {
		UsersTotal u = new UsersTotal();
		u.setUserid(Integer.parseInt(request.getParameter("userid")));
		u.setName(request.getParameter("name"));
		u.setAge(request.getParameter("age"));
		u.setSex(request.getParameter("sex"));
		u.setContact(request.getParameter("contact"));
		u.setMail(request.getParameter("mail"));
		u.setPwsd(request.getParameter("pswd"));
		u.setUserstatus(request.getParameter("status"));
		service.updateRecord(u);
		return "redirect:/";
	}
	
// For the Delete the Record	
	@RequestMapping(path="delete", method=RequestMethod.GET)
	public String DeleteUser(Model model,@RequestParam String id) {
		System.out.println(id);
		service.DeleteRecord(Integer.parseInt(id));
		return "redirect:/";
	}

// For Search By Id Form
	@RequestMapping("search")
	public String Search() {
		return "Search";
	}

	// For Search By Id Form
		@RequestMapping(path="searchdata", method=RequestMethod.POST)
		public String Search2(Model model,HttpServletRequest request) {
			String id = request.getParameter("userid");
			model.addAttribute("list",service.FindById(id));
			return "SearchId";
		}
		
// For Search By Field Form
		@RequestMapping("search2")
		public String Search2() {
			return "Field";
		}
// For Search By Field Form
		@RequestMapping(path="data", method=RequestMethod.POST)
		public String Data(Model model,HttpServletRequest request) {
			String f = request.getParameter("var");
			String v = request.getParameter("val");
			System.out.println(f+" "+v);
			model.addAttribute("list", service.FindByField(f, v));
			return "Data";
		}
		
// For return index page
		@RequestMapping("home")
		public String Back() {
			return "redirect:/";
		}
}
