
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page session="false" %>

<!doctype HTML>
<html>
<head>
	<title>CSE220 Final Project</title>
	<META HTTP-EQUIV="Content-Type" CONTENT="text/html; CHARSET=windows-1252">
	 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap-theme.min.css">
	 <link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
	 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
	 <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
	<script src="http://code.jquery.com/jquery-1.10.2.js"></script>
	<script src="http://code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
	<script>
    	window.location.hash="no-back-button";
    	window.location.hash="Again-No-back-button";//again because google chrome don't insert first hash into history
    	window.onhashchange=function(){
        window.location.hash="no-back-button";
    }
</script>
</head>

<body marginheight=0 marginwidth=0 topmargin=0 leftmargin=0 text="#000000" bgcolor="#ffffff">

<div class="container">
<h1> NEU DateFinder Confirmation </h1>
<table border='0' cellpadding="5" cellspacing="5" class="table" >
<tr>
	<td><img src="<c:url value="/resources/images/page_message.gif"/>" width="20" height="20" ></td>
	<td class="message" >For your privacy, your Username cannot contain any part of your email address.</td>
</tr>
</table><br>

<table border="1" cellspacing="5" cellpadding="5" class="table">
<form name="frmWelcome" method="post" ENCTYPE="MULTIPART/FORM-DATA" action="register_03.jsp" onSubmit="return validateFormfrmWelcome()">
<tr>
	<td colspan="2" align="center"><img src="<c:url value="/resources/images/confirm_headline.gif"/>" width="333" height="57" alt="congratulations!"></td>
</tr>

<tr>
	<td colspan="2" align="center"><font class="stdBold">Double check your username and password, you will need them. </font></td>
</tr>

<tr>
	<td align="right"><font class="bold">User Name:&nbsp;</font></td>
	<td><c:out value="${requestScope.user.userName}"></c:out></td>
</tr>

<tr>
	<td align="right"><font class="bold">Password:&nbsp;</font></td>
	<td><c:out value="${requestScope.user.userPassword}"></c:out></td>
</tr>

<tr>
</tr>

<tr>
	<td align="right"><font class="bold">Email Address:&nbsp;</font></td>
	<td><c:out value="${requestScope.user.email}"></c:out></td>
</tr>

<tr>
	<td align="right"><font class="bold">From:&nbsp;</font></td>
	<td><c:out value="${requestScope.user.city}"></c:out>, 
		<c:out value="${requestScope.user.state}"></c:out>  
		<c:out value="${requestScope.user.postalCode}"></c:out> 
		<c:out value="${requestScope.user.country}"></c:out></td>
</tr>

<tr>
	<td align="right"><font class="bold">You are a:&nbsp;</font></td>
	<td><c:out value="${requestScope.user.gender}"></c:out> seeking <c:out value="${requestScope.user.seekingGender}"></c:out></td>
</tr>



<tr>
	<td colspan="2" align="center">
		<table width="450" cellspacing="0" cellpadding="0" border="0" >
			<tr>
				<td align="left"><a href="/datefinder/" class="default">Login and Enjoy the services</a></td>
			</tr>
		</table>
		


	</td>
