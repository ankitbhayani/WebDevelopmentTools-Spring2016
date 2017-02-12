package com.northeastern.datefinder.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.SQLQuery;
import org.hibernate.criterion.MatchMode;
import org.hibernate.criterion.Restrictions;

import com.northeastern.datefinder.pojo.User;
import com.northeastern.datefinder.pojo.UserDetail;

public class UserDAO extends DAO {

    public UserDAO() {
    }

    //getUser for authentication
    public User get(String username, String userpassword)
            throws Exception {
        try {
            begin();
            Query q = getSession().createQuery("from User where UserName = :username and UserPassword = :userpassword");
            q.setString("username", username);
            q.setString("userpassword", userpassword);
            User user = (User) q.uniqueResult();
            commit();
            return user;
        } catch (HibernateException e) {
            rollback();
            throw new Exception("Could not get user " + username, e);
        }
    }
    
    
  //getUser by NamedQuery
    public List<User> getAllUsers()
            throws Exception {
        try {
            begin();
            //Query q = getSession().getNamedQuery("User.findAll");
            Query q = getSession().createQuery("FROM User where UserName!=:username");
            q.setString("username", "admin");
            List<User> results = q.list();
            commit();
            return results;
        } catch (HibernateException e) {
            rollback();
            throw new Exception("Could not fetched users list by namequery " +  e);
        }
    }
    

    //getUser by UserId
    public List<User> getUsersByID(String id)
            throws Exception {
        try {
            begin();
            
            Query q = getSession().createQuery("FROM User where UserID=:id");
            /*if(id.equalsIgnoreCase("11"))
            	q.setString("id", "83478247829734738274247");
            else
            	q.setString("id", id);*/
         
            List<User> results = q.list();
            commit();
            return results;
        } catch (HibernateException e) {
            rollback();
            throw new Exception("Could not fetched users list by namequery " +  e);
        }
    }
    
    //getUser by UserName
    public List<User> getUsersByUserName(String id)
            throws Exception {
        try {
            begin();
            Criteria criteria = getSession().createCriteria(User.class);
            criteria.add(Restrictions.ilike("UserName", id, MatchMode.ANYWHERE));
            criteria.add(Restrictions.ne("UserName", "admin"));
            List<User> results = criteria.list();
                        
            commit();
            return results;
        } catch (HibernateException e) {
            rollback();
            throw new Exception("Could not fetched users list by namequery " +  e);
        }
    }
    
    
    
    //getUser by UserCity
    public List<User> getUsersByUserCity(String id)
            throws Exception {
        try {
            begin();
            
            Criteria criteria = getSession().createCriteria(User.class);
            criteria.add(Restrictions.ilike("City", id, MatchMode.ANYWHERE));
            criteria.add(Restrictions.ne("UserName", "admin"));
            List<User> results = criteria.list();
            
            
            commit();
            return results;
        } catch (HibernateException e) {
            rollback();
            throw new Exception("Could not fetched users list by namequery " +  e);
        }
    }
    
    
    //getUser by UserCity
    public List<User> getUsersByUserState(String id)
            throws Exception {
        try {
            begin();
            
            Criteria criteria = getSession().createCriteria(User.class);
            criteria.add(Restrictions.ilike("State", id, MatchMode.ANYWHERE));
            criteria.add(Restrictions.ne("UserName", "admin"));
            List<User> results = criteria.list();
            
            
            commit();
            return results;
        } catch (HibernateException e) {
            rollback();
            throw new Exception("Could not fetched users list by namequery " +  e);
        }
    }
    
    
    
    
    
    
    public void deleteUser(String id) throws Exception{
        
        try {
        	begin();
            User user= (User) getSession().get(User.class, id);
            getSession().delete(user);
            commit();
        } catch (HibernateException e) {
             rollback();
             e.printStackTrace();
        } finally {
            close();
        }
    }
    
    
    
    
    //getUser by Username
    public User getByUserName(String username)
            throws Exception {
        try {
            begin();
            Query q = getSession().createQuery("from User where UserName = :username");
            q.setString("username", username);
            User user = (User) q.uniqueResult();
            commit();
            return user;
        } catch (HibernateException e) {
            rollback();
            throw new Exception("Could not get user " + username, e);
        }
    }
    
    
    //addUser for Registration
    public void addUser(User user) throws Exception {

        try {
            begin();
            System.out.println("inside DAO");
            getSession().save(user);
            commit();
        } catch (HibernateException e) {
            rollback();
            throw new Exception("Could not get user " + user, e);
        }
        

    }

