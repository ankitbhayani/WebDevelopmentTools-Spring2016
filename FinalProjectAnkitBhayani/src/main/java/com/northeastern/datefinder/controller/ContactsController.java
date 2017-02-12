package com.northeastern.datefinder.controller;


import java.lang.invoke.MethodType;
import java.text.DateFormat;
import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.northeastern.datefinder.dao.ContactDAO;
import com.northeastern.datefinder.dao.MessageDAO;
import com.northeastern.datefinder.dao.UserDAO;
import com.northeastern.datefinder.pojo.Contact;
import com.northeastern.datefinder.pojo.Message;
import com.northeastern.datefinder.pojo.User;



/**
 * Handles requests for the application home page.
 */
@Controller
public class ContactsController {
	
	@Autowired
	ContactDAO contactDao;
	@Autowired
	UserDAO userDao;
	@Autowired
	MessageDAO messageDao;
	
	private static final Logger logger = LoggerFactory.getLogger(ContactsController.class);

	//fetchcontacts
	@RequestMapping(value="/viewContacts/users/{userName}", method = RequestMethod.GET)
	public String contacts(@PathVariable String userName, Model model, HttpSession session) {
		logger.info("Welcome home! The client locale is {}.", userName);
	    try {
			if(session.getAttribute("userName")!=null){
				if(session.getAttribute("userName").toString().equalsIgnoreCase(userName)){
				List contactList = contactDao.getContacts(userName);
				model.addAttribute("contactList", contactList);
			   }
			}
			else{
				String errVal = "Please login to have this resource";
				model.addAttribute("errormsg", errVal);
				return "home";
			}
				
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "contacts";
	}
	
	//lookupByNumber
	@RequestMapping(value="/lookupByNumber", method = RequestMethod.POST)
	public String lookupByMemberID(@RequestParam("LookupMemberID") String LookupMemberID, HttpServletRequest req, HttpSession session, Model model ){
		System.out.println("Inside lookByNumber controller");
	    try {
			if(session.getAttribute("userName")!=null){
				
     			try {
					   User user = userDao.lookupByNumber(LookupMemberID);
					   model.addAttribute("user",user);
					   
				} catch (Exception e) {
					System.out.println(" Problem during lookupByNumber: "+ e);
				}
				
				   
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	    return "lookupByNumber";
		
	 }

	//lookupByName
	@RequestMapping(value="/lookupByName", method = RequestMethod.POST)
	public String lookupByMemberName(@RequestParam("LookupMemberName") String LookupMemberName, HttpServletRequest req, HttpSession session, Model model ){
		System.out.println("Inside lookByName controller");
	    try {
			if(session.getAttribute("userName")!=null){
								
     			try {
					   List<User> usersList = userDao.lookupByName(LookupMemberName);
					   if (usersList.size()!=0){
						   model.addAttribute("usersList",usersList);
						   for(User u : usersList)
				            	System.out.println(" IN controll names="+u.getUserName());
					   }   
					   
					   
				} catch (Exception e) {
					System.out.println(" Problem during lookupByName: "+ e);
				}
				
				   
			}
		} catch (Exception e){
			e.printStackTrace();
		}
	    return "lookupByName";
		
	 }

	//searchUsers
	@RequestMapping(value="/searchUsers", method = RequestMethod.POST)
	public String searchUsers(@RequestParam Map<String,String> requestParams, HttpServletRequest req, HttpSession session, Model model ){
		System.out.println("Inside searchusers controller");
	    try {
	    	
	    	/*for(String inp: requestParams.keySet()){
	    		System.out.println(" key= "+ inp + " value= "+ requestParams.get(inp));
	    	}*/
	    	
	    	String SeekingGenderID  =requestParams.get("SeekingGenderID");
	    	String GenderID =requestParams.get("GenderID");
	    	String MinAge =requestParams.get("MinAge");
	    	String MaxAge =requestParams.get("MaxAge");
	    	String CountryRegionID =requestParams.get("CountryRegionID");
	    	String stateName =requestParams.get("stateName");
	    	String cityName =requestParams.get("cityName");
	    	
	    	
			if(session.getAttribute("userName")!=null){
					try {
						   List usersList = userDao.searchUsers(MinAge, MaxAge, SeekingGenderID, GenderID, CountryRegionID, stateName, cityName);
						   model.addAttribute("usersList",usersList);
						   
					} catch (Exception e) {
						System.out.println(" Delete karte time panga hai "+ e);
					}
				
				   
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	    return "searchUsers";
		
	 }
	
	//searchUsers
	@RequestMapping(value="/addContact", method = RequestMethod.POST)
	public String addToContact(@RequestParam Map<String,String> requestParams, HttpServletRequest req, HttpSession session, Model model ){
		System.out.println("Inside addcontact controller");
	    try {
	    	
	    	Date date = new Date();
			DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG);
			
			/*for(String inp: requestParams.keySet()){
				System.out.println(" key="+ inp + " value="+ requestParams.get(inp));
			}*/
			
			String formattedDate = dateFormat.format(date);
	    	//String sender = requestParams.get("sender");
			String sender =(String)session.getAttribute("userName");
	    	String recipient= requestParams.get("recipient");
	    	String messagefromTextArea =requestParams.get("messagefromTextArea");
	    	
	    	Contact contact = new Contact();
	    	contact.setContactName(recipient);
	    	contact.setUserName(sender);
	    	contact.setComments(messagefromTextArea);
	    	contact.setDateAdded(formattedDate);
	    	contact.setRequestStatus("PENDING");
	    	
	    		    	
	    	
	    	
			if(session.getAttribute("userName")!=null){
				try {
					   //List usersList = userDao.searchUsers(MinAge, MaxAge, SeekingGenderID, GenderID, CountryRegionID, stateName, cityName);
					   //model.addAttribute("usersList",usersList);
					contactDao.addContacts(contact);
					messageDao.sendMessage(recipient, sender, messagefromTextArea, formattedDate);
					
					   
				} catch (Exception e) {
					System.out.println(" Problems while adding contact and sending message "+ e);
				}
				
				   
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	    return "addContactProcess";
		
	 }
	
	
}