</tr> 
</form>
</table>
<div class="container">
<script>

	var blnAbortValidation = false;
	
	function validateFormfrmStep1() {
		if (blnAbortValidation == true) {
			blnAbortValidation = false;
			return true;
		}
		
	var vfrmStep1txtUserName = document.frmStep1.UserName;
	var vfrmStep1pasPassword = document.frmStep1.Password;
	var vfrmStep1pasPassword2 = document.frmStep1.Password2;
	var vfrmStep1dteBirthDate_month = document.frmStep1.BirthDate_month[document.frmStep1.BirthDate_month.selectedIndex].value;
	var vfrmStep1dteBirthDate_day = document.frmStep1.BirthDate_day[document.frmStep1.BirthDate_day.selectedIndex].value;
	var vfrmStep1dteBirthDate_year = document.frmStep1.BirthDate_year[document.frmStep1.BirthDate_year.selectedIndex].value;
	var vfrmStep1txtEmail = document.frmStep1.Email;
	var vfrmStep1radGenderID = document.frmStep1.GenderID;
	var vfrmStep1radSeekingGenderID = document.frmStep1.SeekingGenderID;
	var vfrmStep1selCountryRegionID = document.frmStep1.CountryRegionID;
	var vfrmStep1txtPostalCode = document.frmStep1.PostalCode;
	var vfrmStep1chkNewsLetterMask = document.frmStep1.NewsLetterMask;

	if(IsEmpty(vfrmStep1txtUserName, 'text')) {
		ModalBox(false,"User Name: is required");
		return false;
	}
	if ( InLengthRange(vfrmStep1txtUserName.value, 2, 25) == false) {
		ModalBox(false,"User Name: must be between 2 and 25 characters");
		vfrmStep1txtUserName.focus();
		return false;
	}
	if(IsEmpty(vfrmStep1pasPassword, 'password')) {
		ModalBox(false,"Password: is required");
		return false;
	}
	if ( InLengthRange(vfrmStep1pasPassword.value, 4, 16) == false) {
		ModalBox(false,"Password: must be between 4 and 16 characters");
		vfrmStep1pasPassword.focus();
		return false;
	}
	if(IsEmpty(vfrmStep1pasPassword2, 'password')) {
		ModalBox(false,"Re-enter your password: is required");
		return false;
	}
	if ( InLengthRange(vfrmStep1pasPassword2.value, 4, 16) == false) {
		ModalBox(false,"Re-enter your password: must be between 4 and 16 characters");
		vfrmStep1pasPassword2.focus();
		return false;
	}
	if (vfrmStep1dteBirthDate_month == "") {
		ModalBox(false,"Date of Birth: is required");
		document.frmStep1.BirthDate_month.focus();
		return false;
	}
	if (vfrmStep1dteBirthDate_day == "") {
		ModalBox(false,"Date of Birth: is required");
		document.frmStep1.BirthDate_day.focus();
		return false;
	}
	if (vfrmStep1dteBirthDate_year == "") {
		ModalBox(false,"Date of Birth: is required");
		document.frmStep1.BirthDate_year.focus();
		return false;
	}
	if (!IsValidDate(vfrmStep1dteBirthDate_month, vfrmStep1dteBirthDate_day, vfrmStep1dteBirthDate_year) ){
		ModalBox(false,"The Date of Birth: field is not a valid date");
		document.frmStep1.BirthDate_day.focus();
		return false;
	}
	if(IsEmpty(vfrmStep1txtEmail, 'text')) {
		ModalBox(false,"Email address: is required");
		return false;
	}
	if ( IsEmail(vfrmStep1txtEmail.value, 3) == false) {
		ModalBox(false,"Email address: is not a valid email address");
		vfrmStep1txtEmail.focus();
		return false;
	}
	if ( InLengthRange(vfrmStep1txtEmail.value, null , 255) == false) {
		ModalBox(false,"Email address: cannot have more than 255 characters");
		vfrmStep1txtEmail.focus();
		return false;
	}
	if(IsEmpty(vfrmStep1radGenderID, 'radio')) {
		ModalBox(false,"Your Gender is required");
		return false;
	}
	if(IsEmpty(vfrmStep1radSeekingGenderID, 'radio')) {
		ModalBox(false,"Looking for a: is required");
		return false;
	}
	if(IsEmpty(vfrmStep1selCountryRegionID, 'select')) {
		ModalBox(false,"Country is required");
		return false;
	}
	if(IsEmpty(vfrmStep1txtPostalCode, 'text')) {
		ModalBox(false,"Zip Code is required");
		return false;
	}
	if ( IsAlphaNumeric(vfrmStep1txtPostalCode.value) == false) {
		ModalBox(false,"Zip Code must be alphanumeric (i.e. jsmith33)");
		vfrmStep1txtPostalCode.focus();
		return false;
	}
	if ( InLengthRange(vfrmStep1txtPostalCode.value, 5, 6) == false) {
		ModalBox(false,"Zip Code must be between 5 and 6 characters");
		vfrmStep1txtPostalCode.focus();
		return false;
	}
	if(vfrmStep1pasPassword2.value != vfrmStep1pasPassword.value) {
	   ModalBox(false,"Passwords do not match.  Please re-enter your password.");
	   return false;
	}		var dateTarget = new Date(1985, 12, 6, 0, 0, 0)
	var dateEntered = new Date(vfrmStep1dteBirthDate_year, vfrmStep1dteBirthDate_month, vfrmStep1dteBirthDate_day , 0, 0, 0)
	if ((dateTarget - dateEntered) < 0) {
		alert('You must be at least 18 years old to register.');
	   document.frmStep1.BirthDate_year.focus();
		return false;
	}
}

</script>

<script language=JavaScript>
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

</body>
</html>