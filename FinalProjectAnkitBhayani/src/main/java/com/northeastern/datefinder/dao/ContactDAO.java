package com.northeastern.datefinder.dao;

import java.util.List;
import java.util.Map;

import org.hibernate.Criteria;
import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.SQLQuery;
import org.hibernate.criterion.Restrictions;


import com.northeastern.datefinder.pojo.Contact;
import com.northeastern.datefinder.pojo.User;

public class ContactDAO extends DAO {

    public ContactDAO() {
    }

    public List getContacts(String username)
            throws Exception {
        try {
            begin();
            Query q = getSession().createQuery("from Contact where userName = :username");
            q.setString("username", username);
            
            List contactList = q.list();
            commit();
            return contactList;
        } catch (HibernateException e) {
            rollback();
            throw new Exception("Could not get contacts for " + username, e);
        }
    }
    
    //addUser for Registration
    public void addContacts(Contact contact) throws Exception {

        try {
            begin();
            System.out.println("inside Contact saving DAO");
            getSession().save(contact);
            commit();
        } catch (HibernateException e) {
            rollback();
            throw new Exception("Could not save contact" + contact.getContactName(), e);
        }
        

    }
    
    //searchContact
    public boolean searchContact(String userName , String contactName)
            throws Exception {
    	    boolean check1=false,check2=false;
    	    
        try {
            begin();
            Query query1 = getSession().createQuery("FROM Contact WHERE userName=:userName AND contactName=:contactName");
            //SQLQuery query1 = getSession().createSQLQuery("SELECT * FROM CONTACTS WHERE USERNAME=:userName AND CONTACTNAME=:contactName");
            query1.setString("contactName", contactName);
            query1.setString("userName", userName);
            System.out.print(" userName= " + userName +"contactName="+contactName);
            Contact contact1 = (Contact) query1.uniqueResult();                        
            System.out.println("Found contact1="+ contact1);
            if(contact1!=null) check1=true;
            
            
            ///SQLQuery query2 = getSession().createSQLQuery("SELECT USERNAME,CONTACTNAME FROM CONTACTS WHERE USERNAME=:cName AND CONTACTNAME=:uName");
            Query query2 = getSession().createQuery("FROM Contact WHERE userName=:cName AND contactName=:uName");
            query2.setString("cName", contactName);
            query2.setString("uName", userName);
            Contact contact2 = (Contact) query2.uniqueResult();                        
            System.out.println("Found contact2="+ contact2);
            if(contact2!=null) check2=true;            
            commit();
            
            if(check1 || check2)
            	return true;
            else
            	return false;
            
        } catch (HibernateException e) {
            rollback();
            throw new Exception("Could not get users with the given criteria" + e);
        }
    }
    


}