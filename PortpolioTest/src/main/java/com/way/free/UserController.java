package com.way.free;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.way.free.UserController;
import com.way.free.UserDao;
import com.way.free.user;

@Controller
public class UserController {
	private static final Logger logger = LoggerFactory.getLogger(UserController.class);
	
	@Autowired
	private UserDao userDao;
	
	@RequestMapping(value = "/signUp.do", method = {RequestMethod.POST,RequestMethod.GET})
	public String addSignUp(Model model) {
		model.addAttribute("user", new user());
		//여기서 signUp03 페이지로 리턴할지 말지 결정 후 추가 메소드 설정
		return "signUp/signUp02";
	}
	
	@RequestMapping(value = "/add/signUp.do", method = RequestMethod.POST)
	public String addUser(@ModelAttribute user user, Model model) {
		model.addAttribute("user", user);
		userDao.create(user);
		return "signUp/signUp03";
	}
}
