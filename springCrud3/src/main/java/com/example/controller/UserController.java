package com.example.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.example.model.UserModel;
import com.example.repository.UserRepository;

@Controller
public class UserController {
	
	@Autowired
	UserRepository userRepository;
	
	
	@GetMapping("/")
	public ModelAndView Index() {
		return new ModelAndView("index");
	}
	
	@GetMapping("/login")
	public ModelAndView login() {
		return new ModelAndView("login");
	}
	
	@PostMapping("/save")
	public ModelAndView save(@ModelAttribute UserModel userModel) {
		userModel = userRepository.save(userModel);
		return new ModelAndView ("index");
		
	}
	
	
	@GetMapping("/show")
	public ModelAndView show() {
		Map<String, Object> map = new HashMap<String, Object>();
		List<UserModel> users = (List<UserModel>) userRepository.findAll();
		map.put("users", users);
		return new ModelAndView("show_user", "data", map);
	}
	
	@PostMapping("/update")
	public ModelAndView update(@ModelAttribute UserModel userModel) {
		userModel = userRepository.save(userModel);
		return new ModelAndView("edit_user");
	}
	
	
	@GetMapping("/edit/{id}")
	public ModelAndView edit(@PathVariable(value = "id") long id) {
		Map<String, Object> map = new HashMap<String, Object>();
		UserModel  user = userRepository.findById(id).get();
		map.put("user", user);
		return new ModelAndView("edit_user", "data", map);
		
	}
	
	@GetMapping("/delete/{id}")
	public ModelAndView delete(@PathVariable(value = "id") long id) {
		
		try {
			UserModel  user = userRepository.findById(id).get();
			userRepository.delete(user);
			
		} catch (Exception e) {
			// TODO: handle exception
		}
		
		return new ModelAndView("redirect:/show");
		
	}
	
	@PostMapping("/loginSubmit")
	public ModelAndView loginsubmit(ServletRequest req) {
		String user = req.getParameter("username");
		String pass = req.getParameter("password");
		
		UserModel u = this.userRepository.findByUsername(user);
		UserModel p = this.userRepository.findByPassword(pass);
		System.out.println("user "+u + "Password "+p);
		
		if(u.getUsername().equals(user) && p.getPassword().equals(pass)) {
			return new ModelAndView("redirect:/show");
		}else {
			return new ModelAndView("redirect:/login");
			
		}
		
		
		
		
		
	}
	
	
	
	
	
	

}
