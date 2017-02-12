<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page session="false" %>


<!DOCTYPE html>
<html>
<head>
	<title>User Details Page</title>
	<META HTTP-EQUIV="Content-Type" CONTENT="text/html; CHARSET=windows-1252">
	<script src="<c:url value='/resources/javascript/matchnet.js'/>"></script>
	<script src="<c:url value='/resources/javascript/region3.js'/>"></script>
	<script src="<c:url value='/resources/is/im.js'/>"></script>
	<link rel="stylesheet" type="text/css" href="<c:url value='/resources/lib/css/as.css'/>"/>
	<link rel="stylesheet" type="text/css" href="<c:url value='/resources/lib/css/common.css'/>"/>
     <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap-theme.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
	<style>
			body {
				background-color: #EEF3E2;
			}
		</style>
<script>
var blnAbortValidation = false;
function validateFormfrmWelcome() {
 if (blnAbortValidation == true) {
  blnAbortValidation = false;
  return true;
 }
	var vfrmWelcometxaAboutMe = document.frmWelcome.AboutMe;
	var vfrmWelcomefilTFileID = document.frmWelcome.TFileID;
	if(!IsEmpty(vfrmWelcometxaAboutMe, 'textarea')) {
	if ( InLengthRange(vfrmWelcometxaAboutMe.value, 0, 2000) == false) {
		ModalBox(false,"Introduce Yourself: must be between 0 and 2000 characters");
		vfrmWelcometxaAboutMe.focus();
		return false;
	}
	}

}
</script>

