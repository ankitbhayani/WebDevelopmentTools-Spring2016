<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
<head>
	 <title>Add User Form</title>
     <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap-theme.min.css">
	 <link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
	 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
	 <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
	<script src="http://code.jquery.com/jquery-1.10.2.js"></script>
	<script src="http://code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
	<script src="<c:url value='/resources/javascript/matchnet.js'/>"></script>
	<script src="<c:url value='/resources/javascript/region3.js'/>"></script>
	<script src="<c:url value='/resources/is/im.js'/>"></script>
	<link rel="stylesheet" type="text/css" href="<c:url value='/resources/lib/css/as.css'/>">
	<link rel="stylesheet" type="text/css" href="<c:url value='/resources/lib/css/common.css'/>">
	
		
</head>

<body bgcolor="#ffffff" text="#000000" leftmargin=0 topmargin=0
	marginwidth=0 marginheight=0>
	<div class="container">

		<br />
		<br />

		<h1>NEU DateFinder New User Registration</h1>
		<form:form commandName="user" name="frmStep1" method="post" action="confirmation.htm"
			enctype="multipart/form-data"
			onSubmit="return validateFormfrmStep1()">

			<div class="table-responsive">
				<table class="table" border="1">
					<tr>
						<td>User Name:</td>
						<td><form:input path="UserName" id="username" name="UserName" value="" size="20" maxlength="25" 
								required="true" /><font color="red"><form:errors path="UserName"/></font>
								<span id='username_availability_result'></span></td>
					</tr>

					<tr>
						<td>Password:</td>
						<td><form:input type="password" id="password1" path="UserPassword"  name="Password" value="" maxlength="16"
								size="20" required="true" />&nbsp;(confidential)<font color="red"><form:errors path="UserPassword"/></font></td>
					</tr>

					<tr>
						<td>Re-enter your password:</td>
						<td><input type="password" id="password2" name="Password2" value="" maxlength="16"
							maxlength="16" size="20" required="true" />&nbsp;</td>
					</tr>


					<tr>
						<td>Date of Birth:</td>
						<td><form:select path="DOBmonth" required="true" name="BirthDate_month">
								<form:option value="1">Jan</form:option>
								<form:option value="2">Feb</form:option>
								<form:option value="3">Mar</form:option>
								<form:option value="4">Apr</form:option>
								<form:option value="5">May</form:option>
								<form:option value="6">Jun</form:option>
								<form:option value="7">Jul</form:option>
								<form:option value="8">Aug</form:option>
								<form:option value="9">Sep</form:option>
								<form:option value="10">Oct</form:option>
								<form:option value="11">Nov</form:option>
								<form:option value="12">Dec</form:option>
							</form:select>
							<form:select path="DOBday" required="true" name="BirthDate_day">
								<form:option value="1">1</form:option>
								<form:option value="2">2</form:option>
								<form:option value="3">3</form:option>
								<form:option value="4">4</form:option>
								<form:option value="5">5</form:option>
								<form:option value="6">6</form:option>
								<form:option value="7">7</form:option>
								<form:option value="8">8</form:option>
								<form:option value="9">9</form:option>
								<form:option value="10">10</form:option>
								<form:option value="11">11</form:option>
								<form:option value="12">12</form:option>
								<form:option value="13">13</form:option>
								<form:option value="14">14</form:option>
								<form:option value="15">15</form:option>
								<form:option value="16">16</form:option>
								<form:option value="17">17</form:option>
								<form:option value="18">18</form:option>
								<form:option value="19">19</form:option>
								<form:option value="20">20</form:option>
								<form:option value="21">21</form:option>
								<form:option value="22">22</form:option>
								<form:option value="23">23</form:option>
								<form:option value="24">24</form:option>
								<form:option value="25">25</form:option>
								<form:option value="26">26</form:option>
								<form:option value="27">27</form:option>
								<form:option value="28">28</form:option>
								<form:option value="29">29</form:option>
								<form:option value="30">30</form:option>
								<form:option value="31">31</form:option>
							</form:select>
							<form:select path="DOByear" name="BirthDate_year" required="true">
								<form:option value="1986">1986</form:option>
								<form:option value="1985">1985</form:option>
								<form:option value="1984">1984</form:option>
								<form:option value="1983">1983</form:option>
								<form:option value="1982">1982</form:option>
								<form:option value="1981">1981</form:option>
								<form:option value="1980">1980</form:option>
							</form:select>&nbsp;&nbsp;</td>
					</tr>



					<tr>
						<td>Email address:</td>
						<td><form:input name="Email"  id="Email"  path="Email" value="" required="true"
								size="20" />&nbsp;(confidential)<font color="red"><form:errors path="Email"/></font></td>
					</tr>

					<tr>
						<td>You are a:</td>
						<td><form:radiobutton name="GenderID" path="Gender" value="Male"
								required="true" />Male <form:radiobutton path="Gender"
								value="Female" />Female</td>
					</tr>

					<tr>
						<td>Looking for a:</td>
						<td><form:radiobutton name="SeekingGenderID" path="SeekingGender" value="Male"
								required="true" />Male <form:radiobutton path="SeekingGender" name="SeekingGenderID"
								value="Female" />Female</td>
					</tr>

					<tr>
						<td valign=middle>Country:</td>
						<td><form:select path="Country" name="CountryRegionID" required="true">
								<form:option value="India">India</form:option>
								<form:option value="China">China</form:option>
								<form:option value="USA">USA</form:option>
							</form:select></td>
					</tr>


					<tr>
						<td valign=middle>State:</td>
						<td><form:input name="State" path="State" value=""
								onChange="stripWhiteSpace(this);" size="20" required="true"></form:input>
								<font color="red"><form:errors path="State"/></font></td>
					</tr>

					<tr>
						<td valign=middle>City:</td>
						<td><form:input name="City" path="City" value=""
								onChange="stripWhiteSpace(this);" size="20" required="true" />
								<font color="red"><form:errors path="City"/></font></td>
					</tr>

					<tr>
						<td valign=middle>Zip Code:</td>
						<td><form:input  name="PostalCode" path="PostalCode" value=""
								onChange="stripWhiteSpace(this);" size="20" required="true" /></td>
					</tr>

					<tr>
						<td align="left" valign="top"><font class="defaultSmall">What
								is the first thing you want people to know about you? <br>
							<a
								href="javascript:launchWindow('greatEssays.html','Help',650,560,'');"
								class="defaultSmall">Need help?</a>
						</font></td>
						<td valign="top"><form:textarea path="AboutMe1"
								class="defaultSmall" rows="3" height="10" cols="30"
								maxlength="2000"></form:textarea></td>
					</tr>

					<tr>
						<td align="left" valign="top"><font class="boldSmall">Upload
								your photo(Max Size: 5MB): </font><br>
						<font class="defaultSmall"><a
								href="javascript:launchWindow('greatPhotos.html','Help',650,560,'');"
								class="defaultSmall">Need help?</a></font></td>
						<td valign="top"><input type="file" name="photo" value=""><input></td>
					</tr>


					<tr>
						<td colspan="3">
							<table>
								<tr>
									<td><input type="checkbox" required /> &nbsp;&nbsp;I
										confirm that I have read and agreed to the <a href="#"
										onClick="javascript:launchWindow('termsandconditions.html','TermsAndCond',700,550,'');"
										class="default">Terms and Conditions of Service</a> of
										membership at CSE220ServiceByYusufOzbek.com</td>
								</tr>
							</table>
						</td>

					</tr>

					<tr>
						<td colspan="3" align="center"><input type="submit" name="btnContinue"
							id="submitButton" Value="Become a Member!" /></td>
					</tr>

				</table>
			</div>
		</form:form>

	</div>
	<script>
	
	
	
		 var blnAbortValidation = false;

		 function validateFormfrmStep1() {
			//alert("VALIDATION ON");
			
			if (blnAbortValidation == true) {
				blnAbortValidation = false;
				return true;
			}

			//alert("READY");
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
				
			alert(vfrmStep1txtEmail);
			
			if (IsEmpty(vfrmStep1txtUserName, 'text')) {
				ModalBox(false, "User Name: is required");
				return false;
			}
			if (InLengthRange(vfrmStep1txtUserName.value, 2, 25) == false) {
				ModalBox(false,
						"User Name: must be between 2 and 25 characters");
				vfrmStep1txtUserName.focus();
				return false;
			}
			if (IsEmpty(vfrmStep1pasPassword, 'password')) {
				ModalBox(false, "Password: is required");
				return false;
			}
			if (InLengthRange(vfrmStep1pasPassword.value, 4, 16) == false) {
				ModalBox(false, "Password: must be between 4 and 16 characters");
				vfrmStep1pasPassword.focus();
				return false;
			}
			if (IsEmpty(vfrmStep1pasPassword2, 'password')) {
				ModalBox(false, "Re-enter your password: is required");
				return false;
			}
			if (InLengthRange(vfrmStep1pasPassword2.value, 4, 16) == false) {
				ModalBox(false,
						"Re-enter your password: must be between 4 and 16 characters");
				vfrmStep1pasPassword2.focus();
				return false;
			}
			if (vfrmStep1dteBirthDate_month == "") {
				ModalBox(false, "Date of Birth: is required");
				document.frmStep1.BirthDate_month.focus();
				return false;
			}
			if (vfrmStep1dteBirthDate_day == "") {
				ModalBox(false, "Date of Birth: is required");
				document.frmStep1.BirthDate_day.focus();
				return false;
			}
			if (vfrmStep1dteBirthDate_year == "") {
				ModalBox(false, "Date of Birth: is required");
				document.frmStep1.BirthDate_year.focus();
				return false;
			}
			if (!IsValidDate(vfrmStep1dteBirthDate_month,
					vfrmStep1dteBirthDate_day, vfrmStep1dteBirthDate_year)) {
				ModalBox(false, "The Date of Birth: field is not a valid date");
				document.frmStep1.BirthDate_day.focus();
				return false;
			}
			if (IsEmpty(vfrmStep1txtEmail, 'text')) {
				ModalBox(false, "Email address: is required");
				return false;
			}
			if (IsEmail(vfrmStep1txtEmail.value, 3) == false) {
				ModalBox(false, "Email address: is not a valid email address");
				vfrmStep1txtEmail.focus();
				return false;
			}
			if (InLengthRange(vfrmStep1txtEmail.value, null, 255) == false) {
				ModalBox(false,
						"Email address: cannot have more than 255 characters");
				vfrmStep1txtEmail.focus();
				return false;
			}
			if (IsEmpty(vfrmStep1radGenderID, 'radio')) {
				ModalBox(false, "Your Gender is required");
				return false;
			}
			if (IsEmpty(vfrmStep1radSeekingGenderID, 'radio')) {
				ModalBox(false, "Looking for a: is required");
				return false;
			}
			if (IsEmpty(vfrmStep1selCountryRegionID, 'select')) {
				ModalBox(false, "Country is required");
				return false;
			}
			if (IsEmpty(vfrmStep1txtPostalCode, 'text')) {
				ModalBox(false, "Zip Code is required");
				return false;
			}
			if (IsAlphaNumeric(vfrmStep1txtPostalCode.value) == false) {
				ModalBox(false, "Zip Code must be alphanumeric (i.e. jsmith33)");
				vfrmStep1txtPostalCode.focus();
				return false;
			}
			if (InLengthRange(vfrmStep1txtPostalCode.value, 5, 6) == false) {
				ModalBox(false, "Zip Code must be between 5 and 6 characters");
				vfrmStep1txtPostalCode.focus();
				return false;
			}
			if (vfrmStep1pasPassword2.value != vfrmStep1pasPassword.value) {
				ModalBox(false,
						"Passwords do not match.  Please re-enter your password.");
				return false;
			}
			var dateTarget = new Date(1985, 12, 6, 0, 0, 0)
			var dateEntered = new Date(vfrmStep1dteBirthDate_year,
					vfrmStep1dteBirthDate_month, vfrmStep1dteBirthDate_day, 0,
					0, 0)
			if ((dateTarget - dateEntered) < 0) {
				alert('You must be at least 18 years old to register.');
				document.frmStep1.BirthDate_year.focus();
				return false;
			}
		}
	</script>
	<script>
	$(document).ready(function(){
		$("#username").blur(function(){
	        //get the username  
	        var username = $('#username').val();
	        
	        $.ajax({
					url: 'checkUserName.htm',
					data: {username: username},
					type: 'post',
					success: function(response){
			
					   if(response.indexOf("Available") == -1 )	{                
						 		$("#username_availability_result").html('Sorry this username is not Available....').addClass('myinfo').fadeTo(900,1,function(){
						 			$("#submitButton").prop("disabled",true);	
						 			$("#username").css({ "border": '#FF0000 3px solid'});
						 			$("#username").focus();
								});
					   }
					   else{
						   $("#username_availability_result").html('Hurray!! this username is Available....').addClass('myinfo').fadeTo(900,1,function(){
					 			$("#submitButton").prop("disabled",false);
					 			$("#username").css({ "border": '#00FF00 3px solid'});
							});  
					   } 
					   
				}
	        });
	        
	    });
		
		
		
		$("#password2").blur(function(){
			var  password1 = $('#password1').val();
			var  password2 = $('#password2').val();
			
			if(password1!=password2){
				alert("Both the passwords do not match..")
				$("#password2").focus();	
			}
			
		});
		
		$('#Email').blur(function() {

			var Email = $('#Email').val();
													// Checking Empty Fields
		    if ($.trim(Email).length == 0) {
				alert('Email is mandatory');
			}
			
			if (validateEmail(Email)) {
				//alert('Nice!! your Email is valid, now you can continue..');
			} else {
				alert('Invalid Email Address');
				$("#Email").focus();	
			}
		});
						
		// Function that validates email address through a regular expression.
		function validateEmail(Email) {
			var filter = /^[\w\-\.\+]+\@[a-zA-Z0-9\.\-]+\.[a-zA-z0-9]{2,4}$/;
			if (filter.test(Email)) {
				return true;
			} else {
				return false;
			}
		}
		
		$('#submitButton').click(function(){
			 var username = $('#username').val();
		        
		        $.ajax({
						url: 'checkUserName.htm',
						data: {username: username},
						type: 'post',
						success: function(response){
				
						   if(response.indexOf("Available") == -1 )	{                
							 		$("#username_availability_result").html('Sorry this username is not Available....').addClass('myinfo').fadeTo(900,1,function(){
							 			$("#submitButton").prop("disabled",true);	
							 			$("#username").css({ "border": '#FF0000 3px solid'});
							 			$("#username").focus();
									});
						   }
						   else{
							   $("#username_availability_result").html('Hurray!! this username is Available....').addClass('myinfo').fadeTo(900,1,function(){
						 			$("#submitButton").prop("disabled",false);
						 			$("#username").css({ "border": '#00FF00 3px solid'});
								});  
						   } 
						   
					}
		        });
		});
		
		
	});
	</script>

</body>
</html>