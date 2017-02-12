<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page session="false" %>
<!doctype HTML>
		<HEAD>
		<TITLE>Updating Information for <c:out value="${requestScope.user.userName}"></c:out></TITLE>
			<!-- Latest compiled and minified CSS -->
		<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">

		<!-- jQuery library -->
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>

		<!-- Latest compiled JavaScript -->
		<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
		<style>
			body {
				background-color: #EEF3E2;
			}
		</style>
		</HEAD>
	  <BODY BGCOLOR='#CE93D8'>
		<c:choose>
			<c:when test="${empty requestScope.userDetail}">
				<form:form path='updateForm' commandName="user" METHOD='POST'
					ACTION='updatedOnlyBasic.htm'>
					<TABLE WIDTH='100%' BGCOLOR='#EFEFFF' BORDER='1'>
						<TR BGCOLOR='#D6DFFF'>
							<TD ALIGN='center' colspan='2'><H2>
									<U>Information Update Form</U>
								</H2></TD>
						</TR>

						<TR>
							<TD ALIGN='center'><img
								src='<c:url value="${requestScope.user.fileLocation}"/>'></TD>
							<TD ALIGN='left'><b>Member ID: </b><input type='text' size='50' name='UserID'
								value="${requestScope.user.userID}" disabled/>
							<BR>
							<b>Member Name: </b>
							<c:out value="${requestScope.userDetail.userFullName}"></c:out></TD>
						</TR>


						<TR>
							<TD ALIGN='right'><b>Email: </b></TD>
							<TD ALIGN='left'><form:input type='text' size='50' path='Email'
								value="${requestScope.user.email}" required="true"/></TD>
						</TR>

						<TR>
							<TD ALIGN='right'><b>Country: </b></TD>
							<TD ALIGN='left'><form:input type='text' size='50' path='Country'
								value="${requestScope.user.country}" required="true"/></TD>
						</TR>

						<TR>
							<TD ALIGN='right'><b>State: </b></TD>
							<TD ALIGN='left'><form:input type='text' size='50' path='State'
								value="${requestScope.user.state}" required="true"/></TD>
						</TR>

						<TR>
							<TD ALIGN='right'><b>City: </b></TD>
							<TD ALIGN='left'><form:input type='text' size='50' path='City'
								value="${requestScope.user.city}" required="true"/></TD>
						</TR>

						<TR>
							<TD ALIGN='right'><b>Postal Code: </b></TD>
							<TD ALIGN='left'><form:input type='text' size='50'
								path='PostalCode' value="${requestScope.user.postalCode}" required="true"/></TD>
						</TR>

						<TR>
							<TD ALIGN='right'><b>What is the first thing you want
									people to know about you?</b></TD>
							<TD ALIGN='left'><form:textarea path='AboutMe1' rows="4" cols="60"
									 value="${requestScope.user.aboutMe1}" required="true"/>
										</TD>
						</TR>
						
						<TR BGCOLOR='#D6DFFF'>
							<TD ALIGN='center' colspan='2'><input type='submit'
								name='updateButton' value='Update My Information'></TD>
						</TR>
						
						<form:hidden path="UserID" />

					</TABLE>
				</form:form>
			</c:when>
			
			<c:otherwise>
			<div class="container">
				<form:form path='updateForm' commandName="userDetail" METHOD='POST'
					ACTION='updatedInformation.htm'>
					<TABLE WIDTH='100%' BGCOLOR='#EFEFFF' BORDER='1'>
						<TR BGCOLOR='#D6DFFF'>
							<TD ALIGN='center' colspan='2'><H2>
									<U>Information Update Form</U>
								</H2></TD>
						</TR>

						<TR>
							<TD ALIGN='center'><img
								src='<c:url value="${requestScope.user.fileLocation}"/>'></TD>
							<TD ALIGN='left'><b>Member ID: </b><input type='text' size='50' name='UserID'
								value="${requestScope.userDetail.userID}" disabled />
							<BR>
							<b>Member Name: </b>
							<c:out value="${requestScope.userDetail.userFullName}"></c:out></TD>
						</TR>


						<TR>
							<TD ALIGN='right'><b>Email: </b></TD>
							<TD ALIGN='left'><input type='text' size='50' name='Email'
								value="${requestScope.user.email}" required/></TD>
						</TR>

						<TR>
							<TD ALIGN='right'><b>Country: </b></TD>
							<TD ALIGN='left'><input type='text' size='50' name='Country'
								value="${requestScope.user.country}" required/></TD>
						</TR>

						<TR>
							<TD ALIGN='right'><b>State: </b></TD>
							<TD ALIGN='left'><input type='text' size='50' name='State'
								value="${requestScope.user.state}" required/></TD>
						</TR>

						<TR>
							<TD ALIGN='right'><b>City: </b></TD>
							<TD ALIGN='left'><input type='text' size='50' name='City'
								value="${requestScope.user.city}" required/></TD>
						</TR>

						<TR>
							<TD ALIGN='right'><b>Postal Code: </b></TD>
							<TD ALIGN='left'><input type='text' size='50'
								name='PostalCode' value="${requestScope.user.postalCode}" required/></TD>
						</TR>

						<TR>
							<TD ALIGN='right'><b>What is the first thing you want
									people to know about you?</b></TD>
							<TD ALIGN='left'><textarea name='AboutMe1' rows=4 cols=60
									maxlength=2000><c:out
										value="${requestScope.user.aboutMe1}"></c:out></textarea></TD>
						</TR>

						
						<TR>
							<TD ALIGN='right'><b>Studies Emphasis: </b></TD>
							<TD ALIGN='left'><form:input size='50'
									path='StudiesEmphasis'
									value="${requestScope.userDetail.studiesEmphasis}" required="true"></form:input></TD>
						</TR>

												
						<TR>
							<TD ALIGN='right'><b>Height: </b></TD>
							<TD ALIGN='left'><form:input type='text' size='50'
									path='Height' value="${requestScope.userDetail.height}" required="true"/></TD>
						</TR>

						<TR>
							<TD ALIGN='right'><b>Headline: </b></TD>
							<TD ALIGN='left'><form:input size='50' path='Headline'
									value="${requestScope.userDetail.headline}" required="true"/></TD>
						</TR>

						<TR>
							<TD ALIGN='right'><b>Occupation: </b></TD>
							<!-- <TD ALIGN='left'><form:input size='50' path='Occupation' value="${requestScope.userDetail.occupation}"/></TD> -->
							<TD ALIGN='left'><form:input size='50' path='Occupation'
									value="${requestScope.userDetail.occupation}" required="true"/></TD>
						</TR>

						<TR>
							<TD ALIGN='right'><b>Occupation Description: </b></TD>
							<TD ALIGN='left'><form:input size='50'
									path='OccupationDescription'
									value="${requestScope.userDetail.occupationDescription}" required="true"/></TD>
						</TR>

						<TR>
							<TD ALIGN='right'><b>Grew up in: </b></TD>
							<TD ALIGN='left'><form:input type='text' size='50'
									path='GrewUpIn' value="${requestScope.userDetail.grewUpIn}" required="true"/></TD>
						</TR>

						<TR>
							<TD ALIGN='right'><b>Zodiac Sign: </b></TD>
							<TD ALIGN='left'><form:input type='text' size='50'
									path='ZodiacSign' value="${requestScope.userDetail.zodiacSign}" required="true"/></TD>
						</TR>

						<TR>
							<TD ALIGN='right'><b>Languages I speak: </b></TD>
							<TD ALIGN='left'><form:input type='text' size='50'
									path='Languages' value="${requestScope.userDetail.languages}" required="true"/></TD>
						</TR>

						<TR>
							<TD ALIGN='right'><b>Type of RelationshipType seeking: </b></TD>
							<TD ALIGN='left'><form:input type='text' size='50'
									path='RelationshipType'
									value="${requestScope.userDetail.relationshipType}" required="true"/></TD>
						</TR>

						<TR>
							<TD ALIGN='right'><b>Marital status: </b></TD>
							<TD ALIGN='left'><form:input type='text' size='50'
									path='MaritalStatus'
									value="${requestScope.userDetail.maritalStatus}" required="true"/></TD>
						</TR>

						<TR>
							<TD ALIGN='right'><b>Hair Color: </b></TD>
							<TD ALIGN='left'><form:input type='text' size='50'
									path='HairColor' value="${requestScope.userDetail.hairColor}" required="true"/></TD>
						</TR>

						<TR>
							<TD ALIGN='right'><b>Income Level: </b></TD>
							<TD ALIGN='left'><form:input type='text' size='50'
									path='IncomeLevel'
									value="${requestScope.userDetail.incomeLevel}" required="true"/></TD>
						</TR>

						<TR>
							<TD ALIGN='right'><b>Education Level: </b></TD>
							<TD ALIGN='left'><form:input type='text' size='50'
									path='EducationLevel'
									value="${requestScope.userDetail.educationLevel}" required="true"/></TD>
						</TR>

						<TR>
							<TD ALIGN='right'><b>Body Type: </b></TD>
							<TD ALIGN='left'><form:input type='text' size='50'
									path='BodyType' value="${requestScope.userDetail.bodyType}" required="true"/></TD>
						</TR>

						<TR>
							<TD ALIGN='right'><b>Rate appearance: </b></TD>
							<TD ALIGN='left'><form:input type='text' size='50'
									path='AppearanceImportance'
									value="${requestScope.userDetail.appearanceImportance}" required="true"/></TD>
						</TR>

						<TR>
							<TD ALIGN='right'><b>Religion: </b></TD>
							<TD ALIGN='left'><form:input type='text' size='50'
									path='Religion' value="${requestScope.userDetail.religion}" required="true"/></TD>
						</TR>

						<TR>
							<TD ALIGN='right'><b>Eye Color: </b></TD>
							<TD ALIGN='left'><form:input type='text' size='50'
									path='EyeColor' value="${requestScope.userDetail.eyeColor}" required="true"/></TD>
						</TR>

						<TR>
							<TD ALIGN='right'><b>Ethnicity: </b></TD>
							<TD ALIGN='left'><form:input type='text' size='50'
									path='Ethnicity' value="${requestScope.userDetail.ethnicity}" required="true"/></TD>
						</TR>

						<TR>
							<TD ALIGN='right'><b>Political Orientation: </b></TD>
							<TD ALIGN='left'><form:input type='text' size='50'
									path='PoliticalOrientation'
									value="${requestScope.userDetail.politicalOrientation}" required="true"/></TD>
						</TR>

						<TR>
							<TD ALIGN='right'><b>Rate Intelligence: </b></TD>
							<TD ALIGN='left'><form:input type='text' size='50'
									path='IntelligenceImportance'
									value="${requestScope.userDetail.intelligenceImportance}" required="true"/></TD>
						</TR>

						<TR>
							<TD ALIGN='right'><b>Smoking Habits: </b></TD>
							<TD ALIGN='left'><form:input type='text' size='50'
									path='SmokingHabits'
									value="${requestScope.userDetail.smokingHabits}" required="true"/></TD>
						</TR>

						<TR>
							<TD ALIGN='right'><b>Activity Level: </b></TD>
							<TD ALIGN='left'><form:input type='text' size='50'
									path='ActivityLevel'
									value="${requestScope.userDetail.activityLevel}" required="true"/></TD>
						</TR>

						<TR>
							<TD ALIGN='right'><b>Custody: </b></TD>
							<TD ALIGN='left'><form:input type='text' size='50'
									path='Custody' value="${requestScope.userDetail.custody}" required="true"/></TD>
						</TR>

						<TR>
							<TD ALIGN='right'><b>Drinking Habits: </b></TD>
							<TD ALIGN='left'><form:input type='text' size='50'
									path='DrinkingHabits'
									value="${requestScope.userDetail.drinkingHabits}" required="true"/></TD>
						</TR>

						<TR>
							<TD ALIGN='right'><b>About Me: </b></TD>
							<TD ALIGN='left'><textarea name='AboutMe2' rows='4'
									cols='60' maxlength='2000'><c:out
										value="${requestScope.userDetail.aboutMe2}" ></c:out></textarea></TD>
						</TR>

						<TR>
							<TD ALIGN='right'><b>My personality traits: </b></TD>
							<TD ALIGN='left'><form:input type='text' size='50'
									path='PersonalityTrait'
									value="${requestScope.userDetail.personalityTrait}" required="true"/></TD>
						</TR>

						<TR>
							<TD ALIGN='right'><b>My favorite activities: </b></TD>
							<TD ALIGN='left'><form:input type='text' size='50'
									path='LeisureActivity'
									value="${requestScope.userDetail.leisureActivity}" required="true"/></TD>
						</TR>

						<TR>
							<TD ALIGN='right'><b>About the one I'am looking for: </b></TD>
							<TD ALIGN='left'><textarea name='PerfectMatchEssay' rows=4
									cols=60 maxlength=2000><c:out
										value="${requestScope.userDetail.perfectMatchEssay}" ></c:out></textarea></TD>
						</TR>

						<TR>
							<TD ALIGN='right'><b>My favorite cuisine: </b></TD>
							<TD ALIGN='left'><form:input type='text' size='50'
									path='Cuisine' value="${requestScope.userDetail.cuisine}" required="true"/></TD>
						</TR>

						<TR>
							<TD ALIGN='right'><b>My favorite music: </b></TD>
							<TD ALIGN='left'><form:input type='text' size='50'
									path='Music' value="${requestScope.userDetail.music}" required="true"/></TD>
						</TR>

						<TR>
							<TD ALIGN='right'><b>I like to read: </b></TD>
							<TD ALIGN='left'><form:input type='text' size='50'
									path='Reading' value="${requestScope.userDetail.reading}" required="true"/></TD>
						</TR>

						<TR>
							<TD ALIGN='right'><b>My idea of the perfect first date:
							</b></TD>
							<TD ALIGN='left'><textarea name='PerfectFirstDateEssay'
									rows=4 cols=60 maxlength=2000><c:out
										value="${requestScope.userDetail.perfectFirstDateEssay}" ></c:out></textarea></TD>
						</TR>

						<TR>
							<TD ALIGN='right'><b>I like going out to: </b></TD>
							<TD ALIGN='left'><form:input type='text' size='50'
									path='EntertainmentLocation'
									value="${requestScope.userDetail.entertainmentLocation}" required="true" /></TD>
						</TR>

						<TR>
							<TD ALIGN='right'><b>My favorite physical activities: </b></TD>
							<TD ALIGN='left'><form:input size='50'
									path='PhysicalActivity'
									value="${requestScope.userDetail.physicalActivity}" required="true"></form:input></TD>
						</TR>

						<TR>
							<TD ALIGN='right'><b>My perception of an ideal
									relationship: </b></TD>
							<TD ALIGN='left'><textarea name='IdealRelationshipEssay'
									rows=4 cols=60 maxlength=2000><c:out
										value="${requestScope.userDetail.idealRelationshipEssay}" ></c:out></textarea></TD>
						</TR>

						<TR>
							<TD ALIGN='right'><b>What I've learned from my past
									relationships: </b></TD>
							<TD ALIGN='left'><textarea name='LearnFromThePastEssay'
									rows=4 cols=60 maxlength=2000><c:out
										value="${requestScope.userDetail.learnFromThePastEssay}" ></c:out></textarea></TD>
						</TR>
						
						<form:hidden path="UserID" />


						<TR BGCOLOR='#D6DFFF'>
							<TD ALIGN='center' colspan='2'><input type='submit'
								path='updateButton' value='Update My Information'></TD>
						</TR>

					</TABLE>
				</form:form>


			</div>


		</c:otherwise>
		</c:choose>
		
	  </BODY>
      </HTML>
			
