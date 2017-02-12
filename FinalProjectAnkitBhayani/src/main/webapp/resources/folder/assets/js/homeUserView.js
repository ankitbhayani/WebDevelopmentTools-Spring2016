$(function() {

 $('#navigation a').stop().animate({'marginLeft':'-130px'},1000);

 $('#navigation > li').hover(
  function () {
   $('a',$(this)).stop().animate({'marginLeft':'-2px'},200);
  },
  function () {
   $('a',$(this)).stop().animate({'marginLeft':'-130px'},200);
  }
 );
});

$(function() {
 $('#navigation > li').hover(
  function () {
   $('a',$(this)).stop().animate({'marginLeft':'-2px'},200);
  },
  function () {
   $('a',$(this)).stop().animate({'marginLeft':'-130px'},200);
  }
 );
});


/*$(function() {
    var availableTags = [
      "abcd",
      "jack",
      "jenny",
      "marry",
      "mickey",
      "stan", 
      "yusuf"
    ];
	var stateList = new Array("AK","AL","AR","AZ","CA","CO","CT","DC","DC2","DE","FL","GA","GU","HI","IA","ID",
        "IL","IN","KS","KY","LA","MA","MD","ME","MH","MI","MN","MO","MS","MT","NC","ND","NE","NH","NJ","NM","NV","NY",
        "OH","OK","OR","PA","PR","RI","SC","SD","TN","TX","UT","VA","VT","WA","WI","WV","WY");
    $( "#tags" ).autocomplete({
      source: availableTags
    });
	 $( "#stateTags" ).autocomplete({
      source: stateList
    });
	
  });
*/


