 <div class="container">
		<form:form path='updateForm' commandName="userDetail" METHOD='POST' ACTION='updatedInformation.htm'>
		<TABLE WIDTH='100%' BGCOLOR='#EFEFFF'  BORDER='1'>     
			<TR BGCOLOR='#D6DFFF'>
			<TD ALIGN='center' colspan='2'><H2><U>Information Update Form</U></H2></TD>
			</TR>            
			
            <TR>
            <TD ALIGN='center'><img src='<c:url value="${requestScope.user.fileLocation}"/>'></TD>
            <TD ALIGN='left'><b>Member ID: </b><c:out value="${requestScope.userDetail.userID}"></c:out><BR><b>Member Name: </b><c:out value="${requestScope.userDetail.userFullName}"></c:out></TD>
			</TR>

			            
            <TR>
            <TD ALIGN='right'><b>Email: </b></TD>
            <TD ALIGN='left'><input type='text' size='50' name='Email' value="${requestScope.user.email}"/></TD>
			</TR>
			
			<TR>
            <TD ALIGN='right'><b>Country: </b></TD>
            <TD ALIGN='left'><input type='text' size='50' name='Country' value="${requestScope.user.country}"/></TD>
			</TR>
			
			<TR>
            <TD ALIGN='right'><b>State: </b></TD>
            <TD ALIGN='left'><input type='text' size='50' name='State' value="${requestScope.user.state}"/></TD>
			</TR>
			
			<TR>
            <TD ALIGN='right'><b>City: </b></TD>
            <TD ALIGN='left'><input type='text' size='50' name='City' value="${requestScope.user.city}"/></TD>
			</TR>
			
			<TR>
            <TD ALIGN='right'><b>Postal Code: </b></TD>
            <TD ALIGN='left'><input type='text' size='50' name='PostalCode' value="${requestScope.user.postalCode}"/></TD>
			</TR>
			
			<TR>
            <TD ALIGN='right'><b>What is the first thing you want people to know about you?</b></TD>
            <TD ALIGN='left'><textarea name='AboutMe1' rows=4 cols=60 maxlength=2000><c:out value="${requestScope.user.aboutMe1}"></c:out></textarea></TD>
			</TR>
			
			<TR>
            <TD ALIGN='right'><b>Picture URL: </b></TD>
            <TD ALIGN='left'><input type='text' size='50' name='FileLocation' value="${requestScope.user.fileLocation}"/></TD>
			</TR>
			
			<TR>
            <TD ALIGN='right'><b>Studies Emphasis: </b></TD>
            <TD ALIGN='left'><form:input size='50' path='StudiesEmphasis' value="${requestScope.userDetail.studiesEmphasis}"></form:input></TD>
			</TR>
			
			<TR>
            <TD ALIGN='right'><b>Willing to RelocateFlag for the right person: </b></TD>
            <TD ALIGN='left'><form:input size='50' path='RelocateFlag' value="${requestScope.userDetail.relocateFlag}"/></TD>
			</TR>
			
			<TR>
            <TD ALIGN='right'><b>Headline: </b></TD>
            <TD ALIGN='left'><form:input size='50' path='Headline' value="${requestScope.userDetail.headline}"/></TD>
			</TR>
			
			<TR>
            <TD ALIGN='right'><b>Occupation: </b></TD>
            <!-- <TD ALIGN='left'><form:input size='50' path='Occupation' value="${requestScope.userDetail.occupation}"/></TD> -->
            <TD ALIGN='left'><form:input size='50' path='Occupation' value="${requestScope.userDetail.occupation}"/></TD>
			</TR>
			
			<TR>
            <TD ALIGN='right'><b>Occupation Description: </b></TD>
            <TD ALIGN='left'><form:input size='50' path='OccupationDescription' value="${requestScope.userDetail.occupationDescription}"/></TD>
			</TR>
			
			<TR>
            <TD ALIGN='right'><b>Grew up in: </b></TD>
            <TD ALIGN='left'><form:input type='text' size='50' path='GrewUpIn' value="${requestScope.userDetail.grewUpIn}"/></TD>
			</TR>
			
			<TR>
            <TD ALIGN='right'><b>Zodiac Sign: </b></TD>
            <TD ALIGN='left'><form:input type='text' size='50' path='ZodiacSign' value="${requestScope.userDetail.zodiacSign}"/></TD>
			</TR>
			
			<TR>
            <TD ALIGN='right'><b>Languages I speak: </b></TD>
            <TD ALIGN='left'><form:input type='text' size='50' path='Languages' value="${requestScope.userDetail.languages}"/></TD>
			</TR>
			
			<TR>
            <TD ALIGN='right'><b>Type of RelationshipType seeking: </b></TD>
            <TD ALIGN='left'><form:input type='text' size='50' path='RelationshipType' value="${requestScope.userDetail.relationshipType}"/></TD>
			</TR>
			
			<TR>
            <TD ALIGN='right'><b>Marital status: </b></TD>
            <TD ALIGN='left'><form:input type='text' size='50' path='MaritalStatus' value="${requestScope.userDetail.maritalStatus}"/></TD>
			</TR>
			
			<TR>
            <TD ALIGN='right'><b>Hair Color: </b></TD>
            <TD ALIGN='left'><form:input type='text' size='50' path='HairColor' value="${requestScope.userDetail.hairColor}"/></TD>
			</TR>
			
			<TR>
            <TD ALIGN='right'><b>Income Level: </b></TD>
            <TD ALIGN='left'><form:input type='text' size='50' path='IncomeLevel' value="${requestScope.userDetail.incomeLevel}"/></TD>
			</TR>
			
			<TR>
            <TD ALIGN='right'><b>Education Level: </b></TD>
            <TD ALIGN='left'><form:input type='text' size='50' path='EducationLevel' value="${requestScope.userDetail.educationLevel}"/></TD>
			</TR>
			
			<TR>
            <TD ALIGN='right'><b>Body Type: </b></TD>
            <TD ALIGN='left'><form:input type='text' size='50' path='BodyType' value="${requestScope.userDetail.bodyType}"/></TD>
			</TR>
			
			<TR>
            <TD ALIGN='right'><b>Rate appearance: </b></TD>
            <TD ALIGN='left'><form:input type='text' size='50' path='AppearanceImportance' value="${requestScope.userDetail.appearanceImportance}"/></TD>
			</TR>
			
			<TR>
            <TD ALIGN='right'><b>Religion: </b></TD>
            <TD ALIGN='left'><form:input type='text' size='50' path='Religion' value="${requestScope.userDetail.religion}"/></TD>
			</TR>
			
			<TR>
            <TD ALIGN='right'><b>Eye Color: </b></TD>
            <TD ALIGN='left'><form:input type='text' size='50' path='EyeColor' value="${requestScope.userDetail.eyeColor}"/></TD>
			</TR>
			
			<TR>
            <TD ALIGN='right'><b>Ethnicity: </b></TD>
            <TD ALIGN='left'><form:input type='text' size='50' path='Ethnicity' value="${requestScope.userDetail.ethnicity}"/></TD>
			</TR>
			
			<TR>
            <TD ALIGN='right'><b>Political Orientation: </b></TD>
            <TD ALIGN='left'><form:input type='text' size='50' path='PoliticalOrientation' value="${requestScope.userDetail.politicalOrientation}"/></TD>
			</TR>
			
			<TR>
            <TD ALIGN='right'><b>Rate Intelligence: </b></TD>
            <TD ALIGN='left'><form:input type='text' size='50' path='IntelligenceImportance' value="${requestScope.userDetail.intelligenceImportance}"/></TD>
			</TR>
			
			<TR>
            <TD ALIGN='right'><b>Smoking Habits: </b></TD>
            <TD ALIGN='left'><form:input type='text' size='50' path='SmokingHabits' value="${requestScope.userDetail.smokingHabits}"/></TD>
			</TR>
			
			<TR>
            <TD ALIGN='right'><b>Activity Level: </b></TD>
            <TD ALIGN='left'><form:input type='text' size='50' path='ActivityLevel' value="${requestScope.userDetail.activityLevel}"/></TD>
			</TR>
			
			<TR>
            <TD ALIGN='right'><b>Custody: </b></TD>
            <TD ALIGN='left'><form:input type='text' size='50' path='Custody' value="${requestScope.userDetail.custody}"/></TD>
			</TR>
			
			<TR>
            <TD ALIGN='right'><b>Drinking Habits: </b></TD>
            <TD ALIGN='left'><form:input type='text' size='50' path='DrinkingHabits' value="${requestScope.userDetail.drinkingHabits}"/></TD>
			</TR>
			
			<TR>
            <TD ALIGN='right'><b>Want more children: </b></TD>
            <TD ALIGN='left'><form:input type='text' size='50' path='MoreChildrenFlag' value="${requestScope.userDetail.moreChildrenFlag}"/></TD>
			</TR>
			
			<TR>
            <TD ALIGN='right'><b>About Me: </b></TD>
            <TD ALIGN='left'><textarea name='AboutMe2' rows='4' cols='60' maxlength='2000'><c:out value="${requestScope.userDetail.aboutMe2}"></c:out></textarea></TD>
			</TR>
			
			<TR>
            <TD ALIGN='right'><b>My personality traits: </b></TD>
            <TD ALIGN='left'><form:input type='text' size='50' path='PersonalityTrait' value="${requestScope.userDetail.personalityTrait}"/></TD>
			</TR>
			
			<TR>
            <TD ALIGN='right'><b>My favorite activities: </b></TD>
            <TD ALIGN='left'><form:input type='text' size='50' path='LeisureActivity' value="${requestScope.userDetail.leisureActivity}"/></TD>
			</TR>
			
			<TR>
            <TD ALIGN='right'><b>About the one I'am looking for: </b></TD>
            <TD ALIGN='left'><textarea name='PerfectMatchEssay' rows=4 cols=60 maxlength=2000><c:out value="${requestScope.userDetail.perfectMatchEssay}"></c:out></textarea></TD>
			</TR>
			
			<TR>
            <TD ALIGN='right'><b>My favorite cuisine: </b></TD>
            <TD ALIGN='left'><form:input type='text' size='50' path='Cuisine' value="${requestScope.userDetail.cuisine}"/></TD>
			</TR>
			
			<TR>
            <TD ALIGN='right'><b>My favorite music: </b></TD>
            <TD ALIGN='left'><form:input type='text' size='50' path='Music' value="${requestScope.userDetail.music}"/></TD>
			</TR>
			
			<TR>
            <TD ALIGN='right'><b>I like to read: </b></TD>
            <TD ALIGN='left'><form:input type='text' size='50' path='Reading' value="${requestScope.userDetail.reading}"/></TD>
			</TR>
			
			<TR>
            <TD ALIGN='right'><b>My idea of the perfect first date: </b></TD>
            <TD ALIGN='left'><textarea name='PerfectFirstDateEssay' rows=4 cols=60 maxlength=2000><c:out value="${requestScope.userDetail.perfectFirstDateEssay}"></c:out></textarea></TD>
			</TR>
			
			<TR>
            <TD ALIGN='right'><b>I like going out to: </b></TD>
            <TD ALIGN='left'><form:input type='text' size='50' path='EntertainmentLocation' value="${requestScope.userDetail.entertainmentLocation}"/></TD>
			</TR>
			
			<TR>
            <TD ALIGN='right'><b>My favorite physical activities: </b></TD>
            <TD ALIGN='left'><form:input size='50' path='PhysicalActivity' value="${requestScope.userDetail.physicalActivity}"></form:input></TD>
			</TR>
			
			<TR>
            <TD ALIGN='right'><b>My perception of an ideal relationship: </b></TD>
            <TD ALIGN='left'><textarea name='IdealRelationshipEssay' rows=4 cols=60 maxlength=2000><c:out value="${requestScope.userDetail.idealRelationshipEssay}"></c:out></textarea></TD>
			</TR>
			
			<TR>
            <TD ALIGN='right'><b>What I've learned from my past relationships: </b></TD>
            <TD ALIGN='left'><textarea name='LearnFromThePastEssay' rows=4 cols=60 maxlength=2000><c:out value="${requestScope.userDetail.learnFromThePastEssay}"></c:out></textarea></TD>
			</TR>
         
         
         <TR BGCOLOR='#D6DFFF'>
		 <TD ALIGN='center' colspan='2'><input type='submit' path='updateButton' value='Update My Information'></TD>
		 </TR>
		
         </TABLE>
         </form:form>


</div >
