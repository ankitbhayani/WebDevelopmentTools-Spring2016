
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page session="false" %>


<!DOCTYPE html>
<html>
<head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>User View</title>        
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap-theme.min.css">
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
		<link rel="stylesheet" href="<c:url value='/resources/lib/css/styleLoggedIn.css'/>">
		<link rel="stylesheet" type="text/css" href="<c:url value='/resources/lib/css/normalize.css'/>" />
		<link rel="stylesheet" type="text/css" href="<c:url value='/resources/lib/css/demo.css'/>" />
		<link rel="stylesheet" type="text/css" href="<c:url value='/resources/lib/css/tabs.css'/>" />
		<link rel="stylesheet" type="text/css" href="<c:url value='/resources/lib/css/tabstyles.css'/>" />
		<link rel="stylesheet" type="text/css" href="<c:url value='/resources/lib/css/queries.css'/>" />
		<script src="http://code.jquery.com/jquery-1.10.2.js"></script>
		<script src="http://code.jquery.com/ui/1.11.4/jquery-ui.js"></script>	
		<script src="<c:url value="/resources/assets/js/modernizr.custom.js"/>"></script>
		<script src="<c:url value="/resources/assets/js/homeUserView.js"/>"></script>
	    <script src="<c:url value="/resources/assets/js/tabsAndMultiSelection.js"/>"></script>
    </head>
