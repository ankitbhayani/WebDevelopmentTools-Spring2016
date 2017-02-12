package com.northeastern.datefinder.controller;

import java.io.File;
import java.io.PrintWriter;
import java.util.Calendar;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletContext;
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
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.northeastern.datefinder.Util.MailingService;
import com.northeastern.datefinder.dao.ContactDAO;
import com.northeastern.datefinder.dao.MessageDAO;
import com.northeastern.datefinder.dao.UserDAO;
import com.northeastern.datefinder.dao.UserDetailDAO;
import com.northeastern.datefinder.pojo.Message;
import com.northeastern.datefinder.pojo.User;
import com.northeastern.datefinder.pojo.UserDetail;
import com.northeastern.datefinder.validator.UserValidator;



@Controller
public class RegistrationController {
	
	@Autowired
	UserDAO userDao;
	@Autowired
	UserDetailDAO userDetailDao;
	@Autowired
	MessageDAO messageDao;
	@Autowired
	ContactDAO contactDao;
	
	@Qualifier("userValidator")
	UserValidator validator;

	@InitBinder
	private void initBinder(WebDataBinder binder) {
		binder.setValidator(validator);
	}

	
	@RequestMapping(value="/registration.htm", method = RequestMethod.GET)
	protected String doSubmitAction1(Model model) throws Exception {
		//System.out.print("Inside FIRST REGISTER");
		model.addAttribute("user", new User()); 
		return "registration/register_01";
	}
	
