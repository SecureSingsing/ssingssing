package com.xingxing.mvc;

import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller
public class Controllers {


	//메인  
	  @RequestMapping("main2")
	  public String home(Locale locale, Model model) {
	     
	      return "main";
	   }
	  
	  //로그인 
	  @RequestMapping(value = "/main", method = RequestMethod.POST)
	  public String loginCheck(Locale locale, Model model, HttpServletRequest request, HttpServletResponse response) throws ClassNotFoundException {
	      int check = 0;
	      String userID = request.getParameter("userID");
	      String userPW = request.getParameter("userPW");
	      check = new Login().loginChk(userID, userPW, request, response);
	      System.out.println(check);
	      if (check == 1)
				return "main";
			else if  (check == 0)
				return "home";
			else 
				return "home";
		}
		
		@RequestMapping("member")
		public String memberInfo(Locale locale, Model model){
			return "member";
		}
	 
	
	  //회원가입 처리 
	  @RequestMapping(value = "/register", method = RequestMethod.POST)
	   public String newRegister (Locale locale, Model model, HttpServletRequest request) throws ClassNotFoundException {
	      int check = 0;
	      String userID = request.getParameter("userID");
	      String userPW = request.getParameter("userPW");
	      String userNAME = request.getParameter("userNAME");
	      String userWEIGHT = request.getParameter("weight");
	      double weight = Double.parseDouble(userWEIGHT);
	      String gender = request.getParameter("gender");
	      
	      check = new Register().registrationUser(userID, userPW, userNAME, weight, gender);
	      
	      System.out.println(check);
	      
	      if (check == -1)
	         return "duplicate";
	      
	      else
	         return "redirect:/";
	   }

	  //회원가입 - 중복
	  @RequestMapping("duplicate")
	   public String signup_dup() {
	      
	      return "duplicate";
	   }

	
	  //내 정보 - 시작 
	  @RequestMapping("start")
	   public String MyStart() {
		  
	      return "start";
	   }
	
	  @RequestMapping("/")
	  public String home() {
		  return "home";
	  }
	
}