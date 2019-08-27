package com.way.free;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
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
	public String SignUp(Model model) {
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
	
	@RequestMapping(value = "/userInfo01.do", method ={RequestMethod.POST,RequestMethod.GET})
	public String getUser(Model model,
			@RequestParam(value = "id", required = false, defaultValue = "null") String id) {
		model.addAttribute("user", userDao.select(id));
		return "userInfo/userInfo01";
	}
	
	//userdao.getuser 메소드 수정하기!!!!!
	@RequestMapping(value="/login.do", method={RequestMethod.POST,RequestMethod.GET})
	public String login(user user, UserDao userDao) {
		if (userDao.getUser(user) != null) {
			return "userInfo/userInfo01";
		} else {
			return "login/login";
		}
	}
	
	//닉네임 변경페이지  이동 요청
	@RequestMapping(value = "/move_updateNick.do", method = {RequestMethod.POST,RequestMethod.GET})
	public String moveUpdate(Model model, @RequestParam(value = "id", required = true) String id) {
		model.addAttribute("user", userDao.select(id));
		return "userInfo/userInfo01";
	}
	
	
	//닉네임 변경 요청 오류 잡을것!!!!!!!!
	@RequestMapping(value = "/update_userNick.do", method = {RequestMethod.POST,RequestMethod.GET})
	public String updateNick(@ModelAttribute user user,Model model, @RequestParam(value = "id", required = true) String id) {
		model.addAttribute("user", userDao.select(id));
		userDao.updateNick(user);
		return "redirect:/move_updateNick.do?id="+user.getId();
	}
	
}