	@RequestMapping(value="/checkUserName.htm", method = RequestMethod.POST)
	protected ModelAndView doCheckUserName(HttpServletRequest req, HttpServletResponse res) throws Exception {
		String username = req.getParameter("username");
		PrintWriter out = res.getWriter();
		
		try {
			User u= userDao.getByUserName(username);
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
	
	
	@RequestMapping(value="/confirmation.htm", method = RequestMethod.POST)
	protected String doSubmitAction2(@ModelAttribute("user") User user, BindingResult result, HttpServletRequest req, Model model) throws Exception {

		
		Calendar now = Calendar.getInstance();
		int year = now.get(Calendar.YEAR) - Integer.parseInt(user.getDOByear());
		String age = String.valueOf(year);
		String lastLogin = (new java.util.Date()).toString();
		user.setAge(age);
		user.setLastLoginDate(lastLogin);

		 MailingService ms = new MailingService();
		 ms.sendMail(user);

        try {
		   ServletContext servletContext = req.getSession().getServletContext();	
	       File file;
	       String check = File.separator; //Checking if system is linux based or windows based by checking seprator used.
	       String path = null;
	       
	       if(check.equalsIgnoreCase("\\")){
	    	   path = servletContext.getRealPath("").replace(".metadata\\.plugins\\org.eclipse.wst.server.core\\tmp1\\wtpwebapps\\FinalProjectAnkitBhayani","\\FinalProjectAnkitBhayani\\src\\main\\webapp\\resources\\folder\\filesUploadedByUsers\\"); //Netbeans projects gives real path as Lab6/build/web/ so we need to replace build in the path.
	    	   //path = servletContext.getContextPath().concat("\\resources\\folder").concat("\\filesUploadedByUsers");
	    	 
	    	   //System.out.println("with context path:"+servletContext.getContextPath());
	    	   //System.out.println("with real path: "+ path);
	       }
	       
	       if(check.equalsIgnoreCase("/")){
	           path = servletContext.getRealPath("").replace("build/","");
	           path += "/"; //Adding trailing slash for Mac systems.
	           System.out.println("Checking single here "+path);
	       }
	           
	       
	       if(user.getPhoto()!=null){
	                String fileNameWithExt = System.currentTimeMillis() + user.getPhoto().getOriginalFilename();
	                //System.out.println("First fileNameWithExt= "+ fileNameWithExt);
	                //System.out.println("path + fileNameWithExt= "+ path+fileNameWithExt);
	                
	                file = new File(path + fileNameWithExt);
	                String context =  servletContext.getContextPath();
	                
	                /*System.out.println(" Context"+ context);
	                System.out.println(" User getPhoto"+ user.getPhoto());
	                System.out.println(" Absolute"+ file.getAbsolutePath());*/
	                
	                user.getPhoto().transferTo(file);
	                //System.out.println("File location: "+ context+"/"+fileNameWithExt);
	                //user.setFileLocation(context +"/" + fileNameWithExt);
	                user.setFileLocation("/resources/filesUploadedByUsers/" + fileNameWithExt);
	                //System.out.println("/resources"+"/"+fileNameWithExt);
	                userDao.addUser(user);
	                model.addAttribute("user", user);
	       }
	       	
				//userDao.addUser(user);
			} catch (Exception e) {
				System.out.println("Pata nahi yaar" + e);
			}
		return "registration/register_02";
	}
	
	
	@RequestMapping(value="/details.htm", method = RequestMethod.GET)
	public String getDetailsByGET(@RequestParam("type") String type, @RequestParam("data") String username, Model model, HttpSession session){
		System.out.println("CALLED FROM GET details TYPE=" + type+" & data="+ username + " & session="+ (String)session.getAttribute("userName"));
		
		UserDetail userDetail=null;
		User user =null;
		if(type!=null && username!=null)
			try {
				
				boolean check = contactDao.searchContact((String)session.getAttribute("userName"), username);
				if(check)
					model.addAttribute("ExistContact", "true");
				else
					model.addAttribute("ExistContact", "false");
				
				
				userDetail = userDetailDao.get(type, username);
				if(userDetail!=null){
					
					//System.out.println("***************TESTING CONTACT************* check= "+ check);
					if(type.equalsIgnoreCase("2")){
						user = userDao.get((String)session.getAttribute("userName"), (String)session.getAttribute("userPassword"));
					}	
					else if (type.equalsIgnoreCase("1")){
						user = userDetail.getUser();
						
					}
					model.addAttribute("userDetail", userDetail);
					model.addAttribute("user", user);
					model.addAttribute("sessionUserName", (String)session.getAttribute("userName"));
				}else{
						
					    user = userDao.getByUserName(username);
					    model.addAttribute("user", user);
					    model.addAttribute("sessionUserName", (String)session.getAttribute("userName"));
					    //session.setAttribute("username", (String)session.getAttribute("userName"));
				}   
				
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		
		return "details";
	}
		
	
	@RequestMapping(value="/details.htm", method = RequestMethod.POST)
	public String getDetailsByPOST(@RequestParam("type") String type, @RequestParam("data") String username, Model model, HttpSession session){
		//System.out.println("POST CALLING Tdetails TYPE=" + type+" & data="+ username);
		
		UserDetail userDetail=null;
		User user =null;
		if(type!=null && username!=null)
			try {
				userDetail = userDetailDao.get(type, username);
				
				if(type.equalsIgnoreCase("2"))
					user = userDao.get((String)session.getAttribute("userName"), (String)session.getAttribute("userPassword"));
				else if (type.equalsIgnoreCase("1"))
					user = userDetail.getUser();
				
				model.addAttribute("userDetail", userDetail);
				model.addAttribute("user", user);
				model.addAttribute("sessionUserName", (String)session.getAttribute("userName"));
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		
		return "details";
	}
	
	@RequestMapping(value="/uploadDetails.htm", method = RequestMethod.POST)
	public String saveUserDetails(@RequestParam Map<String,String> requestParams, HttpServletRequest req , Model model, HttpSession session){
		System.out.println("Inside saving user details TYPE");
		
		/*for(String inp: requestParams.keySet()){
    		System.out.println(" key= "+ inp + " value= "+ requestParams.get(inp));
    	}*/
		
		User user=null;
		try {
			user = userDao.get((String) session.getAttribute("userName"),
					(String) session.getAttribute("userPassword"));
		} catch (Exception e) {
			System.out.println("Exception while retreiving user");
		}
		UserDetail userDetail = new UserDetail();
		userDetail.setUserID(requestParams.get("UserID"));
		userDetail.setUserName((String)session.getAttribute("userName"));
		userDetail.setUserFullName(requestParams.get("UserFullName"));
		userDetail.setHeight(requestParams.get("Height"));
		userDetail.setWeight(requestParams.get("Weight"));
		userDetail.setStudiesEmphasis(requestParams.get("StudiesEmphasis"));
		userDetail.setRelocateFlag(requestParams.get("RelocateFlag"));
		userDetail.setHeadline(requestParams.get("Headline"));
		userDetail.setOccupation(requestParams.get("IndustryType"));
		userDetail.setOccupationDescription(requestParams.get("OccupationDescription"));
		userDetail.setGrewUpIn(requestParams.get("GrewUpIn"));
		userDetail.setZodiacSign(requestParams.get("Zodiac"));
		userDetail.setLanguages(requestParams.get("LanguageMask"));
		userDetail.setRelationshipType(requestParams.get("RelationshipMask"));
		userDetail.setMaritalStatus(requestParams.get("MaritalStatus"));
		userDetail.setHairColor(requestParams.get("HairColor"));
		userDetail.setIncomeLevel(requestParams.get("IncomeLevel"));
		userDetail.setEducationLevel(requestParams.get("EducationLevel"));
		userDetail.setBodyType(requestParams.get("BodyType"));
		userDetail.setAppearanceImportance(requestParams.get("AppearanceImportance"));
		userDetail.setReligion(requestParams.get("Religion"));
		userDetail.setEyeColor(requestParams.get("EyeColor"));
		userDetail.setEthnicity(requestParams.get("Ethnicity"));
		userDetail.setPoliticalOrientation(requestParams.get("PoliticalOrientation"));
		userDetail.setIntelligenceImportance(requestParams.get("IntelligenceImportance"));
		userDetail.setSmokingHabits(requestParams.get("SmokingHabits"));
		userDetail.setActivityLevel(requestParams.get("ActivityLevel"));
		userDetail.setCustody(requestParams.get("Custody"));
		userDetail.setDrinkingHabits(requestParams.get("DrinkingHabits"));
		userDetail.setMoreChildrenFlag(requestParams.get("MoreChildrenFlag"));
		userDetail.setAboutMe2(requestParams.get("AboutMe"));
		userDetail.setPersonalityTrait(requestParams.get("PersonalityTrait"));
		userDetail.setLeisureActivity(requestParams.get("LeisureActivity"));
		userDetail.setPerfectMatchEssay(requestParams.get("PerfectMatchEssay"));
		userDetail.setCuisine(requestParams.get("Cuisine"));
		userDetail.setMusic(requestParams.get("Music"));
		userDetail.setReading(requestParams.get("Reading"));
		userDetail.setPerfectFirstDateEssay(requestParams.get("PerfectFirstDateEssay"));
		userDetail.setEntertainmentLocation(requestParams.get("EntertainmentLocation"));
		userDetail.setPhysicalActivity(requestParams.get("PhysicalActivity"));
		userDetail.setIdealRelationshipEssay(requestParams.get("IdealRelationshipEssay"));
		userDetail.setLearnFromThePastEssay(requestParams.get("LearnFromThePastEssay"));
		userDetail.setUser(user);
		
		try {
				userDetailDao.addUserDetail(userDetail);
				
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		
		try {
			model.addAttribute("userDetail", userDetail);
			List messageList = messageDao.getMessages((String) session.getAttribute("userName"));
			model.addAttribute("messageList", messageList);
			model.addAttribute("userName", (String) session.getAttribute("userName"));
		} catch (Exception e) {
			System.out.println("Exception occured again..");
		}
		return "UserView";
	}
	
	
	@RequestMapping(value="/updateProfile.htm", method = RequestMethod.POST)
	public String updateProfile(Model model, HttpSession session){
		//System.out.println("Inside updating user details");
		String userName = (String)session.getAttribute("userName");
		UserDetail userDetail=null;
		User user =null;
		try {
				userDetail = userDetailDao.get(userName, userName);
				user = userDao.get((String)session.getAttribute("userName"), (String)session.getAttribute("userPassword"));
				model.addAttribute("userDetail", userDetail);
				model.addAttribute("user", user);
			} catch (Exception e) {
				e.printStackTrace();
			}
		return "update";
	}
	
	@RequestMapping(value="/updatedInformation.htm", method = RequestMethod.POST)
	public String updatedInformationProfile(@ModelAttribute("userDetail") UserDetail userdetail, BindingResult result,@RequestParam Map<String,String> requestParams, Model model, HttpSession session, HttpServletRequest req){
		//System.out.println("Inside updating user details in the DB");
		String userName = (String)session.getAttribute("userName");
		/*for(String inp: requestParams.keySet()){
    		System.out.println(" key= "+ inp + " value= "+ requestParams.get(inp));
    	}*/
		
		/*for(String inp: requestParams.keySet()){
    		System.out.println(" ud.set"+ inp + "(userDetail.get"+inp+"());");
    	}*/
		
	
		User user=null;
		try {
			user = userDao.get((String) session.getAttribute("userName"),
					(String) session.getAttribute("userPassword"));
		} catch (Exception e) {
			System.out.println("Exception while retreiving user");
		}
		user.setAboutMe1(requestParams.get("AboutMe1"));
		user.setCity(requestParams.get("City"));
		user.setCountry(requestParams.get("Country"));
		user.setState(requestParams.get("State"));
		user.setEmail(requestParams.get("Email"));
		user.setPostalCode(requestParams.get("PostalCode"));
		userdetail.setUser(user);
		
		try {
				userDetailDao.updateUserDetail(userdetail);
				List messageList = messageDao.getMessages(userName);
				model.addAttribute("messageList", messageList);
				model.addAttribute("userName", userName);
				
			} catch (Exception e) {
				e.printStackTrace();
			}
		return "UserView";
	}
	
	
	@RequestMapping(value="/updatedOnlyBasic.htm", method = RequestMethod.POST)
	public String updatedOnlyBasic(@ModelAttribute("user") User user, BindingResult result,@RequestParam Map<String,String> requestParams, Model model, HttpSession session, HttpServletRequest req){
		//System.out.println("Inside updating user details in the DB");
		String userName = (String)session.getAttribute("userName");
		/*for(String inp: requestParams.keySet()){
    		System.out.println(" key= "+ inp + " value= "+ requestParams.get(inp));
    	}*/
				
		
		try {

			    userDao.updateUser(user);
				List messageList = messageDao.getMessages(userName);
				model.addAttribute("messageList", messageList);
				model.addAttribute("userName", userName);
				
			} catch (Exception e) {
				e.printStackTrace();
			}
		return "UserView";
	}
	
	
}