$(document).ready(function(){
		
	//$( ".chkboxes" ).click(function(){
	//$('input.chkboxes').is(':checked')()
	$( "input[type=checkbox]" ).on( "click", function() {
		   //alert("previous alert");
		   //alert("box ticked");
			var n = $( "input:checked" ).length;
			var rowElement = this.parentNode.parentNode;
			if (n == 0) {
				$( "#submitbutton" ).prop( "disabled", true );
			}
			else{
				$( "#submitbutton" ).prop( "disabled", false );
				$(rowElement).css("background","lightblue");
			}
			
			if(!$( this ).is(':checked')){
				$(rowElement).css("background","white");	
			}
			
	});
		
	
	
	     $("#ajaxcall").click(function(){
			 var sender =  $('#txtSender').val(); // get password
			 var receiver =  $('#txtReceiver').val(); // get password
		     var message =  $('#textMessage').val(); // get username
		     			
						
			//alert(sender);
			//alert(receiver);
			//alert(message);
			if (message) { // values are not empty			 
			//remove previous class and add new "myinfo" class
				$("#msgbox").removeClass().addClass('myinfo').text('Sending Your Message ').fadeIn(1000);
						 //alert($('#form-username').val() );
				this.timer = setTimeout(function () {
						$.ajax({
							url: 'sendMessage',
							data: {recipient: receiver, messagefromTextArea: message},
							type: 'post',
							success: function(response){
								//alert(response);
								//alert(response.indexOf("ERROR"));
							   if(response.indexOf("ERROR") == -1 ) // Message Sent, check and redirect
								{       
								        $("#msgbox").html('Message Sent Successfully.....').addClass('myinfo').fadeTo(900,1,function(){
										
											 $('#myModal1').modal('hide');
											 
										});
								 
								}
								else
								{
								       //alert(response);
										var end = response.indexOf("</PRE>");
										//var end =  msg.indexOf("</PRE>");
										var errText =  response.substring(49,end);
										$("#msgbox").fadeTo(200,0.1,function() //start fading the messagebox
										{
										//add message and change the class of the box and start fading
										$(this).html(errText).removeClass().addClass('myerror').fadeTo(900,1);
										});
										 
								}
							}
						 
						});
				}, 200);
				return false;
			}
			 else {
					$('#msgbox').html("Please input  some Message");
					$('#msgbox').addClass("error");
				} 
				//else
				//$('#msgbox').fadeIn();
		});
	
    	$("#submitbutton").click(function(){
			var msgList = new Array();
    		//alert("DELETE CLICKED");
			//var msgList = {}; 
			 $("input:checkbox[name=msgList]:checked").each(function(){
					msgList.push(String($(this).val()));
				});
			
			//msgList = $("input[name='msgList']");	
			// this will return an array with strings "1", "2", etc.
			//var msgList = new Array();
			// msgList=$("input[name=msgList]:checked").val();
			//msgList.toString();
								
			//alert(msgList);
			//alert(JSON.stringify(msgList));
			//console.log(JSON.stringify(msgList));

			if (msgList) { // values are not empty			 
			//remove previous class and add new "myinfo" class
				$("#msgbox1").removeClass().addClass('myinfo').text('Deleting  this Message ').fadeIn(1000);
						 //alert($('#form-username').val() );
				this.timer = setTimeout(function () {
						$.ajax({
							url: 'deleteMessages',
							data: 'msgs='+msgList,
							type: 'post',
							success: function(msg){
								//alert(msg);
								//alert(msg.indexOf("ERROR"));
								if(msg.indexOf("ERROR") == -1 ) // Message Sent, check and redirect
								{                // and direct to the success page
								 
										$("#msgbox1").html('Deleted Successfully.....').addClass('myinfo').fadeTo(900,1,function(){
										//redirect to secure page
											//document.location='loggedin.jsp';
											window.location.reload(true);
										});
								 
								}
								else
								{
								       alert(msg);
										var end = msg.indexOf("</PRE>");
										//var end =  msg.indexOf("</PRE>");
										var errText =  msg.substring(49,end);
										$("#msgbox1").fadeTo(200,0.1,function() //start fading the messagebox
										{
										//add message and change the class of the box and start fading
										$(this).html(errText).removeClass().addClass('myerror').fadeTo(900,1);
										});
										 
								}
							}
						 
						});
				}, 200);
				return false;
			}
			 else {
					$('#msgbox1').html("Please select some messages");
					$('#msgbox1').addClass("error");
				} 
				//else
				//$('#msgbox').fadeIn();
		});
	
	   	$(".replyIcon").click(function(){
	   	//alert("clicked");	
		var recvr = this.parentNode.previousElementSibling.previousElementSibling.previousElementSibling.innerText;
		//console.log(recvr);
		//alert(recvr);
		$("#txtReceiver").val(recvr);
		
	});
	
	    $("#hamburIcon").click(
				function () {
			 $('ul#menu').slideDown('medium');
		  });
	
	
	
		$("#cmdGo1").click(function() {
				if ($.trim($("#apply").val()) === "") {
					//alert('you did not fill out one of the fields');
					//console.log(this.nextElementSibling);
					$("#errmsg").html('Please enter some value ').removeClass().addClass('myerror').fadeTo(1200,0);
					return false;
				}
				else{
							
						var srchVal =  $('#apply').val(); // get password
						//alert(srchVal);
						
						if (srchVal) { // values are not empty			 
						//remove previous class and add new "myinfo" class
							$("#errmsg").html('Searching User ').removeClass().addClass('myinfo').fadeIn(900);
									 //alert($('#form-username').val() );
							this.timer = setTimeout(function () {
									$.ajax({
										url: 'lookupByNumber',
										data: 'LookupMemberID='+ srchVal,
										type: 'post',
										success: function(msg){
											//alert(msg);
											if(msg.indexOf("ERROR") == -1 ) // Message Sent, check and redirect
											{                // and direct to the success page
													
													$("#errmsg").html("Found.....").removeClass().addClass('myinfo').fadeTo(900,1,function(){
													//redirect to secure page
														//document.location='lookupByNumber.jsp/?LookupMemberID';
														//alert(msg);
														//alert(msg.indexOf("<TABLE"));
														//alert(msg.indexOf("</TABLE>"));
														 st = msg.indexOf("<TABLE");
														 en =  msg.indexOf("</TABLE>");
														 $("#srchResultByNumber").html(msg.substring(st,en))
														 $("#srchResultByNumber").show();
														$('#apply').val("");
													});
											 
											}
											else
											{
												   $("#srchResultByNumber").hide();
												   //alert(msg);
													var end = msg.indexOf("</PRE>");
													var start =  msg.indexOf("RE>");
													//alert(start);
													var errText =  msg.substring(start+3,end);
													$("#errmsg").fadeTo(200,0.1,function() //start fading the messagebox
													{
															//add message and change the class of the box and start fading
															$(this).html(errText).removeClass().addClass('myerror').fadeTo(1200,0.9);
													});
													 
											}
										}
									 
									});
							}, 200);
							return false;
				}
				}
			});	
			
		$("#cmdGo2").click(function() {
				if ($.trim($("#tags").val()) === "") {
					//alert('you did not fill out one of the fields');
					//console.log(this.nextElementSibling);
					$("#stsmsg").html('Please inout some userName ').removeClass().addClass('myerror').fadeTo(1200,0);
					return false;
				}
				else if ($.isNumeric($.trim($("#tags").val()))) {
					//alert('you did not fill out one of the fields');
					//console.log(this.nextElementSibling);
					$("#stsmsg").html('Numbers are not allowed in this field').removeClass().addClass('myerror').fadeTo(1200,0);
					return false;
				}
				else{
							
						var srchTxt =  $('#tags').val(); // get password
						//alert(srchTxt);
						
						if (srchTxt) { // values are not empty			 
						//remove previous class and add new "myinfo" class
							$("#stsmsg").html('Searching User ').removeClass().addClass('myinfo').fadeIn(900);
									 //alert($('#form-username').val() );
							this.timer = setTimeout(function () {
									$.ajax({
										url: 'lookupByName',
										data: 'LookupMemberName='+ srchTxt,
										type: 'post',
										success: function(msg){
											//alert(msg);
											if(msg.indexOf("ERROR") == -1 ) // Message Sent, check and redirect
											{                // and direct to the success page
													
													$("#stsmsg").html("Found.....").removeClass().addClass('myinfo').fadeTo(900,1,function(){
													//redirect to secure page
														//document.location='lookupByNumber.jsp/?LookupMemberID';
														//alert(msg);
														//alert(msg.indexOf("<TABLE"));
														//alert(msg.indexOf("</TABLE>"));
														 st = msg.indexOf("<TABLE");
														 en =  msg.indexOf("</TABLE>");
														 $("#srchResultByName").html(msg.substring(st,en))
														 $("#srchResultByName").show();
														$('#tags').val("");
													});
											 
											}
											else
											{
												   $("#srchResultByName").hide();
												   //alert(msg);
													var end = msg.indexOf("</PRE>");
													var start =  msg.indexOf("RE>");
													//alert(start);
													var errText =  msg.substring(start+3,end);
													$("#stsmsg").fadeTo(200,0.1,function() //start fading the messagebox
													{
															//add message and change the class of the box and start fading
															$(this).html(errText).removeClass().addClass('myerror').fadeTo(1200,0.9);
													});
													 
											}
										}
									 
									});
							}, 200);
							return false;
				}
				}
			});		
	    
		$("#cmdGo3").click(function() {
				//if ($.trim($("#srchStateParam").val()) === ""   ||  $.trim($("#srchCityParam").val()) === ""  ) {
				if ($.trim($("#srchStateParam").val()) === ""  ) {	
					//alert('you did not fill out one of the fields');
					//console.log(this.nextElementSibling);
					$("#srchSts").html('Please enter  all the values ').removeClass().addClass('myerror').fadeTo(1200,0.9);
					return false;
				}
				else if ($.isNumeric($.trim($("#srchStateParam").val()))   ||
					$.isNumeric($.trim($("#srchCityParam").val()))) {
					//alert('you did not fill out one of the fields');
					//console.log(this.nextElementSibling);
					$("#srchSts").html('Numbers are not allowed in this field').removeClass().addClass('myerror').fadeTo(1200,0.9);
					return false;
				}
				else{
							
						var srchStateTxt =  $("#srchStateParam").val(); // get password
						var srchCityTxt =  $("#srchCityParam").val(); // get password
						var srchminAge =  $("#minAge").val(); // get password
						var srchmaxAge =  $("#maxAge").val(); // get password
						var gender =  $("#GenderID :selected").val(); // get password
						var seekingGender =  $("#SeekingGenderID :selected").val(); // get password
						var CountryRegionID =  $("#CountryRegionID :selected").val(); // get password
						
						//alert(seekingGender);
						//alert(CountryRegionID);
						
						if (srchStateTxt || srchCityTxt) { // values are not empty			 
						//remove previous class and add new "myinfo" class
							$("#srchSts").html('Searching ... ').removeClass().addClass('myinfo').fadeIn(900);
									 //alert($('#form-username').val() );
							this.timer = setTimeout(function () {
									$.ajax({
										url: 'searchUsers',
										//data: 'SeekingGenderID='+ seekingGender+'&GenderID=' +gender+'&MinAge=' +srchminAge+'&MaxAge=' +srchmaxAge+'&CountryRegionID=' +CountryRegionID+'&stateName=' +srchStateTxt+'&cityName=' +srchCityTxt,
										data: {SeekingGenderID: seekingGender, GenderID: gender, MinAge: srchminAge , MaxAge : srchmaxAge, CountryRegionID : CountryRegionID , stateName : srchStateTxt ,cityName : srchCityTxt},
										type: 'post',
										success: function(msg){
											//alert(msg);
											//alert(msg.indexOf("ERROR"));
											if(msg.indexOf("ERROR") == -1 ) // Message Sent, check and redirect
											{                // and direct to the success page
													
													$("#srchSts").html("Please see the below results.....").removeClass().addClass('myinfo').fadeTo(900,1,function(){
													//redirect to secure page
														//document.location='lookupByNumber.jsp/?LookupMemberID';
														//alert(msg);
														//alert(msg.indexOf("<TABLE"));
														//alert(msg.indexOf("</TABLE>"));
														 st = msg.indexOf("<TABLE");
														 en =  msg.indexOf("</TABLE>");
														 $("#srchResults").html(msg.substring(st,en))
														 $("#srchResults").show();
														 $("#srchStateParam").val("");
														 $("#srchCityParam").val("");
													});
											 
											}
											else
											{
												   $("#srchResults").hide();
												    //alert(msg);
													var end = msg.indexOf("</PRE>");
													var start =  msg.indexOf("RE>");
													//alert(start);
													var errText =  msg.substring(start+3,end);
													$("#srchSts").fadeTo(200,0.1,function() //start fading the messagebox
													{
															//add message and change the class of the box and start fading
															$(this).html(errText).removeClass().addClass('myerror').fadeTo(1200,0.9);
													});
													 
											}
										}
									 
									});
							}, 200);
							return false;
				}
				}
			});		
		
		
			
			$("#srchResultByNumber #DetailsID").click(function(){ alert("DIV CLICK");})
			//$("#imageFetched").click(function(){ alert("CLICK ON IMAGE");})
		
			//$("#DetailsID").click(function(){ alert("MODAL");})

	
	});	
	
	
	
	