<script>
var blnAbortValidation = false;
function validateFormstep2() {
 if (blnAbortValidation == true) {
  blnAbortValidation = false;
  return true;
 }
	var vstep2selHeight = document.step2.Height;
	var vstep2selWeight = document.step2.Weight;
	var vstep2txtStudiesEmphasis = document.step2.StudiesEmphasis;
	var vstep2txtOccupationDescription = document.step2.OccupationDescription;
	var vstep2radRelocateFlag = document.step2.RelocateFlag;
	var vstep2txtHeadline = document.step2.Headline;
	var vstep2selIndustryType = document.step2.IndustryType;
	var vstep2txtGrewUpIn = document.step2.GrewUpIn;
	var vstep2selZodiac = document.step2.Zodiac;
	var vstep2chkLanguageMask = document.step2.LanguageMask;
	var vstep2chkRelationshipMask = document.step2.RelationshipMask;
	var vstep2selMaritalStatus = document.step2.MaritalStatus;
	var vstep2selHairColor = document.step2.HairColor;
	var vstep2selIncomeLevel = document.step2.IncomeLevel;
	var vstep2selEducationLevel = document.step2.EducationLevel;
	var vstep2selBodyType = document.step2.BodyType;
	var vstep2selAppearanceImportance = document.step2.AppearanceImportance;
	var vstep2selReligion = document.step2.Religion;
	var vstep2selEyeColor = document.step2.EyeColor;
	var vstep2selEthnicity = document.step2.Ethnicity;
	var vstep2selPoliticalOrientation = document.step2.PoliticalOrientation;
	var vstep2selIntelligenceImportance = document.step2.IntelligenceImportance;
	var vstep2selSmokingHabits = document.step2.SmokingHabits;
	var vstep2selActivityLevel = document.step2.ActivityLevel;
	var vstep2selCustody = document.step2.Custody;
	var vstep2selDrinkingHabits = document.step2.DrinkingHabits;
	var vstep2radMoreChildrenFlag = document.step2.MoreChildrenFlag;
	var vstep2txaAboutMe = document.step2.AboutMe;
	if(IsEmpty(vstep2selHeight, 'select')) {
		ModalBox(false,"Height: is required");
		return false;
	}
	if(IsEmpty(vstep2selWeight, 'select')) {
		ModalBox(false,"Weight: is required");
		return false;
	}
	if(IsEmpty(vstep2txtStudiesEmphasis, 'text')) {
		ModalBox(false,"Emphasis Of Studies: is required");
		return false;
	}
	if ( InLengthRange(vstep2txtStudiesEmphasis.value, 1, 50) == false) {
		ModalBox(false,"Emphasis Of Studies: must be between 1 and 50 characters");
		vstep2txtStudiesEmphasis.focus();
		return false;
	}
	if(IsEmpty(vstep2txtOccupationDescription, 'text')) {
		ModalBox(false,"Occupation Description: is required");
		return false;
	}
	if ( InLengthRange(vstep2txtOccupationDescription.value, 1, 100) == false) {
		ModalBox(false,"Occupation Description: must be between 1 and 100 characters");
		vstep2txtOccupationDescription.focus();
		return false;
	}
	if(IsEmpty(vstep2radRelocateFlag, 'radio')) {
		ModalBox(false,"Relocate for the right person? is required");
		return false;
	}
	if(IsEmpty(vstep2txtHeadline, 'text')) {
		ModalBox(false,"Profile Headline: is required");
		return false;
	}
	if ( InLengthRange(vstep2txtHeadline.value, 4, 100) == false) {
		ModalBox(false,"Profile Headline: must be between 4 and 100 characters");
		vstep2txtHeadline.focus();
		return false;
	}
	if(IsEmpty(vstep2selIndustryType, 'select')) {
		ModalBox(false,"Occupation: is required");
		return false;
	}
	if(IsEmpty(vstep2txtGrewUpIn, 'text')) {
		ModalBox(false,"Area I Grew Up In: is required");
		return false;
	}
	if ( InLengthRange(vstep2txtGrewUpIn.value, 4, 50) == false) {
		ModalBox(false,"Area I Grew Up In: must be between 4 and 50 characters");
		vstep2txtGrewUpIn.focus();
		return false;
	}
	if(IsEmpty(vstep2selZodiac, 'select')) {
		ModalBox(false,"Zodiac Sign: is required");
		return false;
	}
	if(IsEmpty(vstep2chkLanguageMask, 'checkbox')) {
		ModalBox(false,"Languages I speak: is required");
		return false;
	}
	if(IsEmpty(vstep2chkRelationshipMask, 'checkbox')) {
		ModalBox(false,"I am seeking: is required");
		return false;
	}
	if(IsEmpty(vstep2selMaritalStatus, 'select')) {
		ModalBox(false,"Marital Status: is required");
		return false;
	}
	if(IsEmpty(vstep2selHairColor, 'select')) {
		ModalBox(false,"Hair Color: is required");
		return false;
	}
	if(IsEmpty(vstep2selIncomeLevel, 'select')) {
		ModalBox(false,"Annual Income: is required");
		return false;
	}
	if(IsEmpty(vstep2selEducationLevel, 'select')) {
		ModalBox(false,"Education Level: is required");
		return false;
	}
	if(IsEmpty(vstep2selBodyType, 'select')) {
		ModalBox(false,"Body Build: is required");
		return false;
	}
	if(IsEmpty(vstep2selAppearanceImportance, 'select')) {
		ModalBox(false,"How important is appearance: is required");
		return false;
	}
	if(IsEmpty(vstep2selReligion, 'select')) {
		ModalBox(false,"Religion: is required");
		return false;
	}
	if(IsEmpty(vstep2selEyeColor, 'select')) {
		ModalBox(false,"Eye Color: is required");
		return false;
	}
	if(IsEmpty(vstep2selEthnicity, 'select')) {
		ModalBox(false,"Ethnicity is required");
		return false;
	}
	if(IsEmpty(vstep2selPoliticalOrientation, 'select')) {
		ModalBox(false,"Political View: is required");
		return false;
	}
	if(IsEmpty(vstep2selIntelligenceImportance, 'select')) {
		ModalBox(false,"How important is intelligence: is required");
		return false;
	}
	if(IsEmpty(vstep2selSmokingHabits, 'select')) {
		ModalBox(false,"Smoking Habits: is required");
		return false;
	}
	if(IsEmpty(vstep2selActivityLevel, 'select')) {
		ModalBox(false,"Activity Level: is required");
		return false;
	}
	if(IsEmpty(vstep2selCustody, 'select')) {
		ModalBox(false,"Children: is required");
		return false;
	}
	if(IsEmpty(vstep2selDrinkingHabits, 'select')) {
		ModalBox(false,"Drinking Habits: is required");
		return false;
	}
	if(IsEmpty(vstep2radMoreChildrenFlag, 'radio')) {
		ModalBox(false,"Want (More) Children: is required");
		return false;
	}
	if(IsEmpty(vstep2txaAboutMe, 'textarea')) {
		ModalBox(false,"About Me is required");
		return false;
	}
	if ( InLengthRange(vstep2txaAboutMe.value, 10, 2000) == false) {
		ModalBox(false,"About Me must be between 10 and 2000 characters");
		vstep2txaAboutMe.focus();
		return false;
	}
}

</script>		
</head>
<body  >


