package com.northeastern.datefinder.pojo;


import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.NamedQuery;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.persistence.Transient;

import org.springframework.web.multipart.MultipartFile;




@Entity
@Table(name="usertable")
@NamedQuery(name="User.findAll", query="SELECT UserID, UserName, City, State, Country FROM User")
public class User {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private String  UserID;
	@Column(name="UserName", unique=true)
	private String  UserName;
	@Column(name="UserPassword")
	private String  UserPassword;
	@Column(name="DOBmonth")
	private String  DOBmonth;
	@Column(name="DOBday")
	private String  DOBday;
	@Column(name="DOByear")
	private String  DOByear;
	@Column(name="age")
	private String  age;
	@Column(name="lastLoginDate")
	private String  lastLoginDate;
	@Column(name="Email")
	private String  Email;
	@Column(name="Gender")
	private String  Gender;
	@Column(name="SeekingGender")
	private String  SeekingGender;
	@Column(name="Country")
	private String  Country;
	@Column(name="State")
	private String  State;
	@Column(name="City")
	private String  City;
	@Column(name="PostalCode")
	private String  PostalCode;
	@Column(name="AboutMe1")
	private String  AboutMe1;
	@Column(name="FileLocation")
	private String  FileLocation;
	@Column(name="UserRole")
	private String  UserRole;
	
	
	@OneToOne(fetch=FetchType.LAZY,mappedBy="user",cascade=CascadeType.ALL)
    private UserDetail userDetail;
	
	@Transient
	private MultipartFile photo;
	
	
	public MultipartFile getPhoto() {
		return photo;
	}
	public void setPhoto(MultipartFile photo) {
		this.photo = photo;
	}
	/*private String photoName;
    
	*/
	public String getUserID() {
		return UserID;
	}
	public void setUserID(String userID) {
		UserID = userID;
	}
	public String getUserName() {
		return UserName;
	}
	public void setUserName(String userName) {
		UserName = userName;
	}
	public String getUserPassword() {
		return UserPassword;
	}
	public void setUserPassword(String userPassword) {
		UserPassword = userPassword;
	}
	public String getDOBmonth() {
		return DOBmonth;
	}
	public void setDOBmonth(String dOBmonth) {
		DOBmonth = dOBmonth;
	}
	public String getDOBday() {
		return DOBday;
	}
	public void setDOBday(String dOBday) {
		DOBday = dOBday;
	}
	public String getDOByear() {
		return DOByear;
	}
	public void setDOByear(String dOByear) {
		DOByear = dOByear;
	}
	public String getAge() {
		return age;
	}
	public void setAge(String age) {
		this.age = age;
	}
	public String getLastLoginDate() {
		return lastLoginDate;
	}
	public void setLastLoginDate(String lastLoginDate) {
		this.lastLoginDate = lastLoginDate;
	}
	public String getEmail() {
		return Email;
	}
	public void setEmail(String email) {
		Email = email;
	}
	public String getGender() {
		return Gender;
	}
	public void setGender(String gender) {
		Gender = gender;
	}
	public String getSeekingGender() {
		return SeekingGender;
	}
	public void setSeekingGender(String seekingGender) {
		SeekingGender = seekingGender;
	}
	public String getCountry() {
		return Country;
	}
	public void setCountry(String country) {
		Country = country;
	}
	public String getState() {
		return State;
	}
	public void setState(String state) {
		State = state;
	}
	public String getCity() {
		return City;
	}
	public void setCity(String city) {
		City = city;
	}
	public String getPostalCode() {
		return PostalCode;
	}
	public void setPostalCode(String postalCode) {
		PostalCode = postalCode;
	}
	public String getAboutMe1() {
		return AboutMe1;
	}
	public void setAboutMe1(String aboutMe1) {
		AboutMe1 = aboutMe1;
	}
	public String getFileLocation() {
		return FileLocation;
	}
	public void setFileLocation(String fileLocation) {
		FileLocation = fileLocation;
	}
	/*public String getPhotoName() {
		return photoName;
	}
	public void setPhotoName(String photoName) {
		this.photoName = photoName;
	}
	public MultipartFile getPhoto() {
		return photo;
	}
	public void setPhoto(MultipartFile photo) {
		this.photo = photo;
	}*/
	
	
}
