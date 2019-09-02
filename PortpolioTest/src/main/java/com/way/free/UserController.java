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
	
	@RequestMapping(value = "/agreementPage.do", method={RequestMethod.POST,RequestMethod.GET})
	public String agreement() {
		return "signUp/signUp01";
	}
	
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
	public String updateNick(@ModelAttribute user user) {
		userDao.updateNick(user);
		return "redirect:/userInfo01.do?id="+user.getId();
	}
	
	//이메일 변경 페이지 이동 요청
	@RequestMapping(value= "/move_updateEmail.do", method={RequestMethod.POST,RequestMethod.GET})
	public String moveUpdateEmail(Model model, @RequestParam(value = "id", required = true) String id) {
		model.addAttribute("user", userDao.select(id));
		return "userInfo/updateEmail";
	}
	
	//이메일 변경
	@RequestMapping(value = "/update_userEmail.do", method = {RequestMethod.POST,RequestMethod.GET})
	public String updateEmail(@ModelAttribute user user) {
		userDao.updateEmail(user);
		return "redirect:/userInfo01.do?id="+user.getId();
	}
	
	//패스워드 변경 페이지 이동 요청
		@RequestMapping(value= "/move_updatePassword.do", method={RequestMethod.POST,RequestMethod.GET})
		public String moveUpdatePassword(Model model, @RequestParam(value = "id", required = true) String id) {
			model.addAttribute("user", userDao.select(id));
			return "userInfo/updatePassword";
		}
		
		//패스워드 변경
		@RequestMapping(value = "/update_password.do", method = {RequestMethod.POST,RequestMethod.GET})
		public String updatePassword(@ModelAttribute user user, @RequestParam(value="newpassword", required = true) String newpassword) {
			if(!newpassword.equals(user.getPassword())) {
			user.setNewpassword(newpassword);
			userDao.updatepassword(user);
			return "redirect:/userInfo01.do?id="+user.getId();
			} else {
			return "redirect:/move_updatePassword.do?id="+user.getId();
			}
		}
		
		//회원 삭제전 비밀번호 입력 창
		@RequestMapping(value="/predelete_userInfo.do", method={RequestMethod.POST,RequestMethod.GET})
		public String movePreUpdate(Model model,
				@RequestParam(value = "id", required = true) String id) {
			model.addAttribute("user", userDao.select(id));
				return "userInfo/preDeleteUser";
		}
		
		//회원 삭제 페이지 이동 요청
		@RequestMapping(value = "/move_deleteUser.do", method = {RequestMethod.POST,RequestMethod.GET})
		public String moveDeleteUser(Model model,@ModelAttribute user user,@RequestParam(value = "id", required = true) String id,@RequestParam(value = "passwordConfirm", required = true) String passwordConfirm) {
			if(!passwordConfirm.equals(user.getPassword())) {
			return "redirect:/predelete_userInfo.do";
			} else {
				model.addAttribute("user", userDao.select(id));
				return "userInfo/deleteUser"; 
			}
		}
		
		@RequestMapping(value = "/deleteUser.do", method = {RequestMethod.POST,RequestMethod.GET})
		public String deleteUser(@ModelAttribute user user ,@RequestParam(value="id", required = true) String id) {
			userDao.delete(user);
			return "redirect:/login.do";
		}
}