<div class="container">
	<div class="col-lg-4 col-md-6 col-sm-6  col-xs-12">
	<c:choose>
	    <c:when test="${(!empty requestScope.userDetail) and (!empty requestScope.user)}">
		   
			<div class="container">
						<div class="col-lg-4 col-md-6 col-sm-6  col-xs-12">
							<table cellpadding="0" cellspacing="0" class="table">
								<tr>
									<td colspan="3"></td>
								</tr>

								<tr>
									<td><img src="<c:url value='/resources/images/trans.gif'/>" hspace=0 vspace=0 border=0
										width=15 height=1></td>
									<td>
										<table width="600" cellpadding="0" cellspacing="0">
											<tr>
												<td colspan="3">&nbsp;</td>
											</tr>

											<tr>
												<td colspan="3" bgcolor="#D0CFC4"></td>
											</tr>

											<tr>
												<td width="350" bgColor="#D0CFC4">
													<table cellpadding="0" width="350" cellspacing="0">
														<tr>
															<td align="center"><img src='<c:url value="${requestScope.user.fileLocation}"/>' alt='User_Image' /></td>
														</tr>
														<tr>	
															<c:if test="${(requestScope.sessionUserName ne requestScope.user.userName) and (requestScope.ExistContact == 'false')}">
																		<IMG id='DetailsID' SRC='<c:url value="/resources/images/add_contact.jpg"/>' alt='details_icon' data-toggle='modal' data-target='#myModal2'/'>
																		<div class="modal fade" id="myModal2" role="dialog">
																			<div class="modal-dialog">
																				<form role="form" name="msg_frm"  id="msg_frm"  method="POST" class="msg-form" action="">
																								
																								<div class="modal-content">
																									<div class="modal-header">
																										<button type="button" class="close"
																											data-dismiss="modal">&times;</button>
																										<h4 class="modal-title">
																											ContactName:<input type="text" name="recipient" size="40"
																											 id="txtReceiver"  value="<c:out value="${requestScope.user.userName}"></c:out>" disabled/>
																										</h4>
																										<h4 class="modal-title">
																											<input type="hidden" name="fromUser" value="<c:out value="${sessionScope.userName}"></c:out>" size="40" 
																											id="txtSender" disabled="true"/>
																										</h4>
																									</div>
																									<div class="modal-body">
																										<p>
																											Message (Enter up to 4000 characters)<br />
																											<textarea name='messagefromTextArea' id='textMessage' 
																											cols='58' rows='7' required>Hey! How are you doing.</textarea>
																										</p>
																									</div>
																									<div class="modal-footer">
																										<div id="msgbox" pull='left'></div>
																										
																										<input type="submit" class="btn  btn-default"
																											id="SendContactRequest" value="Send!">
																										<button type="button" class="btn btn-default"
																											data-dismiss="modal">Cancel</button>
																									</div>
																								</div>
																							</form>
																						</div>
																					</div>
																		
																</c:if>
															
														
															<c:if test="${(requestScope.sessionUserName ne requestScope.user.userName) and (requestScope.ExistContact == 'true')}">
																	<IMG id='DetailsID' SRC='<c:url value="/resources/images/alerady_contact.jpg"/>' alt='details_icon'/>
															</c:if>
														
														</tr>

														<tr>
															<td align="center"></td>
														</tr>
													</table>
												</td>

												<td bgColor="#F8F8F2"><img src="<c:url value='/resources/images/trans.gif'/>"
													hspace=0 vspace=0 border=0 width=5 height=5></td>
												<td height="100%" bgColor="#F8F8F2">
													<table height="100%" cellpadding="0" cellspacing="0">
														<tr>
															<td class="stdbold" valign="top" align="left"><span
																style="color: #962a2a">
																<input type='text' size='50' name='UserName' id="memberusername" 
																value="${requestScope.user.userName}" disabled/>
																</span></td>
														</tr>

														<tr>
															<td colspan="2"><c:out value="${requestScope.userDetail.maritalStatus}"></c:out>&nbsp;
															<c:out value="${requestScope.user.gender}"></c:out>
																seeking <c:out value="${requestScope.user.seekingGender}"></c:out><BR>from
																<c:out value="${requestScope.user.city}"></c:out>, 
																<c:out value="${requestScope.user.state}"></c:out>, 
																<c:out value="${requestScope.user.country}"></c:out></td>
															<td bgcolor="#FFF1DB" align="right">
																															</td>
														</tr>

														<tr>
															<td colspan="2"><img src="<c:url value='/resources/images/trans.gif'/>" hspace=0
																vspace=0 border=0 width=5 height=5></td>
														</tr>

														<tr>
															<td class="bold" colspan="2"><span
																style="color: #962a2a">About Me</span></td>
														</tr>

														<tr>
															<td colspan="2" height="1" bgcolor="#D0CFC4"><img
																src="<c:url value='/resources/images/trans.gif'/>" hspace=0 vspace=0 border=0
																width=1 height=1></td>
														</tr>

														<tr>
															<td colspan="2">
																<table width="100%"><c:out value="${requestScope.user.aboutMe1}"></c:out><a
																		href="#aboutme">more</a>
																	<tr>
																		<td class="default"></td>
																	</tr>
																	
																	<TR>
																		<td ALIGN='left'><input type="button" Value="View PDF" id="getmePDF"/>
																		</td>
																	</TR>
																</table>
															</td>
														</tr>

														<tr>
															<td colspan="2"><img src="<c:url value='/resources/images/trans.gif'/>" hspace=0
																vspace=0 border=0 width=5 height=10></td>
														</tr>

														<tr>
															<td class="bold" colspan="2">&nbsp;</td>
														</tr>

														<tr>
															<td colspan="2" height="1" bgcolor="#D0CFC4"><img
																src="<c:url value='/resources/images/trans.gif'/>" hspace=0 vspace=0 border=0
																width=1 height=1></td>
														</tr>

														<tr>
															<td colspan="2">
																<table align="left" cellpadding="0" cellspacing="0">
																	<tr>
																		<td valign="top" width="70" align="left">&nbsp;</td>
																		<td valign="top" width="70" align="left">&nbsp;</td>
																		<td valign="top" width="70" align="left">&nbsp;</td>
																	</tr>
																</table>
															</td>
														</tr>
													</table>
												</td>
											</tr>

											<tr>
												<td bgcolor="white" colspan="3"><img
													src="<c:url value='/resources/images/trans.gif'/>" hspace=0 vspace=0 border=0 width=1
													height=3></td>
											</tr>

											<tr>
												<td bgcolor="#D0CFC4" colspan="3"><img
													src="<c:url value='/resources/images/trans.gif'/>" hspace=0 vspace=0 border=0 width=1
													height=1></td>
											</tr>

											<tr>
												<td bgcolor="#D0CFC4" colspan="3"><img
													src="<c:url value='/resources/images/trans.gif'/>" hspace=0 vspace=0 border=0 width=1
													height=1></td>
											</tr>

											<tr>
												<td colspan="3" align="left" border="0" valign="middle">&nbsp;</td>
											</tr>
										</table>

										<table cellpadding="0" cellspacing="0">
											<tr>
												<td width="100%" valign="top">
													<table border="0" cellpadding="0" cellspacing="0">
														<tr>
															<td class="stdBold">
																<table cols="2" width="600" border="0" cellpadding="0"
																	cellspacing="0">
																	<tr>
																		<td class="stdBold">
																			<table width="100%" cellpadding="0" cellspacing="0">
																				<tr>
																					<td class="bold"><span style="color: #962a2a">About
																							Me</span></td>
																					<td align="right">&nbsp;</td>
																				</tr>

																				<tr>
																					<td height="1" colspan="2" bgcolor="#D0CFC4"><img
																						src="<c:url value='/resources/images/trans.gif'/>" hspace=0 vspace=0 border=0
																						width=1 height=1></td>
																				</tr>

																				<tr>
																					<td colspan="2">
																						<table bgcolor="#F8F8F2" width="100%" border="0"
																							cellpadding="0" cellspacing="0">
																							<tr>
																								<td><a name="aboutme"></a><c:out value="${requestScope.userDetail.aboutMe2}"></c:out></td>
																							</tr>
																						</table>
																					</td>
																				</tr>
																			</table>
																		</td>
																	</tr>

																	<tr>
																		<td class="stdBold"><img src="<c:url value='/resources/images/trans.gif'/>"
																			hspace=0 vspace=0 border=0 width=1 height=10>
																			<table width="100%" cellpadding="0" cellspacing="0">
																				<tr>
																					<td class="bold"><span style="color: #962a2a">Personal
																							Info</span></td>
																					<td align="right">&nbsp;</td>
																				</tr>

																				<tr>
																					<td height="1" colspan="2" bgcolor="#D0CFC4"><img
																						src="<c:url value='/resources/images/trans.gif'/>" hspace=0 vspace=0 border=0
																						width=1 height=1></td>
																				</tr>

																				<tr>
																					<td colspan="2">
																						<table bgcolor="#F8F8F2" width="100%" border="0"
																							cellpadding="0" cellspacing="0">
																							<tr>
																								<td class="std">Username:</td>
																								<td width="100%"><c:out value="${requestScope.user.userName}"></c:out></td>
																							</tr>

																							<tr>
																								<td class="std">Gender:</td>
																								<td><c:out value="${requestScope.user.gender}"></c:out> seeking <c:out value="${requestScope.user.seekingGender}"></c:out></td>
																							</tr>

																							<tr>
																								<td class="std">From:</td>
																								<td><c:out value="${requestScope.user.city}"></c:out>, <c:out value="${requestScope.user.state}"></c:out>, <c:out value="${requestScope.user.country}"></c:out></td>
																							</tr>

																							<tr>
																								<td class="std">Age:</td>
																								<td><c:out value="${requestScope.user.age}"></c:out></td>
																							</tr>
																						</table>
																					</td>
																				</tr>
																			</table></td>
																	</tr>

																	<tr>
																		<td class="stdBold"><img src="<c:url value='/resources/images/trans.gif'/>"
																			hspace=0 vspace=0 border=0 width=1 height=10>
																			<table width="100%" cellpadding="0" cellspacing="0">
																				<tr>
																					<td class="bold"><span style="color: #962a2a">Basics</span></td>
																					<td align="right">&nbsp;</td>
																				</tr>

																				<tr>
																					<td height="1" colspan="2" bgcolor="#D0CFC4"><img
																						src="<c:url value='/resources/images/trans.gif'/>" hspace=0 vspace=0 border=0
																						width=1 height=1></td>
																				</tr>

																				<tr>
																					<td colspan="2"></td>
																				</tr>

																				<tr>
																					<td width=100% colspan="2" align="left">
																						<table bgcolor="#F8F8F2" cols="2" width="100%"
																							border="0" cellpadding="0" cellspacing="0">
																							<tr>
																								<td valign="top">
																									<table cols="2" cellpadding="0" cellspacing="0"
																										width="237">
																										<tr>
																											<td valign="top" class="default" width="129"><span
																												style="color: #962a2a">Hair:</span></td>
																											<td valign="top" width="108"><c:out value="${requestScope.userDetail.hairColor}"></c:out></td>
																										</tr>

																										<tr>
																											<td valign="top" class="default" width="129"><span
																												style="color: #962a2a">Eyes:</span></td>
																											<td valign="top" width="108"><c:out value="${requestScope.userDetail.eyeColor}"></c:out></td>
																										</tr>

																										<tr>
																											<td valign="top" class="default" width="129"><span
																												style="color: #962a2a">Height:</span></td>
																											<td valign="top" width="108"><c:out value="${requestScope.userDetail.height}"></c:out>
																												cm</td>
																										</tr>

																										<tr>
																											<td valign="top" class="default" width="129"><span
																												style="color: #962a2a">Weight:</span></td>
																											<td valign="top" width="108"><c:out value="${requestScope.userDetail.weight}"></c:out>
																												kg</td>
																										</tr>

																										<tr>
																											<td valign="top" class="default" width="129"><span
																												style="color: #962a2a">Body Style:</span></td>
																											<td valign="top" width="108"><c:out value="${requestScope.userDetail.bodyType}"></c:out></td>
																										</tr>

																										<tr>
																											<td valign="top" class="default" width="129"><span
																												style="color: #962a2a">Activity
																													Level:</span></td>
																											<td valign="top" width="108"><c:out value="${requestScope.userDetail.activityLevel}"></c:out></td>
																										</tr>

																										<tr>
																											<td valign="top" class="default" width="129"><span
																												style="color: #962a2a">Smoking:</span></td>
																											<td valign="top" width="108"><c:out value="${requestScope.userDetail.smokingHabits}"></c:out></td>
																										</tr>

																										<tr>
																											<td valign="top" class="default" width="129"><span
																												style="color: #962a2a">Drinking:</span></td>
																											<td valign="top" width="108"><c:out value="${requestScope.userDetail.drinkingHabits}"></c:out></td>
																										</tr>

																										<tr>
																											<td valign="top" class="default" width="129"><span
																												style="color: #962a2a">Marital
																													Status:</span></td>
																											<td valign="top" width="108"><c:out value="${requestScope.userDetail.maritalStatus}"></c:out></td>
																										</tr>

																										<tr>
																											<td valign="top" class="default" width="129"><span
																												style="color: #962a2a">Children:</span></td>
																											<td valign="top" width="108"><c:out value="${requestScope.userDetail.moreChildrenFlag}"></c:out></td>
																										</tr>

																										<tr>
																											<td valign="top" class="default" width="129"><span
																												style="color: #962a2a">Zodiac Sign:</span></td>
																											<td valign="top" width="108"><c:out value="${requestScope.userDetail.zodiacSign}"></c:out></td>
																										</tr>

																										<tr>
																											<td valign="top" class="default" width="129"><span
																												style="color: #962a2a">Languages I
																													speak:</span></td>
																											<td valign="top" width="108"><c:out value="${requestScope.userDetail.languages}"></c:out></td>
																										</tr>

																									</table>
																								</td>

																								<td valign="top">
																									<table cellpadding="0" cellspacing="0">
																										<tr>
																											<td valign="top" class="default"><span
																												style="color: #962a2a">Ethnicity:</span></td>
																											<td valign="top"><c:out value="${requestScope.userDetail.ethnicity}"></c:out></td>
																										</tr>

																										<tr>
																											<td valign="top" class="default"><span
																												style="color: #962a2a">Religion:</span></td>
																											<td valign="top"><c:out value="${requestScope.userDetail.religion}"></c:out></td>
																										</tr>

																										<tr>
																											<td valign="top" class="default"><span
																												style="color: #962a2a">Grew up in:</span></td>
																											<td valign="top"><c:out value="${requestScope.userDetail.grewUpIn}"></c:out></td>
																										</tr>

																										<tr>
																											<td valign="top" class="default"><span
																												style="color: #962a2a">Education:</span></td>
																											<td valign="top"><c:out value="${requestScope.userDetail.educationLevel}"></c:out></td>
																										</tr>

																										<tr>
																											<td valign="top" class="default"><span
																												style="color: #962a2a">Education
																													Emphasis:</span></td>
																											<td valign="top"><c:out value="${requestScope.userDetail.studiesEmphasis}"></c:out></td>
																										</tr>

																										<tr>
																											<td valign="top" class="default"><span
																												style="color: #962a2a">Politics:</span></td>
																											<td valign="top"><c:out value="${requestScope.userDetail.politicalOrientation}"></c:out></td>
																										</tr>

																										<tr>
																											<td valign="top" class="default"><span
																												style="color: #962a2a">Occupation:</span></td>
																											<td valign="top"><c:out value="${requestScope.userDetail.occupation}"></c:out></td>
																										</tr>

																										<tr>
																											<td valign="top" class="default"><span
																												style="color: #962a2a">Annual Income:</span></td>
																											<td valign="top"><c:out value="${requestScope.userDetail.incomeLevel}"></c:out></td>
																										</tr>

																										<tr>
																											<td valign="top" class="default"><span
																												style="color: #962a2a">Rate
																													appearance:</span></td>
																											<td valign="top"><c:out value="${requestScope.userDetail.appearanceImportance}"></c:out></td>
																										</tr>

																										<tr>
																											<td valign="top" class="default"><span
																												style="color: #962a2a">Rate
																													intelligence:</span></td>
																											<td valign="top"><c:out value="${requestScope.userDetail.intelligenceImportance}"></c:out></td>
																										</tr>

																										<tr>
																											<td class="std">Relocate:</td>
																											<td><c:out value="${requestScope.userDetail.relocateFlag}"></c:out></td>
																										</tr>
																									</table>
																								</td>
																							</tr>

																							<tr>
																								<td colspan="3"></td>
																							</tr>

																							<tr>
																								<td colspan="3">

																									<table cellpadding="0" cellspacing="0"
																										width="550">
																										<tr>
																											<td valign="top" class="default" width="159"><span
																												style="color: #962a2a">Occupation
																													Description:</span></td>
																											<td valign="top" width="391"><c:out value="${requestScope.userDetail.occupationDescription}"></c:out></td>
																										</tr>

																										<tr>
																											<td valign="top" class="default" width="159"><span
																												style="color: #962a2a">Seeking:</span></td>
																											<td valign="top" width="391"><c:out value="${requestScope.userDetail.relationshipType}"></c:out></td>
																										</tr>

																										<tr>
																											<td valign="top" class="default" width="159"><span
																												style="color: #962a2a">Headline:</span></td>
																											<td valign="top" width="391"><c:out value="${requestScope.userDetail.headline}"></c:out></td>
																										</tr>
																									</table>
																								</td>
																							</tr>
																						</table>
																					</td>
																				</tr>
																			</table></td>
																	</tr>

																	<tr>
																		<td class="stdBold"><img src="<c:url value='/resources/images/trans.gif'/>"
																			hspace=0 vspace=0 border=0 width=1 height=10>
																			<table width="100%" cellpadding="0" cellspacing="0">
																				<tr>
																					<td class="bold"><span style="color: #962a2a">Personality</span></td>
																					<td align="right">&nbsp;</td>
																				</tr>

																				<tr>
																					<td height="1" colspan="2" bgcolor="#D0CFC4"><img
																						src="<c:url value='/resources/images/trans.gif'/>" hspace=0 vspace=0 border=0
																						width=1 height=1></td>
																				</tr>

																				<tr>
																					<td colspan="2"></td>
																				</tr>

																				<tr>
																					<td colspan="2" align="left"><table
																							bgcolor="#F8F8F2" width="100%" border="0"
																							cellpadding="0" cellspacing="0">
																							<tr>
																								<td valign="top" class="default"><span
																									style="color: #962a2a">My personality
																										traits:</span></td>
																								<td valign="top"><c:out value="${requestScope.userDetail.personalityTrait}"></c:out></td>
																							</tr>

																							<tr>
																								<td valign="top" class="default"><span
																									style="color: #962a2a">My favorite
																										activities:</span></td>
																								<td valign="top"><c:out value="${requestScope.userDetail.leisureActivity}"></c:out></td>
																							</tr>

																							<tr>
																								<td valign="top" class="default"><span
																									style="color: #962a2a">About the one I'm
																										looking for:</span></td>
																								<td valign="top"><c:out value="${requestScope.userDetail.perfectMatchEssay}"></c:out></td>
																							</tr>

																						</table></td>
																				</tr>
																			</table></td>
																	</tr>

																	<tr>
																		<td><img src="<c:url value='/resources/images/trans.gif'/>" hspace=0 vspace=0
																			border=0 width=1 height=10>
																			<table width="100%" cellpadding="0" cellspacing="0">
																				<tr>
																					<td class="bold"><span style="color: #962a2a">Interests</span></td>
																					<td align="right">&nbsp;</td>
																				</tr>

																				<tr>
																					<td height="1" colspan="2" bgcolor="#D0CFC4"><img
																						src="<c:url value='/resources/images/trans.gif'/>" hspace=0 vspace=0 border=0
																						width=1 height=1></td>
																				</tr>

																				<tr>
																					<td colspan="2"></td>
																				</tr>

																				<tr>
																					<td colspan="2" align="left">
																						<table bgcolor="#F8F8F2" width="600" border="0"
																							cellpadding="0" cellspacing="0">
																							<tr>
																								<td valign="top" class="default" width="146"><span
																									style="color: #962a2a">My favorite
																										cuisines:</span></td>
																								<td valign="top" width="454"><c:out value="${requestScope.userDetail.cuisine}"></c:out></td>
																							</tr>

																							<tr>
																								<td valign="top" class="default" width="146"><span
																									style="color: #962a2a">My favorite
																										music:</span></td>
																								<td valign="top" width="454"><c:out value="${requestScope.userDetail.music}"></c:out></td>
																							</tr>

																							<tr>
																								<td valign="top" class="default" width="146"><span
																									style="color: #962a2a">I like to read:</span></td>
																								<td valign="top" width="454"><c:out value="${requestScope.userDetail.reading}"></c:out></td>
																							</tr>

																							<tr>
																								<td valign="top" class="default" width="146"><span
																									style="color: #962a2a">My idea of the
																										perfect first date:</span></td>
																								<td valign="top" width="454"><c:out value="${requestScope.userDetail.perfectFirstDateEssay}"></c:out></td>
																							</tr>
																						</table>
																					</td>
																				</tr>
																			</table></td>
																	</tr>

																	<tr>
																		<td><img src="<c:url value='/resources/images/trans.gif'/>" hspace=0 vspace=0
																			border=0 width=1 height=10>

																			<table width="100%" cellpadding="0" cellspacing="0">
																				<tr>
																					<td class="bold"><span style="color: #962a2a">Leisure
																							and Physical Activities</span></td>
																					<td align="right"><a href="#top"
																						class="stdSmall"><img src="<c:url value='/resources/images/btn_top.gif'/>"
																							width="16" height="15" border="0" alt="top"></a>&nbsp;</td>
																				</tr>

																				<tr>
																					<td height="1" colspan="2" bgcolor="#D0CFC4"><img
																						src="<c:url value='/resources/images/trans.gif'/>" hspace=0 vspace=0 border=0
																						width=1 height=1></td>
																				</tr>

																				<tr>
																					<td colspan="2"></td>
																				</tr>

																				<tr>
																					<td colspan="2" align="left">

																						<table bgcolor="#F8F8F2" width="600" border="0"
																							cellpadding="0" cellspacing="0">
																							<tr>
																								<td valign="top" class="default" width="144"><span
																									style="color: #962a2a">I like going out
																										to:</span></td>
																								<td valign="top" width="456"><c:out value="${requestScope.userDetail.entertainmentLocation}"></c:out></td>
																							</tr>

																							<tr>
																								<td valign="top" class="default" width="144"><span
																									style="color: #962a2a">My favorite
																										physical activities:</span></td>
																								<td valign="top" width="456"><c:out value="${requestScope.userDetail.physicalActivity }"></c:out></td>
																							</tr>

																							<tr>
																								<td valign="top" class="default" width="144"><span
																									style="color: #962a2a">My perception of
																										an ideal relationship:</span></td>
																								<td valign="top" width="456"><c:out value="${requestScope.userDetail.idealRelationshipEssay }"></c:out></td>
																							</tr>

																							<tr>
																								<td valign="top" class="default" width="144"><span
																									style="color: #962a2a">What I've learned
																										from my past relationships:</span></td>
																								<td valign="top" width="456"><c:out value="${requestScope.userDetail.learnFromThePastEssay }"></c:out></td>
																							</tr>
																						</table>
																					</td>
																				</tr>
																			</table></td>
																	</tr>
																</table>
																<br> <a href="javascript:window.close();"
																class="stdSmall"><img src="<c:url value='/resources/images/btn_close.gif'/>"
																	border="0" align="right"></a>
															</td>
														</tr>
													</table>
												</td>
												<td><img src="<c:url value='/resources/images/trans.gif'/>" hspace=0 vspace=0
													border=0 width=15 height=1></td>
											</tr>
										</table>
									</td>
								</tr>
							</table>
						</div>
					</div>
		</c:when>
		
		<c:when test="${empty requestScope.userDetail}">

				<c:if test="${requestScope.sessionUserName eq requestScope.user.userName}">
						<jsp:include page="detailedRegistration.jsp"></jsp:include>
				</c:if>
				<c:if test="${requestScope.sessionUserName ne requestScope.user.userName}">
					<form method="POST">	
						<TABLE WIDTH='100%' BGCOLOR='#EFEFFF' BORDER='1'>
							<TR BGCOLOR='#D6DFFF'>
								<TD ALIGN='center' colspan='2'><H2>
										<U> View Basic Info</U>
									</H2></TD>
							</TR>
							
							<TR>
								<TD ALIGN='center'><img
									src='<c:url value="${requestScope.user.fileLocation}"/>'></TD>
								<TD ALIGN='left'><b>Member ID: </b><input type='text' size='50' id="memberid" name='UserID'
									value="${requestScope.user.userID}" disabled/>
								
														<c:if test="${(requestScope.sessionUserName ne requestScope.user.userName) and (requestScope.ExistContact == 'false')}">
																		<IMG id='DetailsID' SRC='<c:url value="/resources/images/add_contact.jpg"/>' alt='details_icon' data-toggle='modal' data-target='#myModal2'/'>
																		<div class="modal fade" id="myModal2" role="dialog">
																			<div class="modal-dialog">
																				<form role="form" name="msg_frm"  id="msg_frm"  method="POST" class="msg-form" action="">
																								
																								<div class="modal-content">
																									<div class="modal-header">
																										<button type="button" class="close"
																											data-dismiss="modal">&times;</button>
																										<h4 class="modal-title">
																											ContactName:<input type="text" name="recipient" size="40"
																											 id="txtReceiver"  value="<c:out value="${requestScope.user.userName}"></c:out>" disabled/>
																										</h4>
																										<h4 class="modal-title">
																											<input type="hidden" name="fromUser" value="<c:out value="${sessionScope.userName}"></c:out>" size="40" 
																											id="txtSender" disabled="true"/>
																										</h4>
																									</div>
																									<div class="modal-body">
																										<p>
																											Message (Enter up to 4000 characters)<br />
																											<textarea name='messagefromTextArea' id='textMessage' 
																											cols='58' rows='7' required>Hey! How are you doing.</textarea>
																										</p>
																									</div>
																									<div class="modal-footer">
																										<div id="msgbox" pull='left'></div>
																										
																										<input type="submit" class="btn  btn-default"
																											id="SendContactRequest" value="Send!">
																										<button type="button" class="btn btn-default"
																											data-dismiss="modal">Cancel</button>
																									</div>
																								</div>
																							</form>
																						</div>
																					</div>
																		
																</c:if>
															
														
															<c:if test="${(requestScope.sessionUserName ne requestScope.user.userName) and (requestScope.ExistContact == 'true')}">
																	<IMG id='DetailsID' SRC='<c:url value="/resources/images/alerady_contact.jpg"/>' alt='details_icon'/>
															</c:if>
									
									
								<BR>
								<b>Member User Name: </b>
								<input type='text' size='50' name='UserName' id="memberusername" value="${requestScope.user.userName}" disabled/></TD>
								<!--<c:out value="${requestScope.user.userName}"></c:out></TD>-->
																	
							</TR>
	
	
							<TR>
								<TD ALIGN='right'><b>Email: </b></TD>
								<!--<input type='text' size='50' name='Email' value="${requestScope.user.email}" disabled/>-->
								<TD ALIGN='left'><c:out value="${requestScope.user.email}"></c:out></TD>
							</TR>
	
							<TR>
								<TD ALIGN='right'><b>Country: </b></TD>
								<!--<input type='text' size='50' name='Country'	value="${requestScope.user.country}" disabled/>-->
								<TD ALIGN='left'><c:out value="${requestScope.user.country}"></c:out></TD>
							</TR>
	
							<TR>
								<TD ALIGN='right'><b>State: </b></TD>
								<!--<input type='text' size='50' name='State' value="${requestScope.user.state}" disabled/>
								<!--<TD ALIGN='left'><c:out value="${requestScope.user.state}"></c:out></TD>-->
								
							</TR>
	
							<TR>
								<TD ALIGN='right'><b>City: </b></TD>
								<!-- <input type='text' size='50' name='City' value="${requestScope.user.city}" disabled/>-->
								<TD ALIGN='left'><c:out value="${requestScope.user.city}"></c:out></TD>
								
							</TR>
	
							<TR>
								<TD ALIGN='right'><b>Postal Code: </b></TD>
								<!-- <input type='text' size='50' name='PostalCode' value="${requestScope.user.postalCode}" disabled/>-->
								<TD ALIGN='left'><c:out value="${requestScope.user.postalCode}"></c:out></TD>
								
							</TR>
	
							<TR>
								<TD ALIGN='right'><b>What is the first thing you want
										people to know about you?</b></TD>
								<!-- <input type='text' size='50' name='AboutMe1' value="${requestScope.user.aboutMe1}" disabled/>-->
								 <TD ALIGN='left'><c:out value="${requestScope.user.aboutMe1}"></c:out></TD>
							</TR>
							
							<TR>
								<td ALIGN='right'></td>
								<td ALIGN='left'><input type="button" Value="View PDF" id="getmePDF"/>
								</td>
							</TR>
							
						</TABLE>
					</form>	
				</c:if>		
															
				
		</c:when>
		
		
		<c:otherwise>
					USER DETAILS ARE NOT AVAILABLE AT THIS MOMENT... PLEASE TRY AFTER SOMETIME
		</c:otherwise>
	</c:choose>
	
	</div>
