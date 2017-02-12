package com.northeastern.datefinder.pojo;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToOne;
import javax.persistence.PrimaryKeyJoinColumn;
import javax.persistence.Table;
import javax.persistence.Transient;

import org.hibernate.annotations.GenericGenerator;
import org.hibernate.annotations.Parameter;




@Entity
@Table(name="userdetail")
public class UserDetail {

	/*@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)*/
	
	@Id
	@GeneratedValue(generator="generator")
	@GenericGenerator(name="generator",strategy="foreign",
	parameters=@Parameter(name="property",value="user"))
	@Column(name="UserID")
	private String  UserID;
	
	
	@OneToOne(fetch=FetchType.EAGER)
	@PrimaryKeyJoinColumn(name="UserID")
	private User user;
	
	
	
	@Column(name="UserName")
	private String 	UserName;
	@Column(name="UserFullName")
	private String 	UserFullName;
	@Column(name="Height")
	private String  Height;
	@Column(name="Weight")
	private String  Weight;
	@Column(name="StudiesEmphasis")
	private String  StudiesEmphasis;
	@Column(name="RelocateFlag")
	private String  RelocateFlag;
	@Column(name="Headline")
	private String  Headline;
	@Column(name="Occupation")
	private String  Occupation;
	@Column(name="OccupationDescription")
	private String  OccupationDescription;
	@Column(name="GrewUpIn")
	private String  GrewUpIn;
	@Column(name="ZodiacSign")
	private String  ZodiacSign;
	@Column(name="Languages")
	private String  Languages;
	@Column(name="RelationshipType")
	private String  RelationshipType;
	@Column(name="MaritalStatus")
	private String  MaritalStatus;
	@Column(name="HairColor")
	private String  HairColor;
	@Column(name="IncomeLevel")
	private String  IncomeLevel;
	@Column(name="EducationLevel")
	private String  EducationLevel;
	@Column(name="BodyType")
	private String  BodyType;
	@Column(name="AppearanceImportance")
	private String  AppearanceImportance;
	@Column(name="Religion")
	private String  Religion;
	@Column(name="EyeColor")
	private String  EyeColor;
	@Column(name="Ethnicity")
	private String  Ethnicity;
	@Column(name="PoliticalOrientation")
	private String  PoliticalOrientation;
	@Column(name="IntelligenceImportance")
	private String  IntelligenceImportance;
	@Column(name="SmokingHabits")
	private String  SmokingHabits;
	@Column(name="ActivityLevel")
	private String  ActivityLevel;
	@Column(name="Custody")
	private String  Custody;
	@Column(name="DrinkingHabits")
	private String  DrinkingHabits;
	@Column(name="MoreChildrenFlag")
	private String  MoreChildrenFlag;
	@Column(name="AboutMe2")
	private String  AboutMe2;
	@Column(name="PersonalityTrait")
	private String  PersonalityTrait;
	@Column(name="LeisureActivity")
	private String  LeisureActivity;
	@Column(name="PerfectMatchEssay")
	private String  PerfectMatchEssay;
	@Column(name="Cuisine")
	private String  Cuisine;
	@Column(name="Music")
	private String  Music;
	@Column(name="Reading")
	private String  Reading;
	@Column(name="PerfectFirstDateEssay")
	private String  PerfectFirstDateEssay;
	@Column(name="EntertainmentLocation")
	private String  EntertainmentLocation;
	@Column(name="PhysicalActivity")
	private String  PhysicalActivity;
	@Column(name="IdealRelationshipEssay")
	private String  IdealRelationshipEssay;
	@Column(name="LearnFromThePastEssay")
	private String  LearnFromThePastEssay;
	
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
	public String getUserFullName() {
		return UserFullName;
	}
	public void setUserFullName(String userFullName) {
		UserFullName = userFullName;
	}
	public String getHeight() {
		return Height;
	}
	public void setHeight(String height) {
		Height = height;
	}
	public String getWeight() {
		return Weight;
	}
	public void setWeight(String weight) {
		Weight = weight;
	}
	public String getStudiesEmphasis() {
		return StudiesEmphasis;
	}
	public void setStudiesEmphasis(String studiesEmphasis) {
		StudiesEmphasis = studiesEmphasis;
	}
	public String getRelocateFlag() {
		return RelocateFlag;
	}
	public void setRelocateFlag(String relocateFlag) {
		RelocateFlag = relocateFlag;
	}
	public String getHeadline() {
		return Headline;
	}
	public void setHeadline(String headline) {
		Headline = headline;
	}
	public String getOccupation() {
		return Occupation;
	}
	public void setOccupation(String occupation) {
		Occupation = occupation;
	}
	public String getOccupationDescription() {
		return OccupationDescription;
	}
	public void setOccupationDescription(String occupationDescription) {
		OccupationDescription = occupationDescription;
	}
	public String getGrewUpIn() {
		return GrewUpIn;
	}
	public void setGrewUpIn(String grewUpIn) {
		GrewUpIn = grewUpIn;
	}
	public String getZodiacSign() {
		return ZodiacSign;
	}
	public void setZodiacSign(String zodiacSign) {
		ZodiacSign = zodiacSign;
	}
	public String getLanguages() {
		return Languages;
	}
	public void setLanguages(String languages) {
		Languages = languages;
	}
	public String getRelationshipType() {
		return RelationshipType;
	}
	public void setRelationshipType(String relationshipType) {
		RelationshipType = relationshipType;
	}
	public String getMaritalStatus() {
		return MaritalStatus;
	}
	public void setMaritalStatus(String maritalStatus) {
		MaritalStatus = maritalStatus;
	}
	public String getHairColor() {
		return HairColor;
	}
	public void setHairColor(String hairColor) {
		HairColor = hairColor;
	}
	public String getIncomeLevel() {
		return IncomeLevel;
	}
	public void setIncomeLevel(String incomeLevel) {
		IncomeLevel = incomeLevel;
	}
	public String getEducationLevel() {
		return EducationLevel;
	}
	public void setEducationLevel(String educationLevel) {
		EducationLevel = educationLevel;
	}
	public String getBodyType() {
		return BodyType;
	}
	public void setBodyType(String bodyType) {
		BodyType = bodyType;
	}
	public String getAppearanceImportance() {
		return AppearanceImportance;
	}
	public void setAppearanceImportance(String appearanceImportance) {
		AppearanceImportance = appearanceImportance;
	}
	public String getReligion() {
		return Religion;
	}
	public void setReligion(String religion) {
		Religion = religion;
	}
	public String getEyeColor() {
		return EyeColor;
	}
	public void setEyeColor(String eyeColor) {
		EyeColor = eyeColor;
	}
	public String getEthnicity() {
		return Ethnicity;
	}
	public void setEthnicity(String ethnicity) {
		Ethnicity = ethnicity;
	}
	public String getPoliticalOrientation() {
		return PoliticalOrientation;
	}
	public void setPoliticalOrientation(String politicalOrientation) {
		PoliticalOrientation = politicalOrientation;
	}
	public String getIntelligenceImportance() {
		return IntelligenceImportance;
	}
	public void setIntelligenceImportance(String intelligenceImportance) {
		IntelligenceImportance = intelligenceImportance;
	}
	public String getSmokingHabits() {
		return SmokingHabits;
	}
	public void setSmokingHabits(String smokingHabits) {
		SmokingHabits = smokingHabits;
	}
	public String getActivityLevel() {
		return ActivityLevel;
	}
	public void setActivityLevel(String activityLevel) {
		ActivityLevel = activityLevel;
	}
	public String getCustody() {
		return Custody;
	}
	public void setCustody(String custody) {
		Custody = custody;
	}
	public String getDrinkingHabits() {
		return DrinkingHabits;
	}
	public void setDrinkingHabits(String drinkingHabits) {
		DrinkingHabits = drinkingHabits;
	}
	public String getMoreChildrenFlag() {
		return MoreChildrenFlag;
	}
	public void setMoreChildrenFlag(String moreChildrenFlag) {
		MoreChildrenFlag = moreChildrenFlag;
	}
	public String getAboutMe2() {
		return AboutMe2;
	}
	public void setAboutMe2(String aboutMe2) {
		AboutMe2 = aboutMe2;
	}
	public String getPersonalityTrait() {
		return PersonalityTrait;
	}
	public void setPersonalityTrait(String personalityTrait) {
		PersonalityTrait = personalityTrait;
	}
	public String getLeisureActivity() {
		return LeisureActivity;
	}
	public void setLeisureActivity(String leisureActivity) {
		LeisureActivity = leisureActivity;
	}
	public String getPerfectMatchEssay() {
		return PerfectMatchEssay;
	}
	public void setPerfectMatchEssay(String perfectMatchEssay) {
		PerfectMatchEssay = perfectMatchEssay;
	}
	public String getCuisine() {
		return Cuisine;
	}
	public void setCuisine(String cuisine) {
		Cuisine = cuisine;
	}
	public String getMusic() {
		return Music;
	}
	public void setMusic(String music) {
		Music = music;
	}
	public String getReading() {
		return Reading;
	}
	public void setReading(String reading) {
		Reading = reading;
	}
	public String getPerfectFirstDateEssay() {
		return PerfectFirstDateEssay;
	}
	public void setPerfectFirstDateEssay(String perfectFirstDateEssay) {
		PerfectFirstDateEssay = perfectFirstDateEssay;
	}
	public String getEntertainmentLocation() {
		return EntertainmentLocation;
	}
	public void setEntertainmentLocation(String entertainmentLocation) {
		EntertainmentLocation = entertainmentLocation;
	}
	public String getPhysicalActivity() {
		return PhysicalActivity;
	}
	public void setPhysicalActivity(String physicalActivity) {
		PhysicalActivity = physicalActivity;
	}
	public String getIdealRelationshipEssay() {
		return IdealRelationshipEssay;
	}
	public void setIdealRelationshipEssay(String idealRelationshipEssay) {
		IdealRelationshipEssay = idealRelationshipEssay;
	}
	public String getLearnFromThePastEssay() {
		return LearnFromThePastEssay;
	}
	public void setLearnFromThePastEssay(String learnFromThePastEssay) {
		LearnFromThePastEssay = learnFromThePastEssay;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	
	
}
