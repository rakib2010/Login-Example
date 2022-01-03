package com.example.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
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
	
	@GetMapping("/create")
	public ModelAndView create() {
		return new ModelAndView("create_user");
	}

	@GetMapping("/show")
	public ModelAndView showPage() {

		Map<String, Object> map = new HashMap<String, Object>();
		List<UserModel> user = (List<UserModel>) userRepository.findAll();
		map.put("users", user);
		return new ModelAndView("show_user","data", map);
	}

	@PostMapping("/loginSubmit")
	public ModelAndView loginsubmit(ServletRequest req) {
		String user = req.getParameter("username");
		String pass = req.getParameter("password");

		UserModel u = this.userRepository.findByUsername(user);
	 

		if (u != null) {
			if (u.getUsername().equals(user) && u.getPassword().equals(pass)) {
				return new ModelAndView("redirect:/show");
			}

		} else {
			return new ModelAndView("index");

		}

		return new ModelAndView("index");

	}

	@GetMapping("/user_search")
	public ModelAndView search(@RequestParam(value = "searchText", required = false) String searchText) {
		Map<String, Object> map = new HashMap<String, Object>();
		List<UserModel> user = userRepository.searchUser(searchText);
		map.put("users", user);
		return new ModelAndView("show_user", "data", map);
	}
	
	@PostMapping("/save")
	public ModelAndView save(@ModelAttribute UserModel userModel) {
		Map<String, Object> map = new HashMap<String, Object>();
		UserModel  user = userRepository.save(userModel);
		map.put("users", user);
		return new ModelAndView("redirect:/create");
	
		
	}
	
	
	

}
