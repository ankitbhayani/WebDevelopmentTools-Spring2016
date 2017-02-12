package com.northeastern.datefinder.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.SQLQuery;
import org.hibernate.criterion.Restrictions;

import com.northeastern.datefinder.pojo.User;
import com.northeastern.datefinder.pojo.UserDetail;

public class UserDetailDAO extends DAO {

    public UserDetailDAO() {
    }

    //getUser for authentication
    public UserDetail get(String type, String username)
            throws Exception {
        try {
        	//System.out.println("Fetching USERDETAILS from DAO userid="+ type);
            begin();
            Query q = getSession().createQuery("from UserDetail where UserName = :username");
            //q.setString("userid", type);
            //q.setString("userid", "1");
            q.setString("username", username);
            UserDetail userdetail = (UserDetail) q.uniqueResult();
            commit();
            return userdetail;
        } catch (HibernateException e) {
            rollback();
            throw new Exception("Could not get userdetails with" + type, e);
        }
    }
    
    //addUserDetail for Registration
    public UserDetail addUserDetail(UserDetail userdetail) throws Exception {

        try {
            begin();
            System.out.println("inside saving userdetail DAO");
            getSession().save(userdetail);
            getSession().flush();
            getSession().refresh(userdetail);
            close();
            //commit();
            return userdetail;
        } catch (HibernateException e) {
            rollback();
            throw new Exception("Could not get user " + userdetail.getUserFullName(), e);
        }
        

    }

    //updateUserdetail
    public void updateUserDetail(UserDetail userDetail) throws Exception {


        try {
            begin();
            //System.out.println("inside update DEtail dao with "+ userDetail.getUser().getUserID());
            
            UserDetail ud= getSession().load(UserDetail.class, userDetail.getUser().getUserID());
              
            //System.out.println("inside update DEtail dao afterclose before update "+ userDetail.getHeight() + " "+ userDetail.getHeadline()  );

            ud.setStudiesEmphasis(userDetail.getStudiesEmphasis());
            ud.setRelocateFlag(userDetail.getRelocateFlag());
            ud.setHeight(userDetail.getHeight());
            ud.setHeadline(userDetail.getHeadline());
            ud.setOccupation(userDetail.getOccupation());
            ud.setOccupationDescription(userDetail.getOccupationDescription());
            ud.setGrewUpIn(userDetail.getGrewUpIn());
            ud.setZodiacSign(userDetail.getZodiacSign());
            ud.setLanguages(userDetail.getLanguages());
            ud.setRelationshipType(userDetail.getRelationshipType());
            ud.setMaritalStatus(userDetail.getMaritalStatus());
            ud.setHairColor(userDetail.getHairColor());
            ud.setIncomeLevel(userDetail.getIncomeLevel());
            ud.setEducationLevel(userDetail.getEducationLevel());
            ud.setBodyType(userDetail.getBodyType());
            ud.setAppearanceImportance(userDetail.getAppearanceImportance());
            ud.setReligion(userDetail.getReligion());
            ud.setEyeColor(userDetail.getEyeColor());
            ud.setEthnicity(userDetail.getEthnicity());
            ud.setPoliticalOrientation(userDetail.getPoliticalOrientation());
            ud.setIntelligenceImportance(userDetail.getIntelligenceImportance());
            ud.setSmokingHabits(userDetail.getSmokingHabits());
            ud.setActivityLevel(userDetail.getActivityLevel());
            ud.setCustody(userDetail.getCustody());
            ud.setDrinkingHabits(userDetail.getDrinkingHabits());
            ud.setMoreChildrenFlag(userDetail.getMoreChildrenFlag());
            ud.setAboutMe2(userDetail.getAboutMe2());
            ud.setPersonalityTrait(userDetail.getPersonalityTrait());
            ud.setLeisureActivity(userDetail.getLeisureActivity());
            ud.setPerfectMatchEssay(userDetail.getPerfectMatchEssay());
            ud.setCuisine(userDetail.getCuisine());
            ud.setMusic(userDetail.getMusic());
            ud.setReading(userDetail.getReading());
            ud.setPerfectFirstDateEssay(userDetail.getPerfectFirstDateEssay());
            ud.setEntertainmentLocation(userDetail.getEntertainmentLocation());
            ud.setPhysicalActivity(userDetail.getPhysicalActivity());
            ud.setIdealRelationshipEssay(userDetail.getIdealRelationshipEssay());
            ud.setLearnFromThePastEssay(userDetail.getLearnFromThePastEssay());
            ud.setUserID(userDetail.getUserID());
            
            //System.out.println("inside update DEtail dao afterclose after update");
            
            SQLQuery query = getSession().createSQLQuery("UPDATE USERTABLE SET EMAIL=:email, COUNTRY=:country, STATE=:state, CITY=:city, POSTALCODE=:postalcode, ABOUTME1=:aboutme WHERE USERID=:userid");
            query.setParameter("email", userDetail.getUser().getEmail());
            query.setParameter("country", userDetail.getUser().getCountry());
            query.setParameter("state", userDetail.getUser().getState());
            query.setParameter("city", userDetail.getUser().getCity());
            query.setParameter("postalcode", userDetail.getUser().getPostalCode());
            query.setParameter("aboutme", userDetail.getUser().getAboutMe1());
            query.setParameter("userid", userDetail.getUser().getUserID());
			
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