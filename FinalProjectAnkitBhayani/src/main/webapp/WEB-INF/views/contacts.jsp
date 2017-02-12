
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
		<script src="http://code.jquery.com/jquery-1.10.2.js"></script>
		<script src="http://code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
	
    </head>
    <body>
    <div id="wrapper">
		<!-- Top Nav Bar Starts -->
		<nav class="navbar navbar-default">
			<div class="navbar-header">
				<a class="navbar-brand" href="#">Welcome <span
					class="prodheader"><c:out value="${userName}"></c:out></span></a>
			</div>
			
		</nav>

        <div id="searchForm">
    	<div class="table-responsive">
        <table border ="1" class="table">
            <tr>
                <th>Contact ID</th>
                <th>Contact Name</th>
                <th>Date Added</th>
                <th>First Comment</th>
                <!-- <th>Send Review to Admin</th> -->                
            </tr>
            
        <c:forEach var="contact" items="${contactList}">
            <tr>
                <td><c:out value="${contact.contactID}"></c:out></td>
                <td><c:out value="${contact.contactName}"></c:out></td>
                <td><c:out value="${contact.dateAdded}"></c:out></td>
                <td><c:out value="${contact.comments}"></c:out></td>
                       
            </tr>
        </c:forEach>  
        </table>
        </div>
        </div>
    </body>
</html>
