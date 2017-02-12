package com.northeastern.datefinder.controller;

import java.io.PrintWriter;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.springframework.web.servlet.View;

import org.json.JSONArray;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.northeastern.datefinder.dao.UserDAO;
import com.northeastern.datefinder.pojo.PdfView;
import com.northeastern.datefinder.pojo.User;



@Controller
public class UserController {

	@Autowired
	UserDAO userDao;

	
	@RequestMapping(value="/searchuser.htm" , method = RequestMethod.POST)
	public ModelAndView handleRequestInternal(HttpServletRequest req, HttpServletResponse res)
     		throws Exception {
		
        String action = req.getParameter("action");
        
        System.out.println("Inside searching controller"+action);
        if (action.equalsIgnoreCase("searchuser")) {

            String key = req.getParameter("key");
            String searchKey = req.getParameter("flag");

            System.out.println(" key="+ key +" searchkey="+ searchKey);
            
           
            List<User> userList = null;
           
            if (searchKey.equalsIgnoreCase("srchAll")){
            	userList= userDao.getAllUsers();}
            else if (searchKey.equalsIgnoreCase("userid")){
            	userList= userDao.getUsersByID(key);}
            else if (searchKey.equalsIgnoreCase("username")){
            	userList= userDao.getUsersByUserName(key);}
            else if (searchKey.equalsIgnoreCase("city")){
            	userList= userDao.getUsersByUserCity(key);}
            else if (searchKey.equalsIgnoreCase("state")){
            	userList= userDao.getUsersByUserState(key);}
            
            if(userList!=null){
	            JSONArray array = new JSONArray();
	            for(User u : userList){
	            	JSONObject obj = new JSONObject();
	            	
	            	obj.put("UserID", u.getUserID());
	            	obj.put("UserName", u.getUserName());
	            	obj.put("City", u.getCity());
	            	obj.put("State", u.getState());
	                  	
	            	array.put(obj);
	            }
	            
	            JSONObject mainObject = new JSONObject();
	            mainObject.put("users", array);
	
	            PrintWriter out = res.getWriter();
	            out.println(mainObject);
            }
            
        }
        
        if (action.equalsIgnoreCase("delete")) {
            String userid= req.getParameter("user");
            System.out.println("USERID which needs to be deleted="+userid);
            try {
				userDao.deleteUser(userid);
			} catch (Exception e) {
				System.out.println("Exception while deleting"+ e);
			}
        }
        
             
        return null;
	}

	@RequestMapping(value = "/generate.pdf", method = RequestMethod.GET)
    public ModelAndView generatePdf(HttpServletRequest request,HttpServletResponse response, HttpSession session) throws Exception {
     
     //String userid = request.getParameter("memberid");
     String username = request.getParameter("memberusername");
     //System.out.println("Calling generatePdf() for userName..."+ username + " ID="+ userid);
     
     User u = userDao.getByUserName(username);
     //System.out.println("found user : "+u.getEmail());
     
     
     //System.out.println("Calling model and view for user : "+u.getUserName());
    
     View view = new PdfView();
     //ModelAndView modelAndView = new ModelAndView("pdfView","userList",u);
     ModelAndView modelAndView = new ModelAndView(view,"userList",u);
    
     
     return modelAndView;
    }
	
}
	


