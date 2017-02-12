<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
    <head>

        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>NorthEastern University Date Finder Website</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap-theme.min.css">
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
		<!-- <script src ="<c:url value="/resources/assets/js/modalScript.js"/>" ></script>-->
		
		<style>
			body {
			    /*background-image: url("/resources/assets/img/backgrounds/1.jpg");*/
			    background-color: #ddbabc;
			}
		
		</style>
		
		
    </head>

    <body>
 	<br/><br/>
 		
        <!-- Top content -->
        <div class="top-content">
        	
            <div class="inner-bg">
                <div class="container">
                    <div class="row">
                        <div class="col-sm-8 col-sm-offset-2 text">
                            <h1><strong>Northeastern University</strong> Date Finder</h1>
                            <div class="description">
                            			<form id="user-regist-form" action="registration.htm" method="GET"></form>
                            			Millions of member profiles. Thousands more joining each day. 
										<a href="javascript:document.getElementById('user-regist-form').submit();">Click Here </a>to join now!!
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-6 col-sm-offset-3 form-box">
                        	<div class="form-top">
                        		<div class="form-top-left">
                        			<h3>Login to our site</h3>
                            		<p>Enter your username and password to log on:</p>
                        		</div>
                        		<div class="form-top-right">
                        			<i class="fa fa-lock"></i>
                        		</div>
                            </div>
                            <div class="form-bottom">
								<form role="form" name="login_frm"  id="login_frm"  method="POST" class="login-form" action="login.htm">
									<div class="form-group">
										<label class="sr-only" for="form-username">Username</label>
										<input type="text" name="userName" placeholder="Username..." class="form-username form-control" id="form-username" required>
									</div>
									<div class="form-group">
										<label class="sr-only" for="form-password">Password</label>
										<input type="password" name="userPassword" placeholder="Password..." class="form-password form-control" id="form-password" required>
									</div>
									<input type="submit" class="btn btn-primary" id="ajaxcall" value="Sign in!">
									<div id="msgbox"></div>
									
									
								</form>
		                    </div>
                        </div>
                    </div>
                </div>
            </div>
            
        </div>
<script>
$(document).ready(function(){
	$("#loginfrm").submit(function(){
	     var username =  $('#form-username').val(); // get username
	     var password =  $('#form-password').val(); // get password
		
	     //alert(username);
	     //alert(password);
	     
			if (username && password) { // values are not empty			 
				//remove previous class and add new "myinfo" class
					$("#msgbox").removeClass().addClass('myinfo').text('Validating Your Login ').fadeIn(1000);
							 //alert($('#form-username').val() );
					this.timer = setTimeout(function () {
							$.ajax({
								url: 'login.htm',
								data: {userName : username, userPassword : password},
								type: 'post',
								success: function(msg){
									//alert(msg);
									//alert(msg.indexOf("ERROR"));
									if(msg.indexOf("ERROR") == -1 ) // Message Sent, check and redirect
									{                // and direct to the success page
									 
											$("#msgbox").html('Login Verified, Logging in.....').addClass('myinfo').fadeTo(900,1,function(){
											//redirect to secure page
												//document.location='login.htm';
											});
									 
									}
									else
									{
									        //alert(msg);
											var end = msg.indexOf("</PRE>");
											//var end =  msg.indexOf("</PRE>");
											var errText =  msg.substring(49,end);
											$("#msgbox").fadeTo(200,0.1,function() //start fading the messagebox
											{
											//add message and change the class of the box and start fading
											$(this).html(errText).removeClass().addClass('myerror').fadeTo(900,1);
											});
											 
									}
								},
								
								error: function (jqXHR, textStatus, errorThrown)
							    {
									alert("Something is wrong");
							    }
							 
							});
					}, 200);
					return false;
				}
				 else {
						$('#msgbox').html("Please enter username and password");
						$('#msgbox').addClass("error");
					} // else
					//$('div#loginResult').fadeIn();
	     
	     
	     
	});
});	
</script>		
</body>
</html>