<body>
	<div id="wrapper">
		<!-- Top Nav Bar Starts -->
		<nav class="navbar navbar-default">
			<div class="navbar-header">
				<a class="navbar-brand" href="#">Welcome <span
					class="prodheader"><c:out value="${userName}"></c:out></span></a>
			</div>
			<ul class="nav navbar-right">
				<li><a id="logoutICON" href="logout.htm"><strong>LOGOUT
					</strong> <img src='<c:url value="/resources/images/exit.png"/>' alt='logout_icon' /></a></li>
				<li></li>
				<li></li>
			</ul>
		</nav>
		<!-- Top Nav Bar Ends -->
		<div class="left">
			<ul id="navigation">
				<li class="home"><form id="user-detail-form" action="details.htm?type=2&data=<c:out value="${requestScope.userName}"></c:out>" method="POST"></form>
						<a href="javascript:document.getElementById('user-detail-form').submit();"><span
						class="glyphicon glyphicon-dashboard"></span> View/Complete My Details</a></li>
				<li class="about"><form id="update-profile-form" action="updateProfile.htm" method="POST"></form>
						<a href="javascript:document.getElementById('update-profile-form').submit();"><span
						class="glyphicon glyphicon-signal"></span> Update My Information</a></li>
				<li class="search"><a href="viewContacts/users/<c:out value="${requestScope.userName}"></c:out>"><span
						class="glyphicon glyphicon-list-alt"></span> View My Contacts</a></li>
				<li class="rssfeed"><a href="changePassword.htm"><span
						class="glyphicon glyphicon-calendar"></span> Change my password</a></li>
				<li class="podcasts"><a href="logout.htm"><span
						class="glyphicon glyphicon-wrench"></span> Click here to logout</a></li>
			</ul>
		</div>

		<div class="container">

			<DIV class="right">

				<div class="navigation">
					<ul class="hamburger">
						<li id="menu-list"><span><img src='<c:url value="/resources/images/menu.png"/>'
								alt='menu icon' width='20px' id='hamburIcon' /></span></li>
					</ul>
					<ul id="menu">
						<li class="link-list-item"><a
							href="javascript:activateTab('page1')">Messages</a></li>
						<li class="link-list-item"><a
							href="javascript:activateTab('page2')">LookupMemberID</a></li>
						<li class="link-list-item"><a
							href="javascript:activateTab('page3')">LookupMemberName</a></li>
						<li class="link-list-item"><a
							href="javascript:activateTab('page4')">QuickSearch</a></li>

					</ul>
				</div>


				<br /> <br />
				<div id="tabCtrl">
					<div id="page1" style="display: block;">
						<form name='deleteMessagesForm' method='post' action=''>
							<div class="table-responsive">
								<TABLE BORDER='1' class="table" id="customers">
									<thead>
										<TR BGCOLOR='#D6DFFF'>
											<TH id="msgID"><B>Message ID</B>
											</TH>
											<TH id="useR"><B>From User</B>
											</TH>
											<TH id="msG"><B>Message</B>
											</TH>
											<TH id="daTe"><B>Date</B>
											</TH>
											<TH id="rePly"><B>Reply</B>
											</TH>
											<TH id="deLEte"><input id="checkboxnumone"
												type="checkbox" name="name" value="name"
												onclick="checkall(this)"><B> &nbsp;Delete
													Messages</B>
											</TH>
										</TR>
									</thead>

									<tbody>
									<c:forEach var="message" items="${messageList}">
										<TR>
											<TD><c:out value="${message.messageID}"></c:out></TD>
											<TD><c:out value="${message.fromUser}"></c:out></TD>
											<TD><c:out value="${message.message}"></c:out></TD>
											<TD><c:out value="${message.messageDate}"></c:out></TD>
											<TD><img src='<c:url value="/resources/images/1450251654_reply.png"/>' ALT='Reply'
												id='replyImage' class="replyIcon" data-toggle='modal' data-target='#myModal1'>
												<div class="modal fade" id="myModal1" role="dialog">
													<div class="modal-dialog">
													   <form role="form" name="msg_frm"  id="msg_frm"  method="POST" class="msg-form" action="">
															<!-- Modal content-->
															<div class="modal-content">
																<div class="modal-header">
																	<button type="button" class="close"
																		data-dismiss="modal">&times;</button>
																	<h4 class="modal-title">
																		Reply to :<input type="text" name="recipient" placeholder='' size="40"
																		 id="txtReceiver"  value"" disabled="true"/>
																	</h4>
																	<h4 class="modal-title">
																		From : &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="fromUser" 
																		value="<c:out value="${userName}"></c:out>" size="40" id="txtSender" disabled="true"/>
																	</h4>
																</div>
																<div class="modal-body">
																	<p>
																		Message (Enter up to 4000 characters)<br />
																		<textarea name='messagefromTextArea' id='textMessage' cols='58' rows='7' wrap='VIRTUAL'></textarea>
																	</p>
																</div>
																<div class="modal-footer">
																	<div id="msgbox" pull='left'></div>
																	<!--<button type="button" class="btn btn-default">Send</button>-->
																	<input type="submit" class="btn  btn-default"
																		id="ajaxcall" value="Send!">
																	<button type="button" class="btn btn-default"
																		data-dismiss="modal">Cancel</button>
																</div>
															</div>
														</form>
													</div>
												</div></TD>
											<TD><input type='checkbox' id='checkbox_check' class="chkboxes"
												name='msgList' value='<c:out value="${message.messageID}"></c:out>'> Delete</TD>
										</TR>
									 </c:forEach>  
									</tbody>
						
													 
													 <TR>
													 <TD COLSPAN='6' ALIGN='center'>You have ${fn:length(messageList)} messages.</TD>
													 </TR>
													 
													 <TR>
													 <TD COLSPAN='6' ALIGN='center'><input type='submit'  id='submitbutton' value='Delete Selected Messages' disabled></TD>
													 <div id='msgbox1' pull='left'></div>
													 </TR>
													 
													 </TABLE>
													 </DIV>
													 </FORM>         
										  
										  </div>
										  <div id="page2" style="display: none;">
													 <form name='lookupByNumberForm' method='post' action='lookupByNumber.jsp'>
													 <p><table width='600' bgcolor='#FFFFEF' border='1' cellpadding='2' cellspacing='4' class='table' id='numbers'>
													 <tr bgcolor='#EFEFCE'>
													    <td colspan='2'><b>Look up by Member Number</b></td>
													 </tr>
													 <tr>
													    <td colspan='2'>Please enter the member number of the person you want to look up.</td>
													 </tr>
													 <tr>
													    <td width='50%' align='right'><input type='number' name='LookupMemberID' value='' size='18' id='apply' maxlength='20'></td>
													    <td width='50%' align='left'><input type='submit'  id='cmdGo1' name='cmdGo1' value='See Profile'><span id='errmsg'></span></td>
													 </tr>
													 </table>
													 </form>

													 <div id='srchResultByNumber' pull='left'></div>
											 
										 </div>      			  
										 

										 <div id="page3" style="display: none;">
												 
												 <form name='lookupByNameForm' method='post' action='lookupByName.jsp'>
												 <p><table width='600' bgcolor='#FFFFEF' border='1' cellpadding='2' cellspacing='4' class='table' id='names'>
												 <tr bgcolor='#EFEFCE'>
												    <td colspan='2'><b>Look up by Username</b></td>
												 </tr> 
												 <tr>
												    <td colspan='2'>Please enter the username of the person you want to look up.</td>
												 </tr>
												 <tr>
												    <td width='50%' align='right'><input type='text'  id='tags' name='LookupMemberName' value='' size='18' maxlength='20'></td>
												    <td width='50%' align='left'><input type='submit' name='cmdGo2' id='cmdGo2' value='See Profile'> <span id='stsmsg'></span></td>
												 </tr>
												 </table>
												 </form>
												 
												 <div id='srchResultByName' pull='left'></div>
											  </div>	
										 
										<div id="page4" style="display: none;">
															 <form name='searchUserForm' method='post' action='searchUsers.jsp'>
															 <p><table width=600 bgcolor='#FFFFEF' border='1' cellpadding='2' cellspacing='4' class='table' id='search'>
															 <tr bgcolor='#EFEFCE'>
															    <td colspan='2'><b>Quick Search</b></td>
															 </tr>
															 <tr>
															    <td width='50%' align='right'>
															       <b>Show Me:</b>
															       <select name='SeekingGenderID' id='SeekingGenderID' value=''>
															       <option value='Male'>Male</option>
															       <option value='Female' selected>Female</option>
															       </select>
															    </td>
															    <td width='50%' align='left'>
															       <b>Seeking a:</b>
															       <select name='GenderID'  id='GenderID' value=''>
															       <option value='Male' selected>Male</option>
															       <option value='Female'>Female</option>
															       </select>
															    </td>
															 </tr>
															 <tr>
															    <td width='50%' align='right'>
															       <b>Age:</b><input type='number' id='minAge'  name='MinAge' value='' size='2' maxlength='2' required>
															    </td>
															    <td width='50%' align='left'>
															       <b>to</b><input type='number' id='maxAge'  name='MaxAge' value='' size='2' maxlength='2' required>
															    </td>
															 </tr>
															 <tr>
															    <td width='50%' align='right'>
															       <b>Search Location:</b>
															    </td>
															    <td width='50%' align='left'>
															       <table border=0 cellpadding=0 cellspacing=0>
															          <tr>
															             <td><b>Country: </b></td>
															             <td>
															 <select name='CountryRegionID' id='CountryRegionID'>
															 	<option value='Afghanistan'         >Afghanistan</option>
															 	<option value='Albania'             >Albania</option>
															 	<option value='Algeria'             >Algeria</option>
															 	<option value='Andorra'             >Andorra</option>
															 	<option value='Angola'              >Angola</option>
															 	<option value='Anguilla'            >Anguilla</option>
															 	<option value='Antarctica'          >Antarctica</option>
															 	<option value='Antigua & Barbuda'   >Antigua & Barbuda</option>
															 	<option value='Argentina'           >Argentina</option>
															 	<option value='Armenia'             >Armenia</option>
															 	<option value='Aruba'               >Aruba</option>
															 	<option value='Australia'           >Australia</option>
															 	<option value='Austria'             >Austria</option>
															 	<option value='Azerbaijan'          >Azerbaijan</option>
															 	<option value='Bahamas'             >Bahamas</option>
															 	<option value='Bahrain'             >Bahrain</option>
															 	<option value='Bangladesh'          >Bangladesh</option>
															 	<option value='Barbados'            >Barbados</option>
															 	<option value='Belarus'             >Belarus</option>
															 	<option value='Belgium'             >Belgium</option>
															 	<option value='Belize'              >Belize</option>
															 	<option value='Benin'               >Benin</option>
															 	<option value='Bermuda'             >Bermuda</option>
															 	<option value='Bhutan'              >Bhutan</option>
															 	<option value='Bolivia'             >Bolivia</option>
															 	<option value='Bosnia-Herzgna'      >Bosnia-Herzgna</option>
															 	<option value='Botswana'            >Botswana</option>
															 	<option value='Brazil'              >Brazil</option>
															 	<option value='Brunei'              >Brunei</option>
															 	<option value='Bulgaria'            >Bulgaria</option>
															 	<option value='Burkina Faso'        >Burkina Faso</option>
															 	<option value='Burundi'             >Burundi</option>
															 	<option value='Cambodia'            >Cambodia</option>
															 	<option value='Cameroon'            >Cameroon</option>
															 	<option value='Canada'              >Canada</option>
															 	<option value='Cape Verde'          >Cape Verde</option>
															 	<option value='Cayman Islands'      >Cayman Islands</option>
															 	<option value='Central African Rep.'>Central African Rep.</option>
															 	<option value='Chad'                >Chad</option>
															 	<option value='Chile'               >Chile</option>
															 	<option value='China'               >China</option>
															 	<option value='Christmas Island'    >Christmas Island</option>
															 	<option value='Cocos (Keeling) Is.' >Cocos (Keeling) Is.</option>
															 	<option value='Colombia'            >Colombia</option>
															 	<option value='Comoros'             >Comoros</option>
															 	<option value='Congo'               >Congo</option>
															 	<option value='Congo (Zaire)'       >Congo (Zaire)</option>
															 	<option value='Cook Islands'        >Cook Islands</option>
															 	<option value='Costa Rica'          >Costa Rica</option>
															 	<option value='Cote DIvoire'        >Cote D'Ivoire</option>
															 	<option value='Croatia (Hrvatska)'  >Croatia (Hrvatska)</option>
															 	<option value='Cyprus'              >Cyprus</option>
															 	<option value='Czech Rep.'          >Czech Rep.</option>
															 	<option value='Denmark'             >Denmark</option>
															 	<option value='Djibouti'            >Djibouti</option>
															 	<option value='Dominica'            >Dominica</option>
															 	<option value='Dominican Rep.'      >Dominican Rep.</option>
															 	<option value='East Timor'          >East Timor</option>
															 	<option value='Ecuador'             >Ecuador</option>
															 	<option value='Egypt'               >Egypt</option>
															 	<option value='El Salvador'         >El Salvador</option>
															 	<option value='Equatorial Guinea'   >Equatorial Guinea</option>
															 	<option value='Eritrea'             >Eritrea</option>
															   <option value='Estonia'             >Estonia</option>
															 	<option value='Ethiopia'            >Ethiopia</option>
															 	<option value='Falkland Is.'        >Falkland Is.</option>
															 	<option value='Faroe Islands'       >Faroe Islands</option>
															 	<option value='Fiji Islands'        >Fiji Islands</option>
															 	<option value='Finland'             >Finland</option>
															 	<option value='France'              >France</option>
															 	<option value='French Guiana'       >French Guiana</option>
															 	<option value='French Polynesia'    >French Polynesia</option>
															 	<option value='French So. Terr.'    >French So. Terr.</option>
															 	<option value='Gabon'               >Gabon</option>
															 	<option value='Gambia'              >Gambia</option>
															 	<option value='Georgia'             >Georgia</option>
															 	<option value='Germany'             >Germany</option>
															 	<option value='Ghana'               >Ghana</option>
															 	<option value='Gibraltar'           >Gibraltar</option>
															 	<option value='Greece'              >Greece</option>
															 	<option value='Greenland'           >Greenland</option>
															 	<option value='Grenada'             >Grenada</option>
															 	<option value='Guadeloupe'          >Guadeloupe</option>
															 	<option value='Guam'                >Guam</option>
															 	<option value='Guatemala'           >Guatemala</option>
															 	<option value='Guinea'              >Guinea</option>
															 	<option value='Guinea-Bissau'       >Guinea-Bissau</option>
															 	<option value='Guyana'              >Guyana</option>
															 	<option value='Haiti'               >Haiti</option>
															 	<option value='Honduras'            >Honduras</option>
															 	<option value='Hong Kong (China)'   >Hong Kong China</option>
															 	<option value='Hungary'             >Hungary</option>
															 	<option value='Iceland'             >Iceland</option>
															 	<option value='India'               >India</option>
															 	<option value='Indonesia'           >Indonesia</option>
															 	<option value='Ireland'             >Ireland</option>
															 	<option value='Israel'              >Israel</option>
															 	<option value='Italy'               >Italy</option>
															 	<option value='Jamaica'             >Jamaica</option>
															 	<option value='Japan'               >Japan</option>
															 	<option value='Jordan'              >Jordan</option>
															 	<option value='Kazakhstan'          >Kazakhstan</option>
															 	<option value='Kenya'               >Kenya</option>
															 	<option value='Kiribati'            >Kiribati</option>
															 	<option value='Korea, South'        >Korea, South</option>
															 	<option value='Kuwait'              >Kuwait</option>
															 	<option value='Kyrgyzstan'          >Kyrgyzstan</option>
															 	<option value='Laos'                >Laos</option>
															 	<option value='Latvia'              >Latvia</option>
															 	<option value='Lebanon'             >Lebanon</option>
															 	<option value='Lesotho'             >Lesotho</option>
															 	<option value='Liechtenstein'       >Liechtenstein</option>
															 	<option value='Lithuania'           >Lithuania</option>
															 	<option value='Luxembourg'          >Luxembourg</option>
															 	<option value='Macau (China)'       >Macau (China)</option>
															 	<option value='Macedonia'           >Macedonia</option>
															 	<option value='Madagascar'          >Madagascar</option>
															 	<option value='Malawi'              >Malawi</option>
															 	<option value='Malaysia'            >Malaysia</option>
															 	<option value='Maldives'            >Maldives</option>
															 	<option value='Mali'                >Mali</option>
															 	<option value='Malta'               >Malta</option>
															 	<option value='Martinique'          >Martinique</option>
															 	<option value='Mauritania'          >Mauritania</option>
															 	<option value='Mauritius'           >Mauritius</option>
															 	<option value='Mayotte'             >Mayotte</option>
															 	<option value='Mexico'              >Mexico</option>
															 	<option value='Moldova'             >Moldova</option>
															 	<option value='Monaco'              >Monaco</option>
															 	<option value='Mongolia'            >Mongolia</option>
															 	<option value='Montserrat'          >Montserrat</option>
															 	<option value='Morocco'             >Morocco</option>
															 	<option value='Mozambique'          >Mozambique</option>
															 	<option value='Myanmar'             >Myanmar</option>
															 	<option value='Namibia'             >Namibia</option>
															 	<option value='Nauru'               >Nauru</option>
															 	<option value='Nepal'               >Nepal</option>
															 	<option value='Netherlands'         >Netherlands</option>
															 	<option value='Netherlands Ant.'    >Netherlands Ant.</option>
															 	<option value='New Caledonia'       >New Caledonia</option>
															 	<option value='New Zealand'         >New Zealand</option>
															 	<option value='Nicaragua'           >Nicaragua</option>
															 	<option value='Niger'               >Niger</option>
															 	<option value='Nigeria'             >Nigeria</option>
															 	<option value='Niue'                >Niue</option>
															 	<option value='No. Mariana Is.'     >No. Mariana Is.</option>
															 	<option value='Norfolk Island'      >Norfolk Island</option>
															 	<option value='Norway'              >Norway</option>
															 	<option value='Oman'                >Oman</option>
															 	<option value='Pakistan'            >Pakistan</option>
															 	<option value='Palau'               >Palau</option>
															 	<option value='Panama'              >Panama</option>
															 	<option value='Papua new Guinea'    >Papua new Guinea</option>
															 	<option value='Paraguay'            >Paraguay</option>
															 	<option value='Peru'                >Peru</option>
															 	<option value='Philippines'         >Philippines</option>
															 	<option value='Pitcairn Is.'        >Pitcairn Is.</option>
															 	<option value='Poland'              >Poland</option>
															 	<option value='Portugal'            >Portugal</option>
															 	<option value='Puerto Rico'         >Puerto Rico</option>
															 	<option value='Qatar'               >Qatar</option>
															 	<option value='Reunion'             >Reunion</option>
															 	<option value='Romania'             >Romania</option>
															 	<option value='Russia'              >Russia</option>
															 	<option value='Rwanda'              >Rwanda</option>
															 	<option value='Saint Helena'        >Saint Helena</option>
															 	<option value='Saint Kitts & Nevis' >Saint Kitts & Nevis</option>
															 	<option value='Saint Lucia'         >Saint Lucia</option>
															 	<option value='Samoa'               >Samoa</option>
															 	<option value='San Marino'          >San Marino</option>
															 	<option value='Sandwich Islands'    >Sandwich Islands</option>
															 	<option value='Sao Tome & Prin.'    >Sao Tome & Prin.</option>
															 	<option value='Saudi Arabia'        >Saudi Arabia</option>
															 	<option value='Senegal'             >Senegal</option>
															 	<option value='Seychelles'          >Seychelles</option>
															 	<option value='Sierra Leone'        >Sierra Leone</option>
															 	<option value='Singapore'           >Singapore</option>
															 	<option value='Slovakia'            >Slovakia</option>
															 	<option value='Slovenia'            >Slovenia</option>
															 	<option value='Solomon Islands'     >Solomon Islands</option>
															 	<option value='Somalia'             >Somalia</option>
															 	<option value='South Africa'        >South Africa</option>
															 	<option value='Spain'               >Spain</option>
															 	<option value='Sri Lanka'           >Sri Lanka</option>
															 	<option value='St. Pierre & Miqn'   >St. Pierre & Miq'n</option>
															 	<option value='St. Vincent & Greds.'>St. Vincent & Gred's.</option>
															 	<option value='Sudan'               >Sudan</option>
															 	<option value='Suriname'            >Suriname</option>
															 	<option value='Svalbard & J. Mayn'  >Svalbard & J. May'n</option>
															 	<option value='Swaziland'           >Swaziland</option>
															 	<option value='Sweden'              >Sweden</option>
															 	<option value='Switzerland'         >Switzerland</option>
															 	<option value='Syria'               >Syria</option>
															 	<option value='Taiwan'              >Taiwan</option>
															 	<option value='Tajikistan'          >Tajikistan</option>
															 	<option value='Tanzania'            >Tanzania</option>
															 	<option value='Thailand'            >Thailand</option>
															 	<option value='The Vatican'         >The Vatican</option>
															 	<option value='Togo'                >Togo</option>
															 	<option value='Tokelau'             >Tokelau</option>
															 	<option value='Tonga'               >Tonga</option>
															 	<option value='Trinidad & Tobago'   >Trinidad & Tobago</option>
															 	<option value='Tunisia'             >Tunisia</option>
															 	<option value='Turkey'              >Turkey</option>
															 	<option value='Turkmenistan'        >Turkmenistan</option>
															 	<option value='Turks & Caicos Is.'  >Turks & Caicos Is.</option>
															 	<option value='Tuvalu'              >Tuvalu</option>
															 	<option value='UAE'                 >UAE</option>
															 	<option value='Uganda'              >Uganda</option>
															 	<option value='Ukraine'             >Ukraine</option>
															   <option value='United Kingdom'      >United Kingdom</option>
															 	<option value='Uruguay'             >Uruguay</option>
															 	<option value='USA'  selected       >USA</option>
															 	<option value='Uzbekistan'          >Uzbekistan</option>
															 	<option value='Vanuatu'             >Vanuatu</option>
															 	<option value='Venezuela'           >Venezuela</option>
															   <option value='Vietnam'             >Vietnam</option>
															   <option value='Virgin Islands (UK)' >Virgin Islands UK</option>
															 	<option value='Virgin Islands (USA)'>Virgin Islands USA</option>
															 	<option value='Wallis & Futuna Is.'>Wallis&Futuna Is.</option>
															 	<option value='Western Sahara'>Western Sahara</option><option value='Yemen'>Yemen</option><option value='Yugoslavia'>Yugoslavia</option><option value='Zambia'>Zambia</option><option value='Zimbabwe'>Zimbabwe</option></select></td>

										</tr><tr><td><b>State:</b><td><input type='text'name='stateName'id='srchStateParam'value=''size='18'maxlength='40'id='stateTags'></tr><tr><td><b>City</b>&#40;Optional&#41;:<td><input type='text'name='cityName'id='srchCityParam'value=''size='18'maxlength='40'></tr></table></td></tr><tr><td colspan='2'align='center'><input type='submit'id='cmdGo3'name='cmdGo3'value='Search'><span id='srchSts'></span></td></tr></table></form>

										<div id='srchResults'pull='left'></div>

										</DIV></DIV></DIV></DIV>
					
</body>
</html>
									