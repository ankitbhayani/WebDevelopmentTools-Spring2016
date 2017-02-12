<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page session="false" %>

<!doctype HTML>
<html>
      <HEAD>
      <TITLE>Searching for member with lookupNumberID</TITLE>
	  <style>
				<!-- Latest compiled and minified CSS -->
		<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">

		<!-- jQuery library -->
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>

		<!-- Latest compiled JavaScript -->
		<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
</style>
      </HEAD>
      <BODY BGCOLOR='#B388FF'>
            <c:choose>
	  			<c:when test="${empty requestScope.user}">
	  				 ERROR
	  				<PRE>NO Results Found with this search</PRE>
	  					
	  			</c:when>
			  	<c:otherwise>
			  			<H3>Searching for Member ID: <c:out value="${requestScope.user.userID}"></c:out></H3>
      
					        <div class="container">
							<TABLE BORDER='1' class="table">
							<thead>
								<TR BGCOLOR='#D6DFFF'>
									<TH><B>Picture</B></TH>
									<TH><B>User Name</B></TH>
									<TH><B>Gender</B></TH>
									<TH><B>City / State</B></TH>
									<TH><B>Country</B></TH>
									<TH><B>About User</B></TH>
									<TH><B>User Profile</B></TH>
									
							</TR>
							</thead>
							<tbody>
							<TR>
						        	
									<TD><img id="imageFetched" src='<c:url value="${requestScope.user.fileLocation}"/>' alt='User_Image' /></TD>
									<TD><c:out value="${requestScope.user.userName}"></c:out></TD>
									<TD><c:out value="${requestScope.user.gender}"></c:out></TD>
									<TD><c:out value="${requestScope.user.city}/${requestScope.user.state}"></c:out></TD>
									<TD><c:out value="${requestScope.user.country}"></c:out></TD>
						
									<TD><c:out value="${requestScope.user.aboutMe1}"></c:out></TD>
									
									<TD> <A href='details.htm?type=1&data=<c:out value="${requestScope.user.userName}"></c:out>'>
									<IMG id='DetailsID' SRC='<c:url value="/resources/images/product-details-button.png"/>' alt='details_icon' />
									</A></TD>
									<!-- <TD> <form id="getDetails" action="details.htm?type=1&data=<c:out value="${requestScope.user.userName}"></c:out>" method="POST"></form><a href="javascript:alert(document.getElementById('getDetails'));"><IMG SRC='<c:url value="/resources/images/product-details-button.png"/>' alt='details_icon/'></a> </TD>-->
									<input type='hidden' value='<c:out value="${requestScope.user.userName}"></c:out>' name='hiddenUser'/>
									
								
					  	     </TR>
					  		 </tbody>
					        </TABLE>
						
			  		
			  	</c:otherwise>
		  	</c:choose>
      
      	</div>
      	<script>
      		$(document).ready(function(){
      			//$("<IMG>").click(function(){ alert("MODAL");})
      		});
      	</script>
	  </BODY>
      </HTML>
			
	