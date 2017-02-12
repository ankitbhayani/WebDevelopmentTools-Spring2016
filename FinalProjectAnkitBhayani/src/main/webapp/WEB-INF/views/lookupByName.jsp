<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page session="false" %>

<!doctype HTML>
	  <html>
      <HEAD>
      <TITLE>Searching for member with lookupName</TITLE>
	    <style>
				<!-- Latest compiled and minified CSS -->
		<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">

		<!-- jQuery library -->
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>

		<!-- Latest compiled JavaScript -->
		<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
</style>
      </HEAD>
      <BODY BGCOLOR='#F8BBD0'>
      <H3>Searching for Member: <c:out value="${requestScope.user.userName}"></c:out></H3>
      <c:choose>
  			<c:when test="${empty requestScope.usersList}">
  				 ERROR
  				<PRE>NO Results Found with this search</PRE>
  					
  			</c:when>
		  	<c:otherwise>
		  	 	<TABLE BORDER='1' class='table'>
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
						<c:forEach var="user" items="${requestScope.usersList}">
							<TR>
						        	
									<TD><img id="imageFetched" src='<c:url value="${user.fileLocation}"/>' alt='NO_Image' /></TD>
									<TD><c:out value="${user.userName}"></c:out></TD>
									<TD><c:out value="${user.gender}"></c:out></TD>
									<TD><c:out value="${user.city}/${user.state}"></c:out></TD>
									<TD><c:out value="${user.country}"></c:out></TD>
						
									<TD><c:out value="${user.aboutMe1}"></c:out></TD>
									
									<TD> <A href='details.htm?type=1&data=<c:out value="${user.userName}"></c:out>'>
									<IMG id='DetailsID' SRC='<c:url value="/resources/images/product-details-button.png"/>' alt='details_icon' />
									</A></TD>
									
					  	     </TR>
					  	 </c:forEach>    
				  		 </tbody>   
				        
				         </TABLE>
						  	 
		  	</c:otherwise>
  	 			
 	 </c:choose>
               
      </BODY>
      </HTML>
			