</div >
 	<script>
      		$(document).ready(function(){
      			
      			$("#getmePDF").click(function(){
      				//alert("PDF BUTTON CLCIKED");
      				var memberid =  $('#memberid').val();
      				var memberusername = $('#memberusername').val();
      				
      				location.href="/datefinder/generate.pdf?memberusername="+memberusername;
      				
      			
      				
      			});
      			
      			$("#SendContactRequest").click(function(){
      				 var sender =  $('#txtSender').val(); // get password
      				 var receiver =  $('#txtReceiver').val(); // get password
      			     var message =  $('#textMessage').val(); // get username
      			     
      			 	//alert(sender);
      				//alert(receiver);
      				//alert(message);
      			     	
      			     if (message) { // values are not empty			 
      					//remove previous class and add new "myinfo" class
      						$("#msgbox").removeClass().addClass('myinfo').text('Sending Your Message ').fadeIn(1000);
      								 //alert($('#form-username').val() );
      						this.timer = setTimeout(function () {
      								$.ajax({
      									url: 'addContact',
      									data: {sender: sender, recipient: receiver, messagefromTextArea: message},
      									type: 'post',
      									success: function(response){
      										//alert(response);
      										      										
      										//alert(response.indexOf("ERROR"));
      									   if(response.indexOf("ERROR") == -1 ) // Message Sent, check and redirect
      										{                // and direct to the success page
      										 
      												$("#msgbox").html('Request message Sent Successfully.....').addClass('myinfo').fadeTo(900,1,function(){
      																	 $('#myModal2').modal('hide');
      												});
      										 
      										}
      										else
      										{
      										       //alert(response);
      												var end = response.indexOf("</PRE>");
      												//var end =  msg.indexOf("</PRE>");
      												var errText =  response.substring(49,end);
      												$("#msgbox").fadeTo(200,0.1,function() //start fading the messagebox
      												{
      												//add message and change the class of the box and start fading
      												$(this).html(errText).removeClass().addClass('myerror').fadeTo(900,1);
      												});
      												 
      										}
      									}
      								 
      								});
      						}, 200);
      						return false;
      					}
      					 else {
      							$('#msgbox').html("Please input  some Message");
      							$('#msgbox').addClass("error");
      						} 
      						//else
      						//$('#msgbox').fadeIn();
      				});
      			
      			     
      			    
      		});
    </script>
</body>
</html>