    //updatePassword
    public int updatePassword(String pswd) throws Exception {


        try {
            begin();
            System.out.println("inside update DAO pwd "+ pswd);
            Query query = getSession().createQuery("update User set UserPassword = :password");
    				
			query.setParameter("password", pswd);
			int result = query.executeUpdate();
            commit();
            return result;
        } catch (HibernateException e) {
            rollback();
            throw new Exception("Could not update Password " +  e);
        }
        

    }

    //lookupByNumber
    public User lookupByNumber(String lookupByNumber)
            throws Exception {
        try {
            begin();
            Query q = getSession().createQuery("from User where UserID = :userid");
            q.setString("userid", lookupByNumber);
            User user = (User) q.uniqueResult();
            /*if(user!=null)
            	System.out.println("Inside lookup and user="+user.getUserName());*/
            commit();
            return user;
        } catch (HibernateException e) {
            rollback();
            throw new Exception("Could not get user with number" + lookupByNumber, e);
        }
    }
      
    //lookupByName
    public List<User> lookupByName(String lookupByName)
            throws Exception {
        try {
            begin();
            /*Query q = getSession().createQuery("from User where UserName = :username");
            q.setString("username", lookupByName);
            User user = (User) q.uniqueResult();
            /*if(user!=null)
            	System.out.println("Inside lookup and user="+user.getUserName());*/
            
            Criteria criteria = getSession().createCriteria(User.class);
            criteria.add(Restrictions.ilike("UserName", lookupByName, MatchMode.ANYWHERE));
            criteria.add(Restrictions.ne("UserName", "admin"));
            List<User> results = criteria.list();
            
            for(User u : results)
            	System.out.println(" LookBYNAME="+u.getUserName());
            
            commit();
            return results;
        } catch (HibernateException e) {
            rollback();
            throw new Exception("Could not get user with name" + lookupByName, e);
        }
    }
        
    //searchUsers
    public List<User> searchUsers(String minage , String maxage , String seekingGender, String gender, String country, String state, String city)
            throws Exception {
        try {
            begin();
            
            Criteria criteria = getSession().createCriteria(User.class);
            criteria.add(Restrictions.between("age", minage, maxage));
            criteria.add(Restrictions.eq("Gender", seekingGender));
            criteria.add(Restrictions.eq("SeekingGender", gender));
            criteria.add(Restrictions.eq("Country", country));
            criteria.add(Restrictions.eq("State", state));
            
            if (city.trim().length()!=0 || !city.isEmpty()){
            	criteria.add(Restrictions.eq("City", city));
            	System.out.println("executing this time");
            }
            
            //System.out.println("Yaar min= "+minage+" max= "+maxage+" gen="+gender+" seek="+seekingGender+" coun="+country+" stt="+state+" city="+city);
            List<User> list = criteria.list();
            
            //System.out.println("Found users="+ list.size());
            
            /*for(User u : list)
            	System.out.println("Pata nahi kitne aaye = "+ u.getUserName());*/
            
            commit();
            return list;
        } catch (HibernateException e) {
            rollback();
            throw new Exception("Could not get users with the given criteria" + e);
        }
    }
    
    
    //updateUser
    public void updateUser(User user) throws Exception {


        try {
            begin();
            //System.out.println("inside update user dao with ");
            
            User u= getSession().load(User.class, user.getUserID());
                    
           
            
            SQLQuery query = getSession().createSQLQuery("UPDATE USERTABLE SET EMAIL=:email, COUNTRY=:country, STATE=:state, CITY=:city, POSTALCODE=:postalcode, ABOUTME1=:aboutme WHERE USERID=:userid");
            query.setParameter("email", user.getEmail());
            query.setParameter("country", user.getCountry());
            query.setParameter("state", user.getState());
            query.setParameter("city", user.getCity());
            query.setParameter("postalcode", user.getPostalCode());
            query.setParameter("aboutme", user.getAboutMe1());
            query.setParameter("userid", user.getUserID());
			
            query.executeUpdate();
            
            
            //System.out.println("inside update DEtail dao new tx");
            getSession().flush();
            //System.out.println("FINAL UPDATE");
            close();
            //System.out.println("BEFORE COMMITT");
            //commit();
            //System.out.println("AFTER COMMIT");
        } catch (HibernateException e) {
            rollback();
            throw new Exception("Could not update UserDetail in commit exclusion" +  e);
        }
        

    }

    
    
}