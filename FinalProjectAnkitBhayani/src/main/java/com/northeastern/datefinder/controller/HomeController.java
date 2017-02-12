package com.northeastern.datefinder.controller;


import java.io.IOException;
import java.io.PrintWriter;
import java.text.DateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.northeastern.datefinder.dao.MessageDAO;
import com.northeastern.datefinder.dao.UserDAO;
import com.northeastern.datefinder.pojo.Message;
import com.northeastern.datefinder.pojo.User;


/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	@Autowired
	UserDAO userDao;
	@Autowired
	MessageDAO messageDao;
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	//disable GET so that USERS always MUST LOGIN
	@RequestMapping(value="/login.htm" , method = RequestMethod.GET)
	public String homeviggetmethod() {
		return "redirect:/";
	}
	
	@RequestMapping(value="/loginthruAjax", method = RequestMethod.POST)
	protected ModelAndView loginVerification(HttpServletRequest req, HttpServletResponse res) throws Exception {
		String username = req.getParameter("userName");
		String userpassword = req.getParameter("userPassword");
		PrintWriter out = res.getWriter();
		
		try {
			User u= userDao.get(username, userpassword);
			if(u!=null){
				out.println("Not Valid");
			}
			else
				out.println("Available");
				
		} catch (Exception e) {
			// TODO: handle exception
		}
		
		return null;
	}
	
	
	
	//login&displayMessages
	@RequestMapping(value="/login.htm" , method = RequestMethod.POST)
	public String home(@RequestParam("userName") String username, @RequestParam("userPassword") String userpass, Model model, HttpSession session, HttpServletResponse res) {
		//logger.info("Welcome home! The client locale is {}.", username);
		//logger.info("Welcome home! The client pass is {}.", userpass);
		
		if(username==null && userpass==null){
			if(session.getAttribute("userName")!=null && session.getAttribute("userPassword")!=null){
				username=(String)session.getAttribute("userName");
				userpass=(String)session.getAttribute("userPassword");
			}	
		}

		try {
			
			User u=null;
			
			if(username!=null && userpass!=null)
			 u = userDao.get(username, userpass);
			
			if(u!=null){
				//System.out.println("USERNAME = "+ u.getUserName() +" USERPARSSWORD"+ u.getUserPassword());
				if(u.getUserName().equalsIgnoreCase("admin")){
					List messageList = messageDao.getMessages("admin");
					model.addAttribute("messageList", messageList);
					model.addAttribute("userName", username);
					return "admin";
				}
				
				session.setAttribute("userName", username);
				session.setAttribute("userPassword", userpass);
				List messageList = messageDao.getMessages(username);
				model.addAttribute("messageList", messageList);
				model.addAttribute("userName", username);
			}
			
			
			else{
				String errVal = "Either the user doesn't exist or Wrong combination";
				model.addAttribute("errormsg", errVal);
				//return "home";
				PrintWriter out = res.getWriter();
				out.println("Either the user doesn't exist or Wrong combination");
				
				return null;
			}
				
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "UserView";
	}
	
	//logout
	@RequestMapping(value="/logout.htm" , method = RequestMethod.GET)
	public String methodForLogout(HttpServletRequest req, HttpSession session){
	    System.out.println("inside logout-->"+session.getAttribute("userName"));
		session.invalidate();
		return "redirect:/";
	 }
	
	//ChangePasswordGet
	@RequestMapping(value="/changePassword.htm", method = RequestMethod.GET)
	public String changePassword(Model model, HttpSession session){
		System.out.println("Inside Pass change");
	    try {
			if(session.getAttribute("userName")!=null){
				return "change";
			}else{
				String errVal = "Please login to have this resource";
				model.addAttribute("errormsg", errVal);
				return "home";
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "UserView";
	 }
	
	//changePasswordFormSubmission
	@RequestMapping(value="/changePassword.htm", method = RequestMethod.POST)
	public String changePasswordsubmission(@RequestParam Map<String,String> requestParams, Model model, HttpSession session ){
		System.out.println("Inside POST Pas[s change");
	    try {
			if(session.getAttribute("userName")!=null){
				   String oldpassword=requestParams.get("oldpass");
				   String newpassword=requestParams.get("newpass1");
				   
				   int result = userDao.updatePassword(newpassword);
				   System.out.println(" INTEFFER RESULT "+ result);
				   
			}else{
				String errVal = "Please login to have this resource";
				model.addAttribute("errormsg", errVal);
				return "home";
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "redirect:/logout.htm";
	 }
	
	//sendMessages
	@RequestMapping(value="/sendMessage", method = RequestMethod.POST)
	public String sendMessage(@RequestParam Map<String,String> requestParams, HttpServletRequest req, HttpSession session, HttpServletResponse res, Model model ){
		System.out.println("Inside message sending controller");
	    try {
			if(session.getAttribute("userName")!=null){
				Date date = new Date();
				DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG);
				PrintWriter out = res.getWriter();
				/*for(String inp: requestParams.keySet()){
					System.out.println(" key="+ inp + " value="+ requestParams.get(inp));
				}*/
				
				String formattedDate = dateFormat.format(date);
				String userName=requestParams.get("recipient");
				String fromUser= (String)session.getAttribute("userName");
				String messagefromTextArea=requestParams.get("messagefromTextArea");
				     
				/*System.out.println(" userName=" + userName);
				System.out.println(" fromUser="+ fromUser);
				System.out.println(" messagefromTextArea="+ messagefromTextArea);
				System.out.println(" formattedDate="+formattedDate);*/
				
				   try {
					int result = messageDao.sendMessage(userName, fromUser, messagefromTextArea,formattedDate);
					//System.out.println("results after sending message"+result);
					
					/*if(result>0)
						out.println("SUCCESS");
					else
						out.println("ERROR");*/
					
				} catch (Exception e) {
					System.out.println(" Exception  RESULT "+ e);
				}
				
				   
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	    return "addContactProcess";
	 }

	
	
	@RequestMapping(value="/sendMessage", method = RequestMethod.GET)
	public ModelAndView sendMessageGET(@RequestParam Map<String,String> requestParams, HttpServletRequest req, HttpSession session, HttpServletResponse res, Model model ){
		System.out.println("Inside message sending GET controller");
	    try {
			if(session.getAttribute("userName")!=null){
				Date date = new Date();
				DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG);
				PrintWriter out = res.getWriter();
				/*for(String inp: requestParams.keySet()){
					System.out.println(" key="+ inp + " value="+ requestParams.get(inp));
				}*/
				
				String formattedDate = dateFormat.format(date);
				String userName=requestParams.get("recipient");
				String fromUser= (String)session.getAttribute("userName");
				String messagefromTextArea=requestParams.get("messagefromTextArea");
				     
				/*System.out.println(" userName=" + userName);
				System.out.println(" fromUser="+ fromUser);
				System.out.println(" messagefromTextArea="+ messagefromTextArea);
				System.out.println(" formattedDate="+formattedDate);*/
				
				   try {
					int result = messageDao.sendMessage(userName, fromUser, messagefromTextArea,formattedDate);
					System.out.println("results after sending message"+result);
					
					if(result>0)
						out.println("SUCCESS");
					else
						out.println("ERROR");
					
				} catch (Exception e) {
					System.out.println(" Exception  RESULT "+ e);
				}
				
				   
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	    return null;
	 }
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	//deleteMessages
	@RequestMapping(value="/deleteMessages", method = RequestMethod.POST)
	public String deleteMessages(@RequestParam("msgs") String msgList, HttpServletRequest req, HttpSession session, Model model ){
		//System.out.println("Inside message deleting controller");
	    try {
			if(session.getAttribute("userName")!=null){
				Date date = new Date();
				DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG);
				
				//System.out.println(" kya karu ab =" + msgList);
				String [] messages= msgList.split(",");
				
				   try {

					   int result = messageDao.deleteMessage(messages);
					   //System.out.println("After Deleting count ="+result);
					   
					   
				} catch (Exception e) {
					System.out.println(" Problem while Deleting "+ e);
				}
				
				   
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	    return "UserView";
		
	 }
	
}
