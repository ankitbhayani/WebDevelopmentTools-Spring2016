<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page session="false" %>

<!doctype HTML>
<html>
<HEAD>
		<TITLE>Change password for user: <c:out value="${userName}"></c:out></TITLE>
			  <style>
				<!-- Latest compiled and minified CSS -->
		<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">

		<!-- jQuery library -->
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>

		<!-- Latest compiled JavaScript -->
		<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
</style>
    </HEAD>
    <BODY BGCOLOR='#4FC3F7'>
    <H3>Welcome <c:out value="${userName}"></c:out></H3>
     <form name='changePasswordForm' method='post' action="changePassword.htm">
		<p><table width=600 bgcolor='#FFFFEF' border='1' cellpadding='2' cellspacing='4' class="table">
		<tr bgcolor='#EFEFCE'>
		   <td colspan='2'><b>Password Change Form</b></td>
		</tr>

		<TR>
		<TD><b>Please Enter your old password: </b></TD>
		<TD><input type='password' name='oldpass' value=''></TD>
		</TR>
		   
		<TR>
		<TD><b>Enter NEW password: </b></TD>
		<TD><input type='password' name='newpass1' value=''></TD>
		</TR>
		   
		<TR>
		<TD><b>Enter NEW password again: </b></TD>
		<TD><input type='password' name='newpass2' value=''></TD>
		</TR>
		 
    
        <TR>
        <TD COLSPAN='6' ALIGN='center'><input type='submit' value='Change Password'></TD>
        </TR>
        </TABLE>
        </FORM>
	 </BODY>
      </HTML>
	