<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Multi-step form</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
	<script src="http://code.jquery.com/jquery-1.10.2.js"></script>
	<script src="http://code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
	 <style>
					/*custom font*/
					@import url(http://fonts.googleapis.com/css?family=Montserrat);

					/*basic reset*/
					* {margin: 0; padding: 0;}

					html {
						height: 100%;
						background-color: gray;
					}

					body {
						font-family: montserrat, arial, verdana;
					}
					/*form styles*/
					#msform {
						width: 1100px;
						margin: 50px auto;
						text-align: center;
						position: relative;
					}
					#msform fieldset {
						background: white;
						border: 0 none;
						border-radius: 3px;
						box-shadow: 0 0 1px 1px rgba(0, 0, 0, 0.4);
						padding: 20px 30px;
						
						box-sizing: border-box;
						width: 80%;
						margin: 0 10%;
						
						/*stacking fieldsets above each other*/
						position: absolute;
					}
					/*Hide all except first fieldset*/
					#msform fieldset:not(:first-of-type) {
						display: none;
					}
					/*inputs*/
					#msform input, #msform textarea {
						padding: 1px;
						border: 0px solid #ccc;
						border-radius: 1px;
						margin: 0px;
						width: 100%;
						box-sizing: border-box;
						font-family: montserrat;
						color: #2C3E50;
						font-size: 11px;
						margin-right:-28px
						
					}
					/*buttons*/
					#msform .action-button {
						width: 100px;
						background: #27AE60;
						font-weight: bold;
						color: white;
						border: 0 none;
						border-radius: 1px;
						cursor: pointer;
						padding: 5px 5px;
						margin: 5px 5px;
					}
					#msform .action-button:hover, #msform .action-button:focus {
						box-shadow: 0 0 0 2px white, 0 0 0 3px #27AE60;
					}
					/*headings*/
					.fs-title {
						font-size: 13px;
						text-transform: uppercase;
						color: #2C3E50;
						margin-bottom: 2px;
					}
					.fs-subtitle {
						font-weight: normal;
						font-size: 11px;
						color: #666;
						margin-bottom: 2px;
						margin-right: -10px;
					}
					
					.fs-subtitle  input[type='checkbox'] {
							margin-right: -10px;
					}
					

	 </style>
