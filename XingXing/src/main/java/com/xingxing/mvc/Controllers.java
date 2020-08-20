package com.xingxing.mvc;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.xingxing.mvc.Login;

/**
 * Handles requests for the application home page.
 */
@Controller
public class Controllers {
	
	private static final Logger logger = LoggerFactory.getLogger(Controller.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping("register")
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		return "register";
	}
	
	@RequestMapping(value = "/loginCheck", method = RequestMethod.POST)
	public String loginCheck(Locale locale, Model model, HttpServletRequest request) throws ClassNotFoundException {
		String userID = request.getParameter("userID");
		String userPW = request.getParameter("userPW");
		new Login().loginCheck(userID, userPW);
		return "main";
	}
	
}