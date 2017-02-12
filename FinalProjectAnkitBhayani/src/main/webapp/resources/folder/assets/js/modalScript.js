$(document).ready(function(){
		$("#login_frm").submit(function(){
		     var username =  $('#form-username').val(); // get username
		     var password =  $('#form-password').val(); // get password
			
		     alert(username);
		     alert(password);
		     
			if (username && password) { // values are not empty			 
			//remove previous class and add new "myinfo" class
				$("#msgbox").removeClass().addClass('myinfo').text('Validating Your Login ').fadeIn(1000);
						 //alert($('#form-username').val() );
				this.timer = setTimeout(function () {
						$.ajax({
							url: '/login.htm',
							data: {userName : username, userPassword : password},
							type: 'post',
							success: function(msg){
								alert(msg);
								//alert(msg.indexOf("ERROR"));
								if(msg.indexOf("ERROR") == -1 ) // Message Sent, check and redirect
								{                // and direct to the success page
								 
										$("#msgbox").html('Login Verified, Logging in.....').addClass('myinfo').fadeTo(900,1,function(){
										//redirect to secure page
											document.location='loggedin.jsp';
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