</head>
<body>
<form id="msform" action="uploadDetails.htm" method="post">
	
	<!-- fieldsets -->
	
	<fieldset>
		<h2 class="fs-title">Create your account (STEP#1)</h2>
		<!-- <h3 class="fs-subtitle">This is step 1</h3> -->
		<table  border='1' >
					
			<tr>
					<td class="fs-subtitle">Full Name (First and Last):</td>
					<td colspan="2"><input type="text" name="UserFullName" value="" size=30 maxlength=50 required="true"></td>
			</tr>		
					
			<tr>
							<td class="fs-subtitle">Height:</td>
							<td colspan="2">
							<select name="Height" value="" required="true" >
							<option value="" ></option>
							<option value="134" >&lt; 4'6 " (137 cm)</option>
							<option value="137" >4'6 " (137 cm)</option>
							<option value="140" >4'7 " (140 cm)</option>
							<option value="142" >4'8 " (142 cm)</option>
							<option value="145" >4'9 " (145 cm)</option>
							<option value="147" >4'10 " (147 cm)</option>
							<option value="150" >4'11 " (150 cm)</option>
							<option value="152" selected>5'0 " (152 cm)</option>
							<option value="155" >5'1 " (155 cm)</option>
							<option value="157" >5'2 " (157 cm)</option>
							<option value="160" >5'3 " (160 cm)</option>
							<option value="162" >5'4 " (162 cm)</option>
							<option value="165" >5'5 " (165 cm)</option>
							<option value="167" >5'6 " (167 cm)</option>
							<option value="170" >5'7 " (170 cm)</option>
							<option value="173" >5'8 " (173 cm)</option>
							<option value="175" >5'9 " (175 cm)</option>
							<option value="178" >5'10 " (178 cm)</option>
							<option value="180" >5'11 " (180 cm)</option>
							<option value="183" >6'0 " (183 cm)</option>
							<option value="185" >6'1 " (185 cm)</option>
							<option value="188" >6'2 " (188 cm)</option>
							<option value="190" >6'3 " (190 cm)</option>
							<option value="193" >6'4 " (193 cm)</option>
							<option value="195" >6'5 " (195 cm)</option>
							<option value="198" >6'6 " (198 cm)</option>
							<option value="201" >6'7 " (201 cm)</option>
							<option value="203" >6'8 " (203 cm)</option>
							<option value="206" >6'9 " (206 cm)</option>
							<option value="208" >6'10 " (208 cm)</option>
							<option value="211" >6'11 " (211 cm)</option>
							<option value="213" >7'0 " (213 cm)</option>
							<option value="216" >7'1 " (216 cm)</option>
							<option value="218" >7'2 " (218 cm)</option>
							<option value="221" >7'3 " (221 cm)</option>
							<option value="223" >7'4 " (223 cm)</option>
							<option value="226" >7'5 " (226 cm)</option>
							<option value="228" >7'6 " (228 cm)</option>
							<option value="231" >7'7 " (231 cm)</option>
							<option value="234" >7'8 " (234 cm)</option>
							<option value="236" >7'9 " (236 cm)</option>
							<option value="239" >7'10 " (239 cm)</option>
							<option value="241" >7'11 " (241 cm)</option>
							<option value="244" >8'0 " (244 cm)</option>
							<option value="247" >&gt; 8'0 " (244 cm)</option>
						</select>
					</td>
				</tr>
				
				<tr>
					<td class="fs-subtitle">Weight:</td>
					<td colspan="2">
						<select name="Weight" value="" required="true">
						<option value="" ></option>
						<option value="36288" >80 lbs (36.5 kg)</option>
						<option value="37195" >82 lbs (37.0 kg)</option>
						<option value="38102" >84 lbs (38.0 kg)</option>
						<option value="39010" >86 lbs (39.0 kg)</option>
						<option value="39917" >88 lbs (40.0 kg)</option>
						<option value="40824" >90 lbs (41.0 kg)</option>
						<option value="41731" >92 lbs (41.5 kg)</option>
						<option value="42638" >94 lbs (42.5 kg)</option>
						<option value="43546" >96 lbs (43.5 kg)</option>
						<option value="44453" >98 lbs (44.5 kg)</option>
						<option value="45360" selected>100 lbs (45.5 kg)</option>
						<option value="46267" >102 lbs (46.5 kg)</option>
						<option value="47174" >104 lbs (47.0 kg)</option>
						<option value="48082" >106 lbs (48.0 kg)</option>
						<option value="48989" >108 lbs (49.0 kg)</option>
						<option value="49896" >110 lbs (50.0 kg)</option>
						<option value="50803" >112 lbs (51.0 kg)</option>
						<option value="51710" >114 lbs (51.5 kg)</option>
						<option value="52618" >116 lbs (52.5 kg)</option>
						<option value="53525" >118 lbs (53.5 kg)</option>
						<option value="54432" >120 lbs (54.5 kg)</option>
						<option value="55339" >122 lbs (55.5 kg)</option>
						<option value="56246" >124 lbs (56.0 kg)</option>
						<option value="57154" >126 lbs (57.0 kg)</option>
						<option value="58061" >128 lbs (58.0 kg)</option>
						<option value="58968" >130 lbs (59.0 kg)</option>
						<option value="59875" >132 lbs (60.0 kg)</option>
						<option value="60782" >134 lbs (61.0 kg)</option>
						<option value="61690" >136 lbs (61.5 kg)</option>
						<option value="62597" >138 lbs (62.5 kg)</option>
						<option value="63504" >140 lbs (63.5 kg)</option>
						<option value="64411" >142 lbs (64.5 kg)</option>
						<option value="65318" >144 lbs (65.5 kg)</option>
						<option value="66226" >146 lbs (66.0 kg)</option>
						<option value="67133" >148 lbs (67.0 kg)</option>
						<option value="68040" >150 lbs (68.0 kg)</option>
						<option value="68947" >152 lbs (69.0 kg)</option>
						<option value="69854" >154 lbs (70.0 kg)</option>
						<option value="70762" >156 lbs (71.0 kg)</option>
						<option value="71669" >158 lbs (71.5 kg)</option>
						<option value="72576" >160 lbs (72.5 kg)</option>
						<option value="73483" >162 lbs (73.5 kg)</option>
						<option value="74390" >164 lbs (74.5 kg)</option>
						<option value="75298" >166 lbs (75.5 kg)</option>
						<option value="76205" >168 lbs (76.0 kg)</option>
						<option value="77112" >170 lbs (77.0 kg)</option>
						<option value="78019" >172 lbs (78.0 kg)</option>
						<option value="78926" >174 lbs (79.0 kg)</option>
						<option value="79834" >176 lbs (80.0 kg)</option>
						<option value="80741" >178 lbs (80.5 kg)</option>
						<option value="81648" >180 lbs (81.5 kg)</option>
						<option value="82555" >182 lbs (82.5 kg)</option>
						<option value="83462" >184 lbs (83.5 kg)</option>
						<option value="84370" >186 lbs (84.5 kg)</option>
						<option value="85277" >188 lbs (85.5 kg)</option>
						<option value="86184" >190 lbs (86.0 kg)</option>
						<option value="87091" >192 lbs (87.0 kg)</option>
						<option value="87998" >194 lbs (88.0 kg)</option>
						<option value="88906" >196 lbs (89.0 kg)</option>
						<option value="89813" >198 lbs (90.0 kg)</option>
						<option value="90720" >200 lbs (90.5 kg)</option>
						<option value="91627" >202 lbs (91.5 kg)</option>
						<option value="92534" >204 lbs (92.5 kg)</option>
						<option value="93442" >206 lbs (93.5 kg)</option>
						<option value="94349" >208 lbs (94.5 kg)</option>
						<option value="95256" >210 lbs (95.5 kg)</option>
						<option value="96163" >212 lbs (96.0 kg)</option>
						<option value="97070" >214 lbs (97.0 kg)</option>
						<option value="97978" >216 lbs (98.0 kg)</option>
						<option value="98885" >218 lbs (99.0 kg)</option>
						<option value="99792" >220 lbs (100.0 kg)</option>
						<option value="100699" >222 lbs (100.5 kg)</option>
						<option value="101606" >224 lbs (101.5 kg)</option>
						<option value="102514" >226 lbs (102.5 kg)</option>
						<option value="103421" >228 lbs (103.5 kg)</option>
						<option value="104328" >230 lbs (104.5 kg)</option>
						<option value="105235" >232 lbs (105.0 kg)</option>
						<option value="106142" >234 lbs (106.0 kg)</option>
						<option value="107050" >236 lbs (107.0 kg)</option>
						<option value="107957" >238 lbs (108.0 kg)</option>
						<option value="108864" >240 lbs (109.0 kg)</option>
						<option value="109771" >242 lbs (110.0 kg)</option>
						<option value="110678" >244 lbs (110.5 kg)</option>
						<option value="111586" >246 lbs (111.5 kg)</option>
						<option value="112493" >248 lbs (112.5 kg)</option>
						<option value="113400" >250 lbs (113.5 kg)</option>
						<option value="114307" >252 lbs (114.5 kg)</option>
						<option value="115214" >254 lbs (115.0 kg)</option>
						<option value="116122" >256 lbs (116.0 kg)</option>
						<option value="117029" >258 lbs (117.0 kg)</option>
						<option value="117936" >260 lbs (118.0 kg)</option>
						<option value="118843" >262 lbs (119.0 kg)</option>
						<option value="119750" >264 lbs (120.0 kg)</option>
						<option value="120658" >266 lbs (120.5 kg)</option>
						<option value="121565" >268 lbs (121.5 kg)</option>
						<option value="122472" >270 lbs (122.5 kg)</option>
						<option value="123379" >272 lbs (123.5 kg)</option>
						<option value="124286" >274 lbs (124.5 kg)</option>
						<option value="125194" >276 lbs (125.0 kg)</option>
						<option value="126101" >278 lbs (126.0 kg)</option>
						<option value="127008" >280 lbs (127.0 kg)</option>
						<option value="127915" >282 lbs (128.0 kg)</option>
						<option value="128822" >284 lbs (129.0 kg)</option>
						<option value="129730" >286 lbs (129.5 kg)</option>
						<option value="130637" >288 lbs (130.5 kg)</option>
						<option value="131544" >290 lbs (131.5 kg)</option>
						<option value="132451" >292 lbs (132.5 kg)</option>
						<option value="133358" >294 lbs (133.5 kg)</option>
						<option value="134266" >296 lbs (134.5 kg)</option>
						<option value="135173" >298 lbs (135.0 kg)</option>
						<option value="136080" >300 lbs (136.0 kg)</option>
						<option value="136987" >302 lbs (137.0 kg)</option>
						<option value="137894" >304 lbs (138.0 kg)</option>
						<option value="138802" >306 lbs (139.0 kg)</option>
						<option value="139709" >308 lbs (139.5 kg)</option>
						<option value="140616" >310 lbs (140.5 kg)</option>
						<option value="141523" >312 lbs (141.5 kg)</option>
						<option value="142430" >314 lbs (142.5 kg)</option>
						<option value="143338" >316 lbs (143.5 kg)</option>
						<option value="144245" >318 lbs (144.0 kg)</option>
						<option value="145152" >320 lbs (145.0 kg)</option>
						<option value="146059" >322 lbs (146.0 kg)</option>
						<option value="146966" >324 lbs (147.0 kg)</option>
						<option value="147874" >326 lbs (148.0 kg)</option>
						<option value="148781" >328 lbs (149.0 kg)</option>
						<option value="149688" >330 lbs (149.5 kg)</option>
						<option value="150595" >332 lbs (150.5 kg)</option>
						<option value="151502" >334 lbs (151.5 kg)</option>
						<option value="152410" >336 lbs (152.5 kg)</option>
						<option value="153317" >338 lbs (153.5 kg)</option>
						<option value="154224" >340 lbs (154.0 kg)</option>
						<option value="155131" >342 lbs (155.0 kg)</option>
						<option value="156038" >344 lbs (156.0 kg)</option>
						<option value="156946" >346 lbs (157.0 kg)</option>
						<option value="157853" >348 lbs (158.0 kg)</option>
						<option value="158760" >350 lbs (159.0 kg)</option>
						<option value="159667" >352 lbs (159.5 kg)</option>
						<option value="160574" >354 lbs (160.5 kg)</option>
						<option value="161482" >356 lbs (161.5 kg)</option>
						<option value="162389" >358 lbs (162.5 kg)</option>
						<option value="163296" >360 lbs (163.5 kg)</option>
						<option value="164203" >362 lbs (164.0 kg)</option>
						<option value="165110" >364 lbs (165.0 kg)</option>
						<option value="166018" >366 lbs (166.0 kg)</option>
						<option value="166925" >368 lbs (167.0 kg)</option>
						<option value="167832" >370 lbs (168.0 kg)</option>
						<option value="168739" >372 lbs (168.5 kg)</option>
						<option value="169646" >374 lbs (169.5 kg)</option>
						<option value="170554" >376 lbs (170.5 kg)</option>
						<option value="171461" >378 lbs (171.5 kg)</option>
						<option value="172368" >380 lbs (172.5 kg)</option>
						<option value="173275" >382 lbs (173.5 kg)</option>
						<option value="174182" >384 lbs (174.0 kg)</option>
						<option value="175090" >386 lbs (175.0 kg)</option>
						<option value="175997" >388 lbs (176.0 kg)</option>
						<option value="176904" >390 lbs (177.0 kg)</option>
						<option value="177811" >392 lbs (178.0 kg)</option>
						<option value="178718" >394 lbs (178.5 kg)</option>
						<option value="179626" >396 lbs (179.5 kg)</option>
						<option value="180533" >398 lbs (180.5 kg)</option>
						<option value="181440" >400 lbs (181.5 kg)</option>
						<option value="182347" >400+ lbs (181.5 kg)</option>
						</select>
					</td>
				</tr>
				
				<tr>
					<td class="fs-subtitle">Emphasis Of Studies:</td>
					<td colspan="2"><input type="text" name="StudiesEmphasis" value="" size=30 maxlength=50 required="true"></td>
				</tr>
				
				<tr>
					<td class="fs-subtitle">Relocate for the right person?</td>
					<td colspan="2" class="fs-subtitle" ><input type="radio" name="RelocateFlag" value="1" required="true" > Yes
					<input type="radio" name="RelocateFlag" value="0"  checked required="true"> No</td>
				</tr>
				
				<tr>
					<td class="fs-subtitle">Profile Headline:</td>
					<td colspan="2"><input type="text" name="Headline" value="" size="20" required="true"></td>
				</tr>
				
				<tr>
					<td class="fs-subtitle">Occupation:</td>
					<td colspan="2">
						<select name="IndustryType" value="" required="true">
						<option value="" ></option>
						<option value="Administrative/Human Resources" >Administrative/Human Resources</option>
						<option value="Advertising/Marketing/PR" >Advertising/Marketing/PR</option>
						<option value="Architecture/Interior Design" >Architecture/Interior Design</option>
						<option value="Automotive/Aviation/Transportation" >Automotive/Aviation/Transportation</option>
						<option value="Communication/Telecom" >Communication/Telecom</option>
						<option value="Construction/Agriculture/Landscaping" >Construction/Agriculture/Landscaping</option>
						<option value="Design/Visual & Graphic Arts" >Design/Visual and Graphic Arts</option>
						<option value="Education/Teaching/Child Care" >Education/Teaching/Child Care</option>
						<option value="Entertainment/Media/Dramatic Art" selected>Entertainment/Media/Dramatic Art</option>
						<option value="Entrepreneurial/Start-up" >Entrepreneurial/Start-up</option>
						<option value="Executive/General Mgt/Consulting" >Executive/General Mgt/Consulting</option>
						<option value="Fashion/Style/Modeling/Apparel/Beauty" >Fashion/Style/Modeling/Apparel/Beauty</option>
						<option value="Financial/Accounting/Insurance/Real Estate" >Financial/Accounting/Insurance/Real Estate</option>
						<option value="Government/Civil Service/Public Policy" >Government/Civil Service/Public Policy</option>
						<option value="Homemaking/Child Rearing" >Homemaking/Child Rearing</option>
						<option value="Internet/Ecommerce/Technology" >Internet/Ecommerce/Technology</option>
						<option value="Law Enforcement/Military/Security" >Law Enforcement/Military/Security</option>
						<option value="Law/Legal/Judiciary" >Law/Legal/Judiciary</option>
						<option value="Manufacturing/Warehousing/Shipping/Facilities" >Manufacturing/Warehousing/Shipping/Facilities</option>
						<option value="Medical/Health/Fitness/Social Services" >Medical/Health/Fitness/Social Services</option>
						<option value="Non-profit/Volunteer/Activist" >Non-profit/Volunteer/Activist</option>
						<option value="Other Professional/Services/Trade" >Other Professional/Services/Trade</option>
						<option value="Public Safety/Fire/Paramedic" >Public Safety/Fire/Paramedic</option>
						<option value="Publishing/Print Media" >Publishing/Print Media</option>
						<option value="Restaurant/Food Services/Catering" >Restaurant/Food Services/Catering</option>
						<option value="Retired" >Retired</option>
						<option value="Sales Representative/Retail/Wholesale" >Sales Representative/Retail/Wholesale</option>
						<option value="Student" >Student</option>
						<option value="Technical/Science/Engineering" >Technical/Science/Engineering</option>
						<option value="Travel/Recreation/Leisure/Hospitality" >Travel/Recreation/Leisure/Hospitality</option>
						<option value="Other" >Other</option>
						</select>
					</td>
				</tr>
				
				<tr>
					<td class="fs-subtitle">Occupation Description:</td>
					<td colspan="2"><input type="text" name="OccupationDescription" value="" required="true" size=30 maxlength=100></td>
				</tr>
				
				<tr>
					<td class="fs-subtitle">Area I Grew Up In:</td>
					<td colspan="2"><input type="text" name="GrewUpIn" value="" maxlength=50 required="true" size=" & 75 & "></td>
				</tr>
				
				<tr>
					<td class="fs-subtitle">Zodiac Sign:</td>
					<td colspan="2">
						<select name="Zodiac" value="" required="true">
						<option value=""  selected > </option>
						<option value="Aries" >Aries</option>
						<option value="Aquarius" >Aquarius</option>
						<option value="Cancer" >Cancer</option>
						<option value="Capricorn" selected>Capricorn</option>
						<option value="Gemini" >Gemini</option>
						<option value="Leo" >Leo</option>
						<option value="Libra" >Libra</option>
						<option value="Pisces" >Pisces</option>
						<option value="Sagittarius" >Sagittarius</option>
						<option value="Scorpio" >Scorpio</option>
						<option value="Taurus" >Taurus</option>
						<option value="Virgo" >Virgo</option>
						<option value="I dont believe in it" >I don't believe in it</option>
						</select>
					</td>
				</tr>
				
				<tr>
					<td class="fs-subtitle" valign="top">Languages I speak:</td>
					<td class="fs-subtitle" colspan="2">
						<table cellpadding="0" cellspacing="0">
							<tr>
								<td class="fs-subtitle" nowrap valign=top>
									<input type="checkbox" name="LanguageMask" value="Other" > Other<br>
									<input type="checkbox" name="LanguageMask" value="Arabic" > Arabic<br>
									<input type="checkbox" name="LanguageMask" value="Bengali" > Bengali<br>
									<input type="checkbox" name="LanguageMask" value="Bulgarian" > Bulgarian<br>
									<input type="checkbox" name="LanguageMask" value="Chinese" > Chinese<br>
									<input type="checkbox" name="LanguageMask" value="Czech" > Czech<br>
									<input type="checkbox" name="LanguageMask" value="Dutch" > Dutch<br>
									<input type="checkbox" name="LanguageMask" value="English"  checked> English<br>
									<input type="checkbox" name="LanguageMask" value="Finnish" > Finnish<br>
									<input type="checkbox" name="LanguageMask" value="French" > French<br>
									<input type="checkbox" name="LanguageMask" value="German" > German<br>
								</td>
													
								<td class="fs-subtitle" nowrap valign=top>
									<input type="checkbox" name="LanguageMask" value="Greek" > Greek<br>
									<input type="checkbox" name="LanguageMask" value="Hebrew" > Hebrew<br>
									<input type="checkbox" name="LanguageMask" value="Hindi" > Hindi<br>
									<input type="checkbox" name="LanguageMask" value="Italian" > Italian<br>
									<input type="checkbox" name="LanguageMask" value="Japanese" > Japanese<br>
									<input type="checkbox" name="LanguageMask" value="Korean" > Korean<br>
									<input type="checkbox" name="LanguageMask" value="Malay" > Malay<br>
									<input type="checkbox" name="LanguageMask" value="Norwegian" > Norwegian<br>
									<input type="checkbox" name="LanguageMask" value="Persian/Farsi" >Farsi<br>
									<input type="checkbox" name="LanguageMask" value="Polish" > Polish<br>
									<input type="checkbox" name="LanguageMask" value="Portuguese" > Portuguese<br>
								</td>
								
								<td class="fs-subtitle" nowrap valign=top >
									<input type="checkbox" name="LanguageMask" value="Romanian" > Romanian<br>
									<input type="checkbox" name="LanguageMask" value="Russian" > Russian<br>
									<input type="checkbox" name="LanguageMask" value="Spanish" > Spanish<br>
									<input type="checkbox" name="LanguageMask" value="Swedish" > Swedish<br>
									<input type="checkbox" name="LanguageMask" value="Tagalog" > Tagalog<br>
									<input type="checkbox" name="LanguageMask" value="Thai" > Thai<br>
									<input type="checkbox" name="LanguageMask" value="Urdu" > Urdu<br>
									<input type="checkbox" name="LanguageMask" value="Vietnamese" > Vietnamese<br>
									<input type="checkbox" name="LanguageMask" value="Yiddish" > Yiddish<br>
								</td>
							</tr>
						</table>
					</td>
				</tr>
				
				<tr>
					<td class="fs-subtitle" valign="top">I am seeking:</td>
					<td class="fs-subtitle" colspan="2">
						<table cellpadding="0" cellspacing="0" >
							<tr>
								<td class="fs-subtitle" nowrap valign=top>
									<input type="checkbox" name="RelationshipMask" value="A Date" > A Date<br>
									<input type="checkbox" name="RelationshipMask" value="Friend" checked > Friend<br>
									<input type="checkbox" name="RelationshipMask" value="Marriage" > Marriage<br>
									<input type="checkbox" name="RelationshipMask" value="A long-term relationship" > Long-term<br>
								</td >
								
								<td class="fs-subtitle" nowrap valign=top>
									<input type="checkbox" name="RelationshipMask" value="Intimacy/Physical" > Intimacy/Physical<br>
									<input type="checkbox" name="RelationshipMask" value="Marriage & Children" > Marriage & Children<br>
									<input type="checkbox" name="RelationshipMask" value="Activity Partner" > Activity Partner<br>
									<input type="checkbox" name="RelationshipMask" value="Email/Chat" > Email/Chat<br>
								</td>
								
								<td class="fs-subtitle" class="fs-subtitle" nowrap valign=top></td>
							</tr>
						</table>
					</td>
				</tr>
				
				<tr>
				<td class="fs-subtitle">Marital Status:<BR>
					<select name="MaritalStatus" value="" >
					<option value=""  selected > </option>
					<option value="Single" selected>Single</option>
					<option value="Divorced" >Divorced</option>
					<option value="Separated" >Separated</option>
					<option value="Widowed" >Widowed</option>
					</select>
				</td>

				<td class="fs-subtitle">Hair Color:<BR>
					<select name="HairColor" value="" >
					<option value=""  selected > </option>
					<option value="Auburn" >Auburn</option>
					<option value="Bald/Shaved" >Bald/Shaved</option>
					<option value="Black" >Black</option>
					<option value="Blonde" selected>Blonde</option>
					<option value="Brown" >Brown</option>
					<option value="Dark Brown" >Dark Brown</option>
					<option value="Dirty Blonde" >Dirty Blonde</option>
					<option value="Gray" >Gray</option>
					<option value="Light Brown" >Light Brown</option>
					<option value="Platinum Blonde" >Platinum Blonde</option>
					<option value="Radically Dyed" >Radically Dyed</option>
					<option value="Red" >Red</option>
					<option value="Salt & Pepper" >Salt & Pepper</option>
					<option value="Silver/White" >Silver/White</option>
					<option value="Strawberry Blonde" >Strawberry Blonde</option>
					<option value="Other" >Other</option>
					</select>
				</td>
				
				<td class="fs-subtitle">Annual Income:<BR>
					<select name="IncomeLevel" value="" >
					<option value=""  selected > </option>
					<option value="Will tell you later" selected >Will tell you later</option>
					<option value="Under $15,000" >Under $15,000</option>
					<option value="$15,000 - $25,000" >$15,000 - $25,000</option>
					<option value="$25,000 - $35,000" >$25,000 - $35,000</option>
					<option value="$35,000 - $50,000" >$35,000 - $50,000</option>
					<option value="$50,000 - $100,000" >$50,000 - $100,000</option>
					<option value="Over $100,000" >Over $100,000</option>
					<option value="Average" >Average</option>
					</select>
				</td>

			</tr>

			<tr>
				<td class="fs-subtitle">Education Level:<BR>
					<select name="EducationLevel" value="" >
					<option value=""  selected > </option>
					<option value="Elementary" >Elementary</option>
					<option value="High School" >High School</option>
					<option value="Some College" >Some College</option>
					<option value="Associates Degree" >Associates Degree</option>
					<option value="Bachelor's Degree" selected >Bachelor's Degree</option>
					<option value="Master's Degree" >Master's Degree</option>
					<option value="Doctorate" >Doctorate</option>
					<option value="Ph.D./Postdoctoral" >Ph.D./Postdoctoral</option>
					</select>
				</td>

				<td class="fs-subtitle">Body Build:<BR>
					<select name="BodyType" value="" >
					<option value=""  selected > </option>
					<option value="Lean/Slender" >Lean/Slender</option>
					<option value="Average/Medium Build" >Average/Medium Build</option>
					<option value="Athletic/Fit" selected>Athletic/Fit</option>
					<option value="A Few Extra Pounds" >A Few Extra Pounds</option>
					<option value="Large/Broad Build" >Large/Broad Build</option>
					<option value="Cuddly" >Cuddly</option> 
					<option value="Firm &Toned" >Firm and Toned</option>
					<option value="Husky" >Husky</option>
					<option value="Petite" >Petite</option>
					<option value="Portly" >Portly</option>
					<option value="Proportional" >Proportional</option>
					<option value="Ripped" >Ripped</option>
					<option value="Rubenesque" >Rubenesque</option>
					<option value="Small Frame" >Small Frame</option>
					<option value="Soft" >Soft</option>
					<option value="Stocky" >Stocky</option>
					<option value="Voluptuous" >Voluptuous</option>
					<option value="Zaftig" >Zaftig</option>
					<option value="Muscular" >Muscular</option>
					<option value="Modelesque" >Modelesque</option>
					</select>
				</td>
				
				<td class="fs-subtitle">How important is appearance:<BR>
					<select name="AppearanceImportance" value="" >
					<option value=""  selected > </option>
					<option value="Not important" >Not important</option>
					<option value="Low Importance" >Low Importance</option>
					<option value="Medium Importance" selected>Medium Importance</option>
					<option value="Most Important" >Most Important</option>
					</select>
				</td>
			</tr>

			<tr>
				<td class="fs-subtitle">Religion:<BR>
					<select name="Religion" value="" >
					<option value=""  selected > </option>
					<option value="Agnostic" >Agnostic</option>
					<option value="Anglican" >Anglican</option>
					<option value="Atheist" selected>Atheist</option>
					<option value="Baptist" >Baptist</option>
					<option value="Buddhist" >Buddhist</option>
					<option value="Catholic" >Catholic</option>
					<option value="Christian" >Christian</option>
					<option value="Hindu" >Hindu</option>
					<option value="Jewish" >Jewish</option>
					<option value="Lutheran" >Lutheran</option>
					<option value="Methodist" >Methodist</option>
					<option value="Mormon" >Mormon</option>
					<option value="Muslim" >Muslim</option>
					<option value="Not Religious" >Not Religious</option>
					<option value="Other" >Other</option>
					<option value="Other Christian" >Other Christian</option>
					<option value="Pagan" >Pagan</option>
					<option value="Presbyterian" >Presbyterian</option>
					<option value="Protestant" >Protestant</option>
					<option value="Quaker" >Quaker</option>
					<option value="Sikh" >Sikh</option>
					<option value="Unaffiliated" >Unaffiliated</option>
					</select>
				</td>
				
				<td class="fs-subtitle">Eye Color:<BR>
					<select name="EyeColor" value="" >
					<option value=""  selected > </option>
					<option value="Black/Ebony" >Black/Ebony</option>
					<option value="Blue" >Blue</option>
					<option value="Blue Gray" >Blue Gray</option>
					<option value="Blue Green" selected>Blue Green</option>
					<option value="Brown" >Brown</option>
					<option value="Dark Brown" >Dark Brown</option>
					<option value="Gray" >Gray</option>
					<option value="Green" >Green</option>
					<option value="Green Brown" >Green Brown</option>
					<option value="Green Gray" >Green Gray</option>
					<option value="Hazel" >Hazel</option>
					<option value="Hazel Brown" >Hazel Brown</option>
					<option value="Turquoise" >Turquoise</option>
					</select>
				</td>

				<td class="fs-subtitle">Ethnicity<BR>
					<select name="Ethnicity" value="" >
					<option value=""  selected > </option>
					<option value="African Descent/Black" >African Descent/Black</option>
					<option value="Asian" >Asian</option>
					<option value="Caucasian/White" >Caucasian/White</option>
					<option value="Hispanic" >Hispanic</option>
					<option value="Middle Eastern" selected>Middle Eastern</option>
					<option value="Mixed Race" >Mixed Race</option>
					<option value="Native American" >Native American</option>
					<option value="Pacific Islander" >Pacific Islander</option>
					<option value="South Asian/East Indian" >South Asian/East Indian</option>
					<option value="Other" >Other</option>
					</select>
				</td>
			</tr>

			<tr>
				<td class="fs-subtitle">Political View:<BR>
					<select name="PoliticalOrientation" value="" >
					<option value=""  selected > </option>
					<option value="Unspecified" >Unspecified</option>
					<option value="Extreme Liberal" >Extreme Liberal</option>
					<option value="Left Wing" >Left Wing</option>
					<option value="Liberal" selected>Liberal</option>
					<option value="Left Wing Moderate" >Left Wing Moderate</option>
					<option value="Moderate" >Moderate</option>
					<option value="Midway Moderate" >Midway Moderate</option>
					<option value="Conservative" >Conservative</option>
					<option value="Right Wing Moderate" >Right Wing Moderate</option>
					<option value="Extreme conservative" >Extreme conservative</option>
					<option value="Right Wing" >Right Wing</option>
					</select>
				</td>

				<td class="fs-subtitle">How important is intelligence:<BR>
					<select name="IntelligenceImportance" value="" >
					<option value=""  selected > </option>
					<option value="Not important" >Not important</option>
					<option value="Low Importance" >Low Importance</option>
					<option value="Medium Importance" selected>Medium Importance</option>
					<option value="Most Important" >Most Important</option>
					</select>
				</td>

				<td class="fs-subtitle">Smoking Habits:<BR>
					<select name="SmokingHabits" value="" >
					<option value=""  selected > </option>
					<option value="Non-Smoker" >Non-Smoker</option>
					<option value="Occasional Smoker" >Occasional Smoker</option>
					<option value="Smokes Regularly" selected>Smokes Regularly</option>
					<option value="Trying to quit" >Trying to quit</option>
					</select>
				</td>
			</tr>

			<tr>
				<td class="fs-subtitle">Activity Level:<BR>
					<select name="ActivityLevel" value="" >
					<option value=""  selected > </option>
					<option value="Never Active" >Never Active</option>
					<option value="Rarely Active" selected>Rarely Active</option>
					<option value="Selected activities" >Selected activities</option>
					<option value="Active" >Active</option>
					<option value="Very Active" >Very Active</option>
					</select>
				</td>
				
				<td class="fs-subtitle">Children:<BR>
					<select name="Custody" value="" >
					<option value=""  selected > </option>
					<option value="I have no kids" >I have no kids</option>
					<option value="They are far away" >They are far away</option>
					<option value="Sometimes" selected>Sometimes</option>
					<option value="Dont live with me" >Don't live with me</option>
					<option value="Some live with me" >Some live with me</option>
					<option value="Weekends only" >Weekends only</option>
					<option value="Live with me" >Live with me</option>
					</select>
				</td>

				<td class="fs-subtitle">Drinking Habits:<BR>
					<select name="DrinkingHabits" value="" >
					<option value=""  > </option>
					<option value="Never" >Never</option>
					<option value="Socially" selected>Socially</option>
					<option value="On occasion" >On occasion</option>
					<option value="Frequently" >Frequently</option>
					</select>
				</td>
			</tr>

			<tr>
				<td colspan="2" class="fs-subtitle">Want (More) Children:<BR>
					<input type="radio" name="MoreChildrenFlag" value="1" > Yes
					<input type="radio" name="MoreChildrenFlag" value="0"  checked> No
				</td>
			</tr>

			<tr>
				<td colspan="3" class="fs-subtitle">
					<a name="AboutMe">Describe yourself and your personality. What are you passionate about.. Are you a political junkie, a Ph.D. in archaeology, a tennis fanatic We all have something that makes us unique. this is your chance to tell about yourself and the things that get you excited. Dont be shy - dare to bare it all
					</a>
				</td>
			</tr>

			<tr>
				<td colspan='3'><textarea name="AboutMe" rows='4' cols='60' maxlength='2000'>N.A.</textarea></td>
			</tr>


		</table>

		
		<input type="button" name="next" class="next action-button" value="Next" />
		
	</fieldset>
	
	<fieldset>
		<h2 class="fs-title">This is STEP#2</h2>
		<!-- <h3 class="fs-subtitle">Your presence on the social network</h3> -->
		   <table border="1">
					
					
						<tr>
							<td colspan=3>Check all boxes below that apply to you. Don't forget to save your information by clicking on the 'Save' button at the bottom of the page.</td>
						</tr>
						
						
						<tr>
							<td colspan=2 class="stdBold">My personality traits:</td>
						</tr>
						
						<tr>
							<td colspan=3>&nbsp;
								<table cellpadding="0" cellspacing="0" >
									<tr>
										<td  class="fs-subtitle" nowrap>
											<input type="checkbox" name="PersonalityTrait" value="Wild" > Wild<br>
											<input type="checkbox" name="PersonalityTrait" value="Argumentative" checked>Cool<br>
											<input type="checkbox" name="PersonalityTrait" value="Artistic" > Artistic<br>
											<input type="checkbox" name="PersonalityTrait" value="Compulsive" >Compulsive<br>
											<input type="checkbox" name="PersonalityTrait" value="Clean Cut" >Clean Cut<br>
											<input type="checkbox" name="PersonalityTrait" value="Earthy" >Earthy<br>
											<input type="checkbox" name="PersonalityTrait" value="Flexible" >Flexible   <br>
											<input type="checkbox" name="PersonalityTrait" value="Eccentric" >Eccentric<br>
											<input type="checkbox" name="PersonalityTrait" value="Flamboyant" >Flamboyant<br>
											<input type="checkbox" name="PersonalityTrait" value="Flirtatious/Playful" >Playful<br>
										</td>
										
										<td class="fs-subtitle" nowrap valign="top">
											<input type="checkbox" name="PersonalityTrait" value="Friendly/Kind" >Kind<br>
											<input type="checkbox" name="PersonalityTrait" value="High Energy" >High Energy<br>
											<input type="checkbox" name="PersonalityTrait" value="High Maintenance" >High Maintenance<br>
											<input type="checkbox" name="PersonalityTrait" value="Humorous/Witty" >Witty<br>
											<input type="checkbox" name="PersonalityTrait" value="Intellectual" >Intellectual<br>
											<input type="checkbox" name="PersonalityTrait" value="Low Maintenance" >Low Maintenance<br>
											<input type="checkbox" name="PersonalityTrait" value="Sensitive/Nurturing/Loving" >Sensitive<br>
											<input type="checkbox" name="PersonalityTrait" value="Outgoing" >Outgoing<br>
											<input type="checkbox" name="PersonalityTrait" value="Practical" >Practical<br>
											<input type="checkbox" name="PersonalityTrait" value="Procrastinator" >Procrastinator<br>
										</td>
										
										<td class="fs-subtitle" nowrap valign="top">
											<input type="checkbox" name="PersonalityTrait" value="Quiet/Shy" > Quiet/Shy<br>
											<input type="checkbox" name="PersonalityTrait" value="Romantic" > Romantic<br>
											<input type="checkbox" name="PersonalityTrait" value="Self Confident" > Self Confident<br>
											<input type="checkbox" name="PersonalityTrait" value="Serious/Responsible" > Serious/Responsible<br>
											<input type="checkbox" name="PersonalityTrait" value="Simple" > Simple<br>
											<input type="checkbox" name="PersonalityTrait" value="Sophisticated/Worldly" > Sophisticated/Worldly<br>
											<input type="checkbox" name="PersonalityTrait" value="Spiritual" > Spiritual<br>
											<input type="checkbox" name="PersonalityTrait" value="Stubborn" > Stubborn<br>
											<input type="checkbox" name="PersonalityTrait" value="Talkative" > Talkative<br>
											<input type="checkbox" name="PersonalityTrait" value="Unconventional/Free-Spirited" > Unconventional/Free-Spirited<br>
										</td>
										
										<td class="fs-subtitle" nowrap valign="top"></td>
									</tr>
								</table>
							</td>
						</tr>
						
						<tr>
							<td colspan=3>&nbsp;</td>
						</tr>
						
						<tr>
							<td colspan=3 class="stdBold">My favorite activities</td>
						</tr>
						
						<tr>
							<td colspan=3>&nbsp;
								<table cellpadding="0" cellspacing="0" >
									<tr>
										<td class="fs-subtitle" nowrap valign="top">
											<input type="checkbox" name="LeisureActivity" value="Antiquing" >Antiquing<br>
											<input type="checkbox" name="LeisureActivity" value="Board Games/Backgammon/Chess" >Chess<br>
											<input type="checkbox" name="LeisureActivity" value="Camping" > Camping<br>
											<input type="checkbox" name="LeisureActivity" value="Card Games/Bridge/Canasta" >Bridge<br>
											<input type="checkbox" name="LeisureActivity" value="Collecting" checked>Collecting<br>
											<input type="checkbox" name="LeisureActivity" value="Cooking/Barbecuing" >Cooking<br>
											<input type="checkbox" name="LeisureActivity" value="Dining Out" >Dining Out<br>
											<input type="checkbox" name="LeisureActivity" value="Entertaining" >Entertaining<br>
											<input type="checkbox" name="LeisureActivity" value="Gambling" >Gambling<br>
											<input type="checkbox" name="LeisureActivity" value="Gardening" >Gardening<br>
										</td>
										
										<!-- <td class="fs-subtitle" nowrap valign="top">
											<input type="checkbox" name="LeisureActivity" value="Hanging Out with Friends" >Hanging Out<br>
											<input type="checkbox" name="LeisureActivity" value="Home Improvement/Decorating" >Decorating<br>
											<input type="checkbox" name="LeisureActivity" value="Intimate Conversations" > Intimate Conversations<br>
											<input type="checkbox" name="LeisureActivity" value="Investing" >Investing<br>
											<input type="checkbox" name="LeisureActivity" value="Listening to/Playing Music" >Music lover<br>
											<input type="checkbox" name="LeisureActivity" value="Motorcycling" >Motorcycling<br>
											<input type="checkbox" name="LeisureActivity" value="Painting/Drawing" >Painting<br>
											<input type="checkbox" name="LeisureActivity" value="Partying" >Partying<br>
											<input type="checkbox" name="LeisureActivity" value="People Watching" >People Watching<br>
											<input type="checkbox" name="LeisureActivity" value="Photography" >Photography<br>
										</td> -->
										
										<td class="fs-subtitle" nowrap valign="top">
											<input type="checkbox" name="LeisureActivity" value="Pool/Billiards/Darts" > Pool<br>
											<input type="checkbox" name="LeisureActivity" value="Reading/Writing" >Reading<br>
											<input type="checkbox" name="LeisureActivity" value="Sewing/Crafts" >Crafts<br>
											<input type="checkbox" name="LeisureActivity" value="Shopping" > Shopping<br>
											<input type="checkbox" name="LeisureActivity" value="Surfing the Web/Chatting Online" >Online<br>
											<input type="checkbox" name="LeisureActivity" value="Taking Long Walks" >Long Walks<br>
											<input type="checkbox" name="LeisureActivity" value="Traveling/Weekend Trips/Adventure Travel" > Traveling<br>
											<input type="checkbox" name="LeisureActivity" value="Video Games/Online Games" >Games<br>
											<input type="checkbox" name="LeisureActivity" value="Movies/TV" >Movies<br>
											<input type="checkbox" name="LeisureActivity" value="Wine Tasting" >Wine Tasting<br>
										</td>
										
										<td class="fs-subtitle" nowrap valign="top"></td>
									</tr>
								</table>
							</td>
						</tr>
						
						<tr>
							<td colspan=3>&nbsp;</td>
						</tr>
						
						<tr>
							<td colspan=3 class="stdBold">About the one I'm looking for...</td>
						</tr>
						
						<tr>
							<td colspan=3>&nbsp;</td>
						</tr>
						
						<tr>
							<td colspan=3><textarea name="PerfectMatchEssay" rows=4 cols=60 maxlength=2000>N.A.</textarea></td>
						</tr>
						
						<tr>
							<td colspan=3>&nbsp;</td>
						</tr>
							
				
		</table>
					
		<input type="button" name="previous" class="previous action-button" value="Previous" />
		<input type="button" name="next" class="next action-button" value="Next" />
	</fieldset>
		
	<fieldset>
		<h2 class="fs-title">This is STEP#3</h2>
		<!-- <h3 class="fs-subtitle">We will never sell it</h3> -->
				<table width="100%" border='5' cellpadding="5" cellspacing="5" >
								<tr>
									<td colspan=3>Check all boxes below that apply to you. Don't forget to save your information by clicking on the 'Save' button at the bottom of the page.</td>
								</tr>
								
								<tr>
									<td colspan=3>&nbsp;</td>
								</tr>
					
								<tr>
									<td colspan=3 class="stdBold">Your Favorite Cuisines:</td>
								</tr>
								
								<tr>
									<td colspan=3>&nbsp;
										<table cellpadding="0" cellspacing="0" >
											<tr>
												<td class="fs-subtitle" nowrap>
													<input type="checkbox" name="Cuisine" value="American" > American<br>
													<input type="checkbox" name="Cuisine" value="Barbecue" checked> Barbecue<br>
													<input type="checkbox" name="Cuisine" value="Cajun/Southern" > Cajun<br>
													<input type="checkbox" name="Cuisine" value="California-Fusion" >Fusion<br>
													<input type="checkbox" name="Cuisine" value="Caribbean/Cuban" >Cuban<br>
													<input type="checkbox" name="Cuisine" value="Chinese/Dim Sum" >Chinese<br>
													<input type="checkbox" name="Cuisine" value="Continental" > Continental<br>
													<input type="checkbox" name="Cuisine" value="Deli" >Deli<br>
													<input type="checkbox" name="Cuisine" value="Eastern-European" >European<br>
													<input type="checkbox" name="Cuisine" value="Fast Food/Pizza" selected>Pizza<br>
												</td>

											

												<td class="fs-subtitle" nowrap valign="top">
													<input type="checkbox" name="Cuisine" value="Middle Eastern" > Middle Eastern<br>
													<input type="checkbox" name="Cuisine" value="Seafood" > Seafood<br>
													<input type="checkbox" name="Cuisine" value="Soul Food" > Soul Food<br>
													<input type="checkbox" name="Cuisine" value="South American" > South American<br>
													<input type="checkbox" name="Cuisine" value="Southwestern" > Southwestern<br>
													<input type="checkbox" name="Cuisine" value="Spanish" > Spanish<br>
													<input type="checkbox" name="Cuisine" value="Thai" > Thai<br>
													<input type="checkbox" name="Cuisine" value="Vegetarian/Organic" > Vegetarian/Organic<br>
													<input type="checkbox" name="Cuisine" value="Vegan" > Vegan<br>
													<input type="checkbox" name="Cuisine" value="Vietnamese" > Vietnamese<br>
												</td>

												<td class="fs-subtitle" valign="top"></td>
											</tr>
										</table>
						</td>
					</tr>
					
					<tr>
						<td colspan=3>&nbsp;</td>
					</tr>
					
					<tr>
						<td colspan=3 class="stdBold">Your Favorite Music:</td>
					</tr>
					
					<tr>
						<td colspan=3>&nbsp;
							<table cellpadding="0" cellspacing="0" >
								<tr>
									<td class="fs-subtitle" nowrap>
										<input type="checkbox" name="Music" value="Alternative" > Alternative<br>
										<input type="checkbox" name="Music" value="Big Band/Swing" > Big Band/Swing<br>
										<input type="checkbox" name="Music" value="Blues" checked> Blues<br>
										<input type="checkbox" name="Music" value="Christian & Gospel" > Christian<br>
										<input type="checkbox" name="Music" value="Classic Rock n Roll" > Classic<br>
										<input type="checkbox" name="Music" value="Classical"> Classical<br>
										<input type="checkbox" name="Music" value="Country" > Country<br>
										<input type="checkbox" name="Music" value="Dance/Electronica" > Dance<br>
										<input type="checkbox" name="Music" value="Disco" > Disco<br>
										<input type="checkbox" name="Music" value="Easy Listening" > Easy Listening<br>
									</td>
									
							
									
									<td class="fs-subtitle" nowrap valign="top">
										<input type="checkbox" name="Music" value="Reggae" > Reggae<br>
										<input type="checkbox" name="Music" value="Showtunes" > Showtunes<br>
										<input type="checkbox" name="Music" value="Soul/R&B" > Soul/R&B<br>
										<input type="checkbox" name="Music" value="World Music/Ethnic" > World Music/Ethnic<br>
										<input type="checkbox" name="Music" value="Punk" > Punk<br>
										<input type="checkbox" name="Music" value="Instrumental" checked> Instrumental<br>
										<input type="checkbox" name="Music" value="Soundtracks" > Soundtracks<br>
										<input type="checkbox" name="Music" value="Acoustic" > Acoustic<br>
										<input type="checkbox" name="Music" value="Indie" > Indie<br>
										<input type="checkbox" name="Music" value="Other" > Other<br>
									</td>
									
									<td class="fs-subtitle" valign="top"></td>
								</tr>
							</table>
						</td>
					</tr>
					
					<tr>
						<td colspan=3>&nbsp;</td>
					</tr>
					
					<tr>
						<td colspan=3 class="stdBold">You like to read:</td>
					</tr>
					
					<tr>
						<td colspan=3>&nbsp;
							<table cellpadding="0" cellspacing="0" >
								<tr>
									<td class="fs-subtitle" nowrap >
										<input type="checkbox" name="Reading" value="Fiction" >Fiction<br>
										<input type="checkbox" name="Reading" value="Magazines" checked>Magazines<br>
										<input type="checkbox" name="Reading" value="Newspapers" >Newspapers<br>
									</td>
									
									<td class="fs-subtitle" nowrap valign="top">
										<input type="checkbox" name="Reading" value="Non-Fiction" > Non-Fiction<br>
										<input type="checkbox" name="Reading" value="Poetry" > Poetry<br>
										<input type="checkbox" name="Reading" value="Trade Journals" > Trade Journals<br>
									</td>
									
									
								</tr>
							</table>
						</td>
					</tr>
					
					<tr>	
						<td colspan=3>&nbsp;</td>
					</tr>
					
					<tr>
						<td colspan=3 class="stdBold">My idea of the perfect first date...</td>
					</tr>
					
					<tr>
						<td colspan=3><textarea name="PerfectFirstDateEssay" rows=4 cols=60 maxlength=2000>N.A.</textarea></td>
					</tr>
					

				
			</table>
		<input type="button" name="previous" class="previous action-button" value="Previous" />
		<input type="button" name="next" class="next action-button" value="Next" />
	</fieldset>

	<fieldset>
		<h2 class="fs-title">This is FINAL STEP#4</h2>
		<!-- <h3 class="fs-subtitle">We will never sell it</h3> -->
		<table border="1" >
				
							
							<tr>
								<td colspan=3>Check all boxes below that apply to you. Don't forget to save your information by clicking on the 'Save' button at the bottom of the page.</td>
							</tr>
							
							<tr>
								<td colspan=3>&nbsp;</td>
							</tr>
							
							<tr>
								<td colspan=3 class="stdBold">I like going out to:</td>
							</tr>
							
							<tr>
								<td colspan=3>&nbsp;
									<table cellpadding="0" cellspacing="0" >
										<tr>
											<td class="fs-subtitle" nowrap>
												<input type="checkbox" name="EntertainmentLocation" value="Amusement Parks" >Parks<br>
												<input type="checkbox" name="EntertainmentLocation" value="Antique Stores/Flea Markets/Garage Sales" >Sales<br>
												<input type="checkbox" name="EntertainmentLocation" value="Art Galleries" >Art<br>
												<input type="checkbox" name="EntertainmentLocation" value="In Bars/In Nightclubs" >Bars<br>
												<input type="checkbox" name="EntertainmentLocation" value="Beach" checked >Beach<br>
												<input type="checkbox" name="EntertainmentLocation" value="Bookstores" >Bookstores<br>
												<input type="checkbox" name="EntertainmentLocation" value="Charity Events" >Charity<br>
												<input type="checkbox" name="EntertainmentLocation" value="Circuit Parties" >Parties<br>
												<input type="checkbox" name="EntertainmentLocation" value="Coffee Houses" >Coffee<br>
											</td>
											
																						
											<td class="fs-subtitle" nowrap valign="top">
												<input type="checkbox" name="EntertainmentLocation" value="Parks" >Parks<br>
												<input type="checkbox" name="EntertainmentLocation" value="Political Events" >Night Events<br>
												<input type="checkbox" name="EntertainmentLocation" value="Raves/Underground Parties" >Raves<br>
												<input type="checkbox" name="EntertainmentLocation" value="Restaurants">Restaurants<br>
												<input type="checkbox" name="EntertainmentLocation" value="Shopping Malls" >Malls<br>
												<input type="checkbox" name="EntertainmentLocation" value="Skate/Bike Parks" >Skate<br>
												<input type="checkbox" name="EntertainmentLocation" value="Sporting Events" >Sporting Events<br>
												<input type="checkbox" name="EntertainmentLocation" value="Symphony" >Symphony<br>
												<input type="checkbox" name="EntertainmentLocation" value="Volunteer Events" >Events<br>
											</td>
											
											<td class="fs-subtitle" nowrap valign="top"></td>
										</tr>
									</table>
								</td>
							</tr>
							
							<tr>
								<td colspan=3>&nbsp;</td>
							</tr>
							
							<tr>
								<td colspan=3 class="stdBold">My favorite physical activities:</td>
							</tr>
							
							<tr>
								<td colspan=3>&nbsp;
									<table cellpadding="0" cellspacing="0" >
										<tr>
											<td class="fs-subtitle" nowrap>
												<input type="checkbox" name="PhysicalActivity" value="Aerobics" >Aerobics<br>
												<input type="checkbox" name="PhysicalActivity" value="Baseball/Softball" >Softball<br>
												<input type="checkbox" name="PhysicalActivity" value="Basketball" >Basketball<br>
												<input type="checkbox" name="PhysicalActivity" value="Biking" >Biking<br>
												<input type="checkbox" name="PhysicalActivity" value="Boating/Sailing/Rafting" >Rafting<br>
												<input type="checkbox" name="PhysicalActivity" value="Working Out/Weightlifting" >Weightlifting<br>
												<input type="checkbox" name="PhysicalActivity" value="Bowling" checked/>Bowling<br>
												<input type="checkbox" name="PhysicalActivity" value="Cricket" >Cricket<br>
												<input type="checkbox" name="PhysicalActivity" value="Dancing" >Dancing<br>
												<input type="checkbox" name="PhysicalActivity" value="Football - American" >Football<br>
												<input type="checkbox" name="PhysicalActivity" value="Golf" >Golf<br>
											</td>
											
											
											<td class="fs-subtitle" nowrap valign="top" >
												<input type="checkbox" name="PhysicalActivity" value="Skydiving/Hang Gliding/Flying" style="margin: 0; padding 0;  height:13px"> Skydiving/Hang Gliding/Flying<br>
												<input type="checkbox" name="PhysicalActivity" value="Snorkeling/Scuba Diving" style="margin: 0; padding 0;  height:13px"> Snorkeling/Scuba Diving<br>
												<input type="checkbox" name="PhysicalActivity" value="Snow Skiing" style="margin: 0; padding 0;  height:13px"> Snow Skiing<br>
												<input type="checkbox" name="PhysicalActivity" value="Soccer" style="margin: 0; padding 0;  height:13px"> Soccer<br>
												<input type="checkbox" name="PhysicalActivity" value="Surfing/Snowboarding/Skateboarding" style="margin: 0; padding 0;  height:13px"> Surfing/Snowboarding/Skateboarding<br>
												<input type="checkbox" name="PhysicalActivity" value="Swimming/Diving/Water Polo" style="margin: 0; padding 0;  height:13px" > Swimming/Diving/Water Polo<br>
												<input type="checkbox" name="PhysicalActivity" value="Tennis/Racquet Sports" style="margin: 0; padding 0;  height:13px"> Tennis/Racquet Sports<br>
												<input type="checkbox" name="PhysicalActivity" value="Volleyball"  style="margin: 0; padding 0;  height:13px"> Volleyball<br>
												<input type="checkbox" name="PhysicalActivity" value="Yoga/Meditation" style="margin: 0; padding 0;  height:13px"> Yoga/Meditation<br>
											</td>
										</tr>
									</table>
								</td>
							</tr>
							
							<tr>
								<td colspan=3>&nbsp;</td>
							</tr>
							
							<tr>
								<td colspan=3 class="stdBold">My perception of an ideal relationship...</td>
							</tr>
							
							<tr>
								<td colspan=3>&nbsp;
									<table cellpadding="0" cellspacing="0" >
										<tr>
											<td><textarea name="IdealRelationshipEssay" rows=4 cols=60 maxlength=2000>N.A.</textarea></td>
										</tr>
									</table>
								</td>
							</tr>
							
							<tr>
								<td colspan=3 class="stdBold">What I've learned from my past relationships...</td>
							</tr>
							
							<tr>
								<td colspan=3>&nbsp;
									<table cellpadding="0" cellspacing="0" >
										<tr>
											<td><textarea name="LearnFromThePastEssay" rows=4 cols=60 maxlength=2000>N.A.</textarea></td>
										</tr>
									</table>
								</td>
							</tr>
							
							<tr>
								<td colspan=3>&nbsp;</td>
							</tr>
							
							<tr>
								<td colspan=3>
									<input type="hidden" name="a" value="7540" >
									<input type="hidden" name="EditFlag" value="1" >
								</td>
							</tr>
							
							<tr>
								<td colspan=3></td>
							</tr>
							
					
					</table>
				
		<input type="button" name="previous" class="previous action-button" value="Previous" />
		<input type="submit" name="submit" class="submit action-button" value="Submit" />
	</fieldset>
	
	
</form>


<script>
 $(document).ready(function(){
		//jQuery time
			var current_fs, next_fs, previous_fs; //fieldsets
			var left, opacity, scale; //fieldset properties which we will animate
			var animating; //flag to prevent quick multi-click glitches

			$(".next").click(function(){
				if(animating) return false;
				animating = true;
				
				current_fs = $(this).parent();
				next_fs = $(this).parent().next();
				
				//activate next step on progressbar using the index of next_fs
				$("#progressbar li").eq($("fieldset").index(next_fs)).addClass("active");
				
				//show the next fieldset
				next_fs.show(); 
				//hide the current fieldset with style
				current_fs.animate({opacity: 0}, {
					step: function(now, mx) {
						//as the opacity of current_fs reduces to 0 - stored in "now"
						//1. scale current_fs down to 80%
						scale = 1 - (1 - now) * 0.2;
						//2. bring next_fs from the right(50%)
						left = (now * 50)+"%";
						//3. increase opacity of next_fs to 1 as it moves in
						opacity = 1 - now;
						current_fs.css({'transform': 'scale('+scale+')'});
						next_fs.css({'left': left, 'opacity': opacity});
					}, 
					duration: 800, 
					complete: function(){
						current_fs.hide();
						animating = false;
					}, 
					//this comes from the custom easing plugin
					easing: 'easeInOutBack'
				});
			});

			$(".previous").click(function(){
				if(animating) return false;
				animating = true;
				
				current_fs = $(this).parent();
				previous_fs = $(this).parent().prev();
				
				//de-activate current step on progressbar
				$("#progressbar li").eq($("fieldset").index(current_fs)).removeClass("active");
				
				//show the previous fieldset
				previous_fs.show(); 
				//hide the current fieldset with style
				current_fs.animate({opacity: 0}, {
					step: function(now, mx) {
						//as the opacity of current_fs reduces to 0 - stored in "now"
						//1. scale previous_fs from 80% to 100%
						scale = 0.8 + (1 - now) * 0.2;
						//2. take current_fs to the right(50%) - from 0%
						left = ((1-now) * 50)+"%";
						//3. increase opacity of previous_fs to 1 as it moves in
						opacity = 1 - now;
						current_fs.css({'left': left});
						previous_fs.css({'transform': 'scale('+scale+')', 'opacity': opacity});
					}, 
					duration: 800, 
					complete: function(){
						current_fs.hide();
						animating = false;
					}, 
					//this comes from the custom easing plugin
					easing: 'easeInOutBack'
				});
			});
			
		/*	$(".submit").click(function(){
			return false;
			})*/

 });
</script>
</body>
</html>
