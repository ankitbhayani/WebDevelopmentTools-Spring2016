<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page session="false" %>

    
<!DOCTYPE html>
<html>
    <head>
    	<title>ADMIN PAGE</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap-theme.min.css">
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
		<link rel="stylesheet" href="<c:url value='/resources/lib/css/styleLoggedIn.css'/>">
		<script src="http://code.jquery.com/jquery-1.10.2.js"></script>
		<script src="http://code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
        
    </head>
    <style>
        table{
            border:1px solid black;
            margin-right: 10px;
            padding: 2px;
        }
        a{
            text-decoration: underline;
            cursor: pointer;
            color:blue;
        }
        span{
            color: red;
        }
        
        #searchForm{
        	/*border: 1px solid blue;*/
        	width :48%;
        	margin-left: 6px;
        	float : left;
        }
        #msgForm{
        	/*border: 1px solid red;*/
        	width : 49%;
        	float: right;
        	margin-right: 6px;
        }
    </style>
    <script>
        function registrationFormDisplay() {
            if (document.getElementById("registrationForm").style.display == "none") {
                document.getElementById("registrationForm").style.display = "block";
                document.getElementById("myForm").reset();
                document.getElementById("success").innerHTML = "";
                document.getElementById("searchForm").style.display = "none"
            } else {
                document.getElementById("registrationForm").style.display = "none"
            }
        }

        function searchFormDisplay() {
            if (document.getElementById("searchForm").style.display == "none") {
                document.getElementById("searchForm").style.display = "block";
                document.getElementById("search").reset();
                document.getElementById("results").innerHTML = "";
                document.getElementById("registrationForm").style.display = "none";
            } else {
                document.getElementById("searchForm").style.display = "none";
            }
        }

        //AJAX

        var xmlHttp;
        xmlHttp = GetXmlHttpObject();
        function saveUser() {
             if (xmlHttp == null)
            {
                alert("Your browser does not support AJAX!");
                return;
            }
            var first = document.getElementById("first").value;
            var last = document.getElementById("last").value;
            var gender = document.getElementById("gender").value;
            var email = document.getElementById("email").value;
            var aboutMe = document.getElementById("aboutMe").value;

            var query="first="+first+"&last"+last+"&gender="+gender+"&email="+email+"&aboutMe="+aboutMe;
            xmlHttp.onreadystatechange=function stateChanged(){
                if(xmlHttp.readyState==4){
                    var json = JSON.parse(xmlHttp.responseText);
                    document.getElementById("success").innerHTML=json.successmsg;
                }
            };
            
            xmlHttp.open("POST","register.htm", true);
            xmlHttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
            xmlHttp.send(query);
            return false;
            
    }

        function getResults() {
            if (xmlHttp == null)
            {
                alert("Your browser does not support AJAX!");
                return;
            }
            var key = document.getElementById("name").value;
            var flag = document.querySelector('input[name = "search"]:checked').value;
            var query = "action=searchuser&key=" + key.trim() + "&flag=" + flag.trim();
            xmlHttp.onreadystatechange = function stateChanged()
            {
            	//alert(responseText);
            	//alert("Changed");
                if (xmlHttp.readyState == 4)
                {
                	//alert("state4")
                    document.getElementById("results").innerHTML = "";
                    var json = JSON.parse(xmlHttp.responseText);
                    //alert("before json");
                    //alert(xmlHttp.responseText);
                    //alert(json.users.UserName);
                    if (json.users.length > 0) {
                        var x = document.createElement("TABLE");
                        x.setAttribute("id", "myTable");
                        document.getElementById("results").appendChild(x);
                        var y = document.createElement("TR");
                        y.setAttribute("id", "myTr");
                        document.getElementById("myTable").appendChild(y);

                        var z = document.createElement("TH");
                        var t = document.createTextNode("UserID");

                        z.appendChild(t);
                        document.getElementById("myTr").appendChild(z);

                        var z = document.createElement("TH");
                        var t = document.createTextNode("UserName");
                        z.appendChild(t);
                        document.getElementById("myTr").appendChild(z);

                        var z = document.createElement("TH");
                        var t = document.createTextNode("City");
                        z.appendChild(t);
                        document.getElementById("myTr").appendChild(z);

                        var z = document.createElement("TH");
                        var t = document.createTextNode("State");
                        z.appendChild(t);
                        document.getElementById("myTr").appendChild(z);

                        var z = document.createElement("TH");
                        var t = document.createTextNode("Delete");
                        z.appendChild(t);
                        document.getElementById("myTr").appendChild(z);

                        for (var count = 0; count < json.users.length; count++) {
                            var y = document.createElement("TR");
                            y.setAttribute("id", "myTr" + count);
                            document.getElementById("myTable").appendChild(y);

                            var z = document.createElement("TD");
                            var t = document.createTextNode(json.users[count].UserID);
                            z.appendChild(t);
                            document.getElementById("myTr" + count).appendChild(z);

                            var z = document.createElement("TD");
                            var t = document.createTextNode(json.users[count].UserName);
                            z.appendChild(t);
                            document.getElementById("myTr" + count).appendChild(z);

                            var z = document.createElement("TD");
                            var t = document.createTextNode(json.users[count].City);
                            z.appendChild(t);
                            document.getElementById("myTr" + count).appendChild(z);

                            var z = document.createElement("TD");
                            var t = document.createTextNode(json.users[count].State);
                            z.appendChild(t);
                            document.getElementById("myTr" + count).appendChild(z);

                            var z = document.createElement("TD");
                            var a = document.createElement('a');
                            var id = json.users[count].UserID;
                            var rowID = "myTr" + count;
                            //alert(id);
                            //alert(rowID);
                            
                            var linkText = document.createTextNode("Delete");
                            a.appendChild(linkText);
                            a.title = "Delete";
                            a.onclick = (function (id, rowID) {
                                return function () {
                                    deleteRow(id, rowID);
                                }
                            })(id, rowID);
                            z.appendChild(a);
                            document.getElementById("myTr" + count).appendChild(z);
                        }
                    } else {
                        document.getElementById("results").innerHTML="Nothing Found";
                    }
                }
            };
            xmlHttp.open("POST", "searchuser.htm", true);
            xmlHttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
            xmlHttp.send(query);
            return false;
        }

        function deleteRow(userID, rowID) {
        	
            if (xmlHttp == null)
            {
                alert("Your browser does not support AJAX!");
                return;
            }

            var query = "action=delete&user=" + userID;

            xmlHttp.onreadystatechange = function stateChanged()
            {
                if (xmlHttp.readyState == 4)
                {
                    var row = document.getElementById(rowID);
                    row.parentNode.removeChild(row);
                }
            };
            xmlHttp.open("POST", "searchuser.htm", true);
            xmlHttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
            xmlHttp.send(query);
            return false;
        }

        function GetXmlHttpObject()
        {
            var xmlHttp = null;
            try
            {
                // Firefox, Opera 8.0+, Safari
                xmlHttp = new XMLHttpRequest();
            } catch (e)
            {
                // Internet Explorer
                try
                {
                    xmlHttp = new ActiveXObject("Msxml2.XMLHTTP");
                } catch (e)
                {
                    xmlHttp = new ActiveXObject("Microsoft.XMLHTTP");
                }
            }
            return xmlHttp;
        }
    </script>
    <body>
 	<div id="wrapper">
		<!-- Top Nav Bar Starts -->
		<nav class="navbar navbar-default">
			<div class="navbar-header">
				<a class="navbar-brand" href="#">Welcome <span
					class="prodheader"><c:out value="ADMIN"></c:out></span></a>
			</div>
			<ul class="nav navbar-right">
				<li><a id="logoutICON" href="logout.htm"><strong>LOGOUT
					</strong> <img src='<c:url value="/resources/images/exit.png"/>' alt='logout_icon' /></a></li>
				<li></li>
				<li></li>
			</ul>
		</nav>
		
		<div id="searchForm">
            <h3>Search Form</h3>
            <form id="search" onsubmit="return getResults();">

                Search User <input type="text" id="name" name="user" value="All" required /> <br><br>

                <label>Search By:</label>
                <input type="radio" name="search" value="srchAll" checked="checked"> All users
                <input type="radio" name="search" value="userid" > UserID
                <input type="radio" name="search"  value="username"> UserName
                <input type="radio" name="search"  value="city"> City
                <input type="radio" name="search"  value="state"> State<br><br>
                <input type="submit" name="search"/><br><br>
            </form>
            <div id="results">

            </div>
        </div>
		
		
		<div id="msgForm">
            <h3>Messages List</h3>
            <form id="msg" onsubmit="return getResults();">
				<div class="table-responsive">
					<TABLE BORDER='1' class="table" id="customers">
						<thead>
							<TR BGCOLOR='#D6DFFF'>
								<TH id="msgID"><B>Message ID</B></TH>
								<TH id="useR"><B>From User</B></TH>
								<TH id="msG"><B>Message</B></TH>
								<TH id="daTe"><B>Date</B></TH>
								
							</TR>
						</thead>

						<tbody>
							<c:forEach var="message" items="${messageList}">
								<TR>
									<TD><c:out value="${message.messageID}"></c:out></TD>
									<TD><c:out value="${message.fromUser}"></c:out></TD>
									<TD><c:out value="${message.message}"></c:out></TD>
									<TD><c:out value="${message.messageDate}"></c:out></TD>
								</TR>
							</c:forEach>
						</tbody>


						<TR>
							<TD COLSPAN='6' ALIGN='center'>You have
								${fn:length(messageList)} messages.</TD>
						</TR>

						
					</TABLE>
				</DIV>

			</form>
            <div id="results">

            </div>
        </div>

 
        
      </div>  
    </body>
</html>
	
