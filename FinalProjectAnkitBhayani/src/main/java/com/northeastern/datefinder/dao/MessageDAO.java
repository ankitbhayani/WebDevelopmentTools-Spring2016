package com.northeastern.datefinder.dao;

import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.SQLQuery;

import com.northeastern.datefinder.pojo.Message;
import com.northeastern.datefinder.pojo.User;

public class MessageDAO extends DAO {

    public MessageDAO() {
    }

    //getMessages from username
    public List getMessages(String username)
            throws Exception {
        try {
            begin();
            Query q = getSession().createQuery("from Message where userName = :username");
            q.setString("username", username);
            
            List msgList = q.list();
            commit();
            return msgList;
        } catch (HibernateException e) {
            rollback();
            throw new Exception("Could not get messages for " + username, e);
        }
    }
    
    //sendMessage
    public int sendMessage(String userName,String fromUser,String message,String messageDate) throws Exception {

        try {
            begin();
            System.out.println("inside Msesage insert DAO");
            SQLQuery query = getSession().createSQLQuery("INSERT INTO MESSAGES (USERNAME, FROMUSER, MESSAGE, MESSAGEDATE) VALUES (:username, :fromUser, :message, :messageDate)");
            query.setParameter("username", userName);
            query.setParameter("fromUser", fromUser);
            query.setParameter("message", message);
            query.setParameter("messageDate", messageDate);
            int result = query.executeUpdate();
            commit();
            return result;
        } catch (HibernateException e) {
            rollback();
            throw new Exception("Could not save message " + message, e);
        }
        

    }

    //deleteMessage
    public int deleteMessage(String [] messageList) throws Exception {

    	int count=0;
        try {
            begin(); 
            System.out.println("inside Msesage delete DAO");
            for(String msg : messageList){
	            Query query = getSession().createQuery("delete from Message where messageID=:messageId");
	            query.setParameter("messageId", msg);
	            query.executeUpdate();
	            count++;
            }
            commit();
            return count;
        } catch (HibernateException e) {
            rollback();
            throw new Exception("Could not delete messages " + messageList.length, e);
        }
        

    }
    

}