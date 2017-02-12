-- MySQL dump 10.13  Distrib 5.7.9, for Win64 (x86_64)
--
-- Host: localhost    Database: contacts
-- ------------------------------------------------------
-- Server version	5.7.11-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `contacts`
--

DROP TABLE IF EXISTS `contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contacts` (
  `contactID` int(10) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `userName` varchar(20) NOT NULL DEFAULT '',
  `contactName` varchar(20) NOT NULL DEFAULT '',
  `comments` text NOT NULL,
  `dateAdded` varchar(40) NOT NULL DEFAULT '',
  `requestStatus` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`contactID`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts`
--

LOCK TABLES `contacts` WRITE;
/*!40000 ALTER TABLE `contacts` DISABLE KEYS */;
INSERT INTO `contacts` VALUES (0000000005,'marry','yusuf','seems like a nice guy','Sat Dec 06 19:44:27 EST 2003',NULL),(0000000006,'marry','mickey','Practical and Mature guy who wants friendship','Wed Apr 20 04:06:13 EDT 2016',NULL),(0000000007,'mickey','jenny','Beautiful and intelligent girl','Wed Apr 20 04:18:01 EDT 2016',NULL),(0000000008,'ankitbh','jenny','Hey whatsup, pls accept my friend request.','April 23, 2016 9:15:09 PM EDT','PENDING'),(0000000009,'','ankitbh','Hey! How are you doing.','April 26, 2016 3:49:27 AM EDT','PENDING'),(0000000010,'abc','ankitbh','Hey! How are you doing.','April 26, 2016 3:54:43 AM EDT','PENDING'),(0000000011,'ankitbh','pam','Hey! How are you doing.','April 26, 2016 5:24:03 AM EDT','PENDING'),(0000000012,'ankitbh','admin','Wanted to report about abc, please remove','April 26, 2016 8:10:13 AM EDT','PENDING');
/*!40000 ALTER TABLE `contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `countries`
--

DROP TABLE IF EXISTS `countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `countries` (
  `countryName` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`countryName`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `countries`
--

LOCK TABLES `countries` WRITE;
/*!40000 ALTER TABLE `countries` DISABLE KEYS */;
INSERT INTO `countries` VALUES ('Afghanistan'),('Albania'),('Algeria'),('Andorra'),('Angola'),('Anguilla'),('Antarctica'),('Antigua & Barbuda'),('Argentina'),('Armenia'),('Aruba'),('Australia'),('Austria'),('Azerbaijan'),('Bahamas'),('Bahrain'),('Bangladesh'),('Barbados'),('Belarus'),('Belgium'),('Belize'),('Benin'),('Bermuda'),('Bhutan'),('Bolivia'),('Bosnia-Herzogna'),('Botswana'),('Brazil'),('Brunei'),('Bulgaria'),('Burkina Faso'),('Burundi'),('Cambodia'),('Cameroon'),('Canada'),('Cape Verde'),('Cayman Islands'),('Central African Rep.'),('Chad'),('Chile'),('China'),('Christmas Island'),('Cocos (Keeling) Is.'),('Colombia'),('Comoros'),('Congo'),('Congo (Zaire)'),('Costa Rica'),('Cote D\'Ivoire'),('Croatia (Hrvatska)'),('Cyprus'),('Czech Rep.'),('Denmark'),('Djibouti'),('Dominica'),('Dominican Rep.'),('East Timor'),('Ecuador'),('Egypt'),('El Salvador'),('Equatorial Guinea'),('Eritrea'),('Estonia'),('Ethiopia'),('Falkland Is.'),('Faroe Islands'),('Fiji Islands'),('Finland'),('France'),('French Guiana'),('French Polynesia'),('French So. Terr.'),('Gabon'),('Gambia'),('Georgia'),('Germany'),('Ghana'),('Gibraltar'),('Greece'),('Greenland'),('Grenada'),('Guadeloupe'),('Guam'),('Guatemala'),('Guinea'),('Guinea-Bissau'),('Guyana'),('Haiti'),('Honduras'),('Hong Kong (China)'),('Hungary'),('Iceland'),('India'),('Indonesia'),('Ireland'),('Israel'),('Italy'),('Jamaica'),('Japan'),('Jordan'),('Kazakhstan'),('Kenya'),('Kiribati'),('Korea, South'),('Kuwait'),('Kyrgyzstan'),('Laos'),('Latvia'),('Lebanon'),('Lesotho'),('Liechtenstein'),('Lithuania'),('Luxembourg'),('Macau (China)'),('Macedonia'),('Madagascar'),('Malawi'),('Malaysia'),('Maldives'),('Mali'),('Malta'),('Martinique'),('Mauritania'),('Mauritius'),('Mayotte'),('Mexico'),('Moldova'),('Monaco'),('Mongolia'),('Montserrat'),('Morocco'),('Mozambique'),('Myanmar'),('Namibia'),('Nauru'),('Nepal'),('Netherlands'),('Netherlands Ant.'),('New Caledonia'),('New Zealand'),('Nicaragua'),('Niger'),('Nigeria'),('Niue'),('No. Mariana Is.'),('Norfolk Island'),('Norway'),('Oman'),('Pakistan'),('Palau'),('Panama'),('Papua new Guinea'),('Paraguay'),('Peru'),('Philippines'),('Pitcairn Is.'),('Poland'),('Portugal'),('Puerto Rico'),('Qatar'),('Reunion'),('Romania'),('Russia'),('Rwanda'),('Saint Helena'),('Saint Kitts & Nevis'),('Saint Lucia'),('Samoa'),('San Marino'),('Sandwich Islands'),('Sao Tome & Prin.'),('Saudi Arabia'),('Senegal'),('Seychelles'),('Sierra Leone'),('Singapore'),('Slovakia'),('Slovenia'),('Solomon Islands'),('Somalia'),('South Africa'),('Spain'),('Sri Lanka'),('St. Pierre & Miq\'n'),('St. Vincent & Gred\'s.'),('Sudan'),('Suriname'),('Svalbard & J. May\'n'),('Swaziland'),('Sweden'),('Switzerland'),('Syria'),('Taiwan'),('Tajikistan'),('Tanzania'),('Thailand'),('The Vatican'),('Togo'),('Tokelau'),('Tonga'),('Trinidad & Tobago'),('Tunisia'),('Turkey'),('Turkmenistan'),('Turks & Caicos Is.'),('Tuvalu'),('UAE'),('Uganda'),('Ukraine'),('United Kingdom'),('Uruguay'),('USA'),('Uzbekistan'),('Vanuatu'),('Venezuela'),('Vietnam'),('Virgin Islands (UK)'),('Virgin Islands (USA)'),('Wallis & Futuna Is.'),('Western Sahara'),('Yemen'),('Yugoslavia'),('Zambia'),('Zimbabwe');
/*!40000 ALTER TABLE `countries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `messages`
--

DROP TABLE IF EXISTS `messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `messages` (
  `messageID` int(10) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `userName` varchar(20) NOT NULL DEFAULT '',
  `fromUser` varchar(20) NOT NULL DEFAULT '',
  `message` text NOT NULL,
  `messageDate` varchar(40) NOT NULL DEFAULT '',
  PRIMARY KEY (`messageID`)
) ENGINE=MyISAM AUTO_INCREMENT=5570 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messages`
--

LOCK TABLES `messages` WRITE;
/*!40000 ALTER TABLE `messages` DISABLE KEYS */;
INSERT INTO `messages` VALUES (0000000037,'pam','toni','hi there, tony','12/3/2003'),(0000000038,'marry','joe','hi from joe','12/7/2003'),(0000000039,'marry','toni','this is tony','12/5/2003'),(0000000056,'toni','pam','Nice day in Boston','Sun Dec 02 20:45:33 EST 2007'),(0000000028,'jenny','mickey','message from mickey','12/6/2003'),(0000000029,'jenny','toni','hi from tony','11/29/2203'),(0000000030,'yusuf','jenny','hi from jenny','12/6/2003'),(0000000031,'yusuf','pam','hi, this is pam','12/5/2003'),(0000000032,'yusuf','marry','this is marry','12/6/2003'),(0000000027,'jenny','joe','message from joe','12/3/2003'),(0000000025,'jenny','yusuf','message from yusuf','12/6/2003'),(0000000026,'jenny','jack','message from jack','12/5/2003'),(0000000040,'marry','jack','from jack','12/6/2003'),(0000000041,'marry','mickey','this is mickey','12/5/2003'),(0000000044,'jack','jenny','hi from jenny','12/5/2003'),(0000000045,'jack','pam','hi from pam','12/6/2003'),(0000000054,'toni','marry','hello from marry','12/6/2003'),(0000000046,'joe','pam','from pam','12/7/2003'),(0000000047,'joe','jenny','from jenny','12/6/2003'),(0000000048,'joe','marry','from marry','12/5/2003'),(0000000049,'mickey','jenny','hi this is jenny','12/7/2003'),(0000000050,'mickey','marry','hello, this is marry','12/5/2003'),(0000000051,'mickey','pam','hi mickey, this is pam','12/6/2003'),(0000000052,'toni','pam','hi from pam','12/4/2003'),(0000000053,'toni','jenny','hi from jenny','12/5/2003'),(0000000055,'jack','marry','hello, this is marry','12/5/2003'),(0000005540,'  ',' jenny ',' hello ysf ',''),(0000005541,'marrymessage=h1','yusuf','null','Sat Apr 09 13:09:38 EDT 2016'),(0000005542,'marrymessage=h2','yusuf','null','Sat Apr 09 13:09:46 EDT 2016'),(0000005544,'yusuf','marry','Let\'s discuss it over a coffee..Are you free tonight?','April 18, 2016 1:24:00 PM EDT'),(0000005545,'marry','yusuf','Today I have submission, tomo 9am?','April 18, 2016 1:29:45 PM EDT'),(0000005559,'ankitbh','abc','Hey! How are you doing.','April 26, 2016 3:54:43 AM EDT'),(0000005560,'abc','ankitbh','I am good what about you!','April 26, 2016 3:56:33 AM EDT'),(0000005557,'marry','yusuf','ajdsajdhakjdhsk','April 24, 2016 5:44:24 PM EDT'),(0000005553,'yusuf','marry','d2','April 18, 2016 4:34:22 PM EDT'),(0000005554,'yusuf','marry','d3','April 18, 2016 4:35:19 PM EDT'),(0000005561,'ankitbh','abc','Well I am excellent..','April 26, 2016 4:00:14 AM EDT'),(0000005562,'abc','ankitbh','Let\'s Discuss our project work during the weekend.','April 26, 2016 4:33:04 AM EDT'),(0000005563,'pam','ankitbh','Hey! How are you doing.','April 26, 2016 5:24:03 AM EDT'),(0000005564,'admin','ankitbh','Wanted to report about abc, please remove','April 26, 2016 8:10:13 AM EDT'),(0000005565,'abc','ankitbh','Whatsup buddy?','April 26, 2016 8:27:53 AM EDT'),(0000005566,'abc','ankitbh','Whatsup buddy?','April 26, 2016 8:28:59 AM EDT'),(0000005567,'ankitbh','abc','Nothing much you say','April 26, 2016 8:32:06 AM EDT'),(0000005568,'ankitbh','abc','I am fine my friend.. what abt u\n','April 26, 2016 8:35:24 AM EDT'),(0000005569,'abc','ankitbh','Will catch you later.. bye','April 26, 2016 8:43:08 AM EDT');
/*!40000 ALTER TABLE `messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userdetail`
--

DROP TABLE IF EXISTS `userdetail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `userdetail` (
  `UserID` int(10) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `UserName` varchar(20) DEFAULT '',
  `UserFullName` varchar(30) DEFAULT '',
  `Height` int(11) unsigned DEFAULT '0',
  `Weight` int(11) DEFAULT '0',
  `StudiesEmphasis` varchar(255) DEFAULT '',
  `RelocateFlag` varchar(20) NOT NULL DEFAULT '',
  `Headline` text,
  `Occupation` varchar(255) NOT NULL DEFAULT '',
  `OccupationDescription` varchar(255) DEFAULT '',
  `GrewUpIn` varchar(100) DEFAULT '',
  `ZodiacSign` varchar(20) DEFAULT '',
  `Languages` varchar(255) DEFAULT '',
  `RelationshipType` varchar(255) DEFAULT '',
  `MaritalStatus` varchar(100) DEFAULT '',
  `HairColor` varchar(40) DEFAULT '',
  `IncomeLevel` varchar(100) DEFAULT '',
  `EducationLevel` varchar(200) DEFAULT '',
  `BodyType` varchar(200) DEFAULT '',
  `AppearanceImportance` varchar(100) DEFAULT '',
  `Religion` varchar(100) DEFAULT '',
  `EyeColor` varchar(50) DEFAULT '',
  `Ethnicity` varchar(100) DEFAULT '',
  `PoliticalOrientation` varchar(100) DEFAULT '',
  `IntelligenceImportance` varchar(50) DEFAULT '',
  `SmokingHabits` varchar(50) DEFAULT '',
  `ActivityLevel` varchar(100) DEFAULT '',
  `Custody` varchar(100) DEFAULT '',
  `DrinkingHabits` varchar(50) DEFAULT '',
  `MoreChildrenFlag` varchar(50) DEFAULT '',
  `AboutMe2` text,
  `PersonalityTrait` varchar(255) DEFAULT '',
  `LeisureActivity` varchar(255) DEFAULT '',
  `PerfectMatchEssay` text,
  `Cuisine` varchar(255) DEFAULT '',
  `Music` varchar(255) DEFAULT '',
  `Reading` varchar(255) DEFAULT '',
  `PerfectFirstDateEssay` text,
  `EntertainmentLocation` varchar(255) DEFAULT '',
  `PhysicalActivity` varchar(255) DEFAULT '',
  `IdealRelationshipEssay` text,
  `LearnFromThePastEssay` text,
  PRIMARY KEY (`UserID`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userdetail`
--

LOCK TABLES `userdetail` WRITE;
/*!40000 ALTER TABLE `userdetail` DISABLE KEYS */;
INSERT INTO `userdetail` VALUES (0000000001,'ankitbh','Ankit',152,45360,'Software/Biology/Maths','0','Call me at any time','Executive/General Mgt/Consulting','dlsakdakdlsakd','far from here','Capricorn','English','Friend','Single','Blonde','Will tell you later','Bachelor\'s Degree','Athletic/Fit','Medium Importance','Atheist','Blue Green','Middle Eastern','Liberal','Medium Importance','Smokes Regularly','Rarely Active','Sometimes','Socially','0','N.A.','Argumentative','Collecting','N.A.','Barbecue','Blues','Magazines','N.A.','Beach','Bowling','N.A.','N.A.'),(0000000002,'yusuf','yusuf pathan',250,100,'studies','relocate','Looking for true friendship','Occupation','Occupation Description','Grew up in','Zodiac Sign','Languages I speak','Type of RelationshipType seeking','I','Hair Color','Income Level','Education Level:','Body Type','Rate appearance:','Religion','Eye Color','Ethnicity','Ethnicity','Rate Intelligence','Smoking Habits','Activity Level','Custody','Drinking Habits','Want more','About Me again','My personality traits:','My favorite activities','ss','ss','ss','ss','ss','ss','ss','ss','great exp'),(0000000003,'marry','Maria ',134,36288,'Software/Biology','1','Awesome Guy','Architecture/Interior Design','dlsakdakdlsakd','far from here','Aquarius','English','Email/Chat','Divorced','Auburn','Will tell you later','Elementary','Lean/Slender','Not important','Agnostic','Black/Ebony','African Descent/Black','Unspecified','Not important','Non-Smoker','Never Active','I have no kids','Never','0','asjdsajdhadhsakjdhadk','Sophisticated/Worldly','Intimate Conversations','asdshdjdhkjasdhahkdhaksjdhka','Thai','World Music/Ethnic','Comics','ajsdhksadkashd','Symphony','Tennis/Racquet Sports','kasjdashdadkjhkhk','ajsdhkajshdakdjahkjsda'),(0000000004,'jenny','jenny lopez',250,59,'Economics','0','Call me at any time','Doctor','Description not req','Boston','Gemini','Urdu Vietnamese Yiddish','A Date,','Single','Blonde','Will tell you later','Doctorate','Zaftig','Not important','Unaffiliated','Hazel','South Asian/East Indian','Extreme Liberal','Most Important','Non-Smoker','Active','I have no kids','Never','1','This is me, I will tell you later once we connect','Adventurous/Wild/Spontaneous, Argumentative,','Antiquing, Board Games/Backgammon/Chess,','I am looking for an honest person','American, Barbecue,','Alternative, Big Band/Swing,','Fiction,','It should be at a romantic restaurant','Amusement Parks,','Aerobics,','My perception of an ideal relationship','What Ive learned from my past relationships is not significant'),(0000000008,'michael','Mike',152,45360,'Software/Biology/Maths','0','Dynamic person','Executive/General Mgt/Consulting','Description not req','far from here','Capricorn','English','Friend','Single','Blonde','Will tell you later','Bachelor\'s Degree','Athletic/Fit','Medium Importance','Atheist','Blue Green','Middle Eastern','Liberal','Medium Importance','Smokes Regularly','Rarely Active','Sometimes','Socially','0','N.A.','Argumentative','Collecting','N.A.','Barbecue','Blues','Magazines','N.A.','Beach','Bowling','N.A.','N.A.'),(0000000034,'abc','abc',152,45360,'Software/Biology/Maths','1','Call me at any time','Executive/General Mgt/Consulting','dlsakdakdlsakd','far from here','Capricorn','English','Friend','Single','Blonde','Will tell you later','Bachelor\'s Degree','Athletic/Fit','Medium Importance','Atheist','Blue Green','Middle Eastern','Liberal','Medium Importance','Smokes Regularly','Rarely Active','Sometimes','Socially','0','N.A.','Argumentative','Collecting','N.A.','Barbecue','Blues','Magazines','N.A.','Beach','Bowling','N.A.','N.A.');
/*!40000 ALTER TABLE `userdetail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userstable`
--

DROP TABLE IF EXISTS `userstable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `userstable` (
  `UserID` int(10) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `UserName` varchar(20) NOT NULL DEFAULT '',
  `UserPassword` varchar(20) NOT NULL DEFAULT '',
  `DOBmonth` int(11) unsigned NOT NULL DEFAULT '0',
  `DOBday` int(11) unsigned NOT NULL DEFAULT '0',
  `DOByear` int(11) unsigned NOT NULL DEFAULT '0',
  `age` int(11) unsigned NOT NULL DEFAULT '0',
  `lastLoginDate` varchar(50) NOT NULL DEFAULT '',
  `Email` varchar(100) NOT NULL DEFAULT '',
  `Gender` varchar(10) NOT NULL DEFAULT '',
  `SeekingGender` varchar(10) NOT NULL DEFAULT '',
  `Country` varchar(50) NOT NULL DEFAULT '',
  `State` varchar(50) NOT NULL DEFAULT '',
  `City` varchar(50) NOT NULL DEFAULT '',
  `PostalCode` varchar(10) NOT NULL DEFAULT '',
  `AboutMe1` text NOT NULL,
  `FileLocation` varchar(100) NOT NULL DEFAULT '',
  `Height` int(11) unsigned NOT NULL DEFAULT '0',
  `Weight` int(11) unsigned NOT NULL DEFAULT '0',
  `StudiesEmphasis` varchar(255) NOT NULL DEFAULT '',
  `RelocateFlag` varchar(20) NOT NULL DEFAULT '',
  `Headline` text NOT NULL,
  `Occupation` varchar(255) NOT NULL DEFAULT '',
  `OccupationDescription` varchar(255) NOT NULL DEFAULT '',
  `GrewUpIn` varchar(100) NOT NULL DEFAULT '',
  `ZodiacSign` varchar(20) NOT NULL DEFAULT '',
  `Languages` varchar(255) NOT NULL DEFAULT '',
  `RelationshipType` varchar(255) NOT NULL DEFAULT '',
  `MaritalStatus` varchar(100) NOT NULL DEFAULT '',
  `HairColor` varchar(40) NOT NULL DEFAULT '',
  `IncomeLevel` varchar(100) NOT NULL DEFAULT '',
  `EducationLevel` varchar(200) NOT NULL DEFAULT '',
  `BodyType` varchar(200) NOT NULL DEFAULT '',
  `AppearanceImportance` varchar(100) NOT NULL DEFAULT '',
  `Religion` varchar(100) NOT NULL DEFAULT '',
  `EyeColor` varchar(50) NOT NULL DEFAULT '',
  `Ethnicity` varchar(100) NOT NULL DEFAULT '',
  `PoliticalOrientation` varchar(100) NOT NULL DEFAULT '',
  `IntelligenceImportance` varchar(50) NOT NULL DEFAULT '',
  `SmokingHabits` varchar(50) NOT NULL DEFAULT '',
  `ActivityLevel` varchar(100) NOT NULL DEFAULT '',
  `Custody` varchar(100) NOT NULL DEFAULT '',
  `DrinkingHabits` varchar(50) NOT NULL DEFAULT '',
  `MoreChildrenFlag` varchar(50) NOT NULL DEFAULT '',
  `AboutMe2` text NOT NULL,
  `PersonalityTrait` varchar(255) NOT NULL DEFAULT '',
  `LeisureActivity` varchar(255) NOT NULL DEFAULT '',
  `PerfectMatchEssay` text NOT NULL,
  `Cuisine` varchar(255) NOT NULL DEFAULT '',
  `Music` varchar(255) NOT NULL DEFAULT '',
  `Reading` varchar(255) NOT NULL DEFAULT '',
  `PerfectFirstDateEssay` text NOT NULL,
  `EntertainmentLocation` varchar(255) NOT NULL DEFAULT '',
  `PhysicalActivity` varchar(255) NOT NULL DEFAULT '',
  `IdealRelationshipEssay` text NOT NULL,
  `LearnFromThePastEssay` text NOT NULL,
  PRIMARY KEY (`UserID`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userstable`
--

LOCK TABLES `userstable` WRITE;
/*!40000 ALTER TABLE `userstable` DISABLE KEYS */;
INSERT INTO `userstable` VALUES (0000000007,'jenny','password',1,1,1970,33,'Tue Dec 09 14:17:56 EST 2003','jenny@hotmail.com','Female','Male','USA','NH','Manchester','02220','I look great','images/lady2.jpg',170,59,'Software','0','Call me','Student','Description','Boston','Gemini','Urdu Vietnamese Yiddish','A Date,','Single','Blonde','Will tell you later','Doctorate','Zaftig','Not important','Unaffiliated','Hazel','South Asian/East Indian','Extreme Liberal','Most Important','Non-Smoker','Active','I have no kids','Never','1','This is me, I will tell you later','Adventurous/Wild/Spontaneous, Argumentative,','Antiquing, Board Games/Backgammon/Chess,','I am looking for an honest person','American, Barbecue,','Alternative, Big Band/Swing,','Fiction,','It should be at a romantic restaurant','Amusement Parks,','Aerobics,','My perception of an ideal relationship','What Ive learned from my past relationships...'),(0000000006,'yusuf','password',1,1,1986,30,'Dec 12','email','Male','Female','usa','ma','city','02115','aboutme','images/nopicture.jpg',175,100,'studies','relocate','headline','Occupation','Occupation Description','Grew up in','Zodiac Sign','Languages I speak','Type of RelationshipType seeking','I','Hair Color','Income Level','Education Level:','Body Type','Rate appearance:','Religion','Eye Color','Ethnicity','Ethnicity','Rate Intelligence','Smoking Habits','Activity Level','Custody','Drinking Habits','Want more','About Me','My personality traits:','My favorite activities','ss','ss','ss','ss','ss','ss','ss','ss','great'),(0000000012,'pam','password',5,10,1975,28,'','ccc','Female','Male','USA','MA','Boston','02226','I am considered the class clown type. I need someone who can take my sharp tongue and verbal wit!:) Im 1/2 Thai and 1/2 White. But no one can ever figure this out and I have had many people start talking in Spanish to me.','images/lady1.jpg',165,50,'java','no','Single Female seeking Male','Programmer','Grewat Java Programmer','Newyork','Gemini','English','Friendship','single','black','50000','Masters','Slim','No','Jewish','blue','Hispanic','Democrat','yes','no','Active','1 kid','Never','no','Taking road trips to new places. Spending time with friends and family are important. I am pretty easy to get along with as long as you can conversate with me ','Adventurous','Board Games','My new essay is being approved by Customer Care. Check back soon to find out more about me','French','Techno','Fiction','Well that would depend on how adventurous and sponteineous \r\n ','Mo','Ba','You actually have to like the person you are with and consider them a friend aside from the love part. Trust, ','You actually have to like the person you are with and consider them a friend aside from the love part. Trust, communication, '),(0000000013,'jack','1234',1,1,1970,33,'Thu Dec 11 12:31:12 EST 2003','jack@hotmail.com','Male','Female','USA','MA','Boston','02134','','images/nopicture.jpg',195,59,'wwwwwwwwwwwwwwwww','0','wwww','Technical/Science/Engineering','wwwwwwwwwwwwww','wwwww','Cancer','Arabic English','A Date,','Single','Other','Under $15,000','High School','Muscular','Low Importance','Unaffiliated','Blue','African Descent/Black','Extreme Liberal','Not important','Occasional Smoker','Rarely Active','Sometimes','On occasion','0','wwwwwwwwwwwwwwwwwwwwwww','Adventurous/Wild/Spontaneous,','Antiquing,','kkkkkkkkkkkkkkkkkkkk','Deli,','Alternative,','Newspapers,','lllllllllllllllllllll','Amusement Parks,','Golf,','hhhhhhhhhhhhhhhhhhhhhh','jjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjj'),(0000000016,'joe','1234',10,10,1972,31,'','joe@hotmail.com','Male','Female','USA','MA','Boston','02114','','images/joe.jpg',150,85,'','','','Consultant','','New Hamphire','','German','Friend','Single','Blonde','Later','Bachelors','Slim','No','Christian','','White','Republican','No','No','Active','2 kids','never','1','I am Not a subscriber, Please IM or via dzablat at the opposite of cold and well you know the rest!; I am person who is very active athletically and socially!! I enjoy playing most sports as well inging, acting, dancing, playing the trumpet, going to the theatre, musuems, the beach and basically enjoying life to the fullest!! I am enjoy eating at all types of restaurants and being their for my friends and family!!','Adventurous/Wild/Spontaneous, Artistic, Compulsive, Conservative/Clean','','','','','','','','','',''),(0000000015,'mickey','mouse',1,1,1970,33,'Sat Dec 06 19:06:10 EST 2003','mickey@coe.neu.edu','Male','Female','USA','MA','Boston','02115','','images/mickey.jpg',190,89,'Engineering Software Design','1','Just a regular guy','Technical/Science/Engineering','Java servlet/jsp programmer','Boston','Aquarius','English French German','A Date, Friend,','Single','Black','$50,000 - $100,000','Ph.D./Postdoctoral','Muscular','Not important','Jewish','Blue','Native American','Liberal','Most Important','Non-Smoker','Very Active','I have no kids','Never','0','Hi im a very down to earth person, not into the whole bar scene. I thought I would give this a chance Im very funny, love to laugh and have a good time. I never have a dull moment and I always know what to say lol I have 2 kids my daughter lives with me and my son lives with his mom and they are the most important thing in my life . but one thing is missing and that could be you hope to hear from u wayne aug 34 aonline','Outgoing, Practical, Procrastinator,','Cooking/Barbecuing, Dining Out, Entertaining,','Im looking for sombody that wants to be my best friend. She has to be someone I can look into her eyes and just know that we will always be together forever','Italian, Korean, Mediterranean, Mexican,','Dance/Electronica, Disco,','Fiction, Newspapers, Poetry,','I will just be able to feel it know matter what we do but I would just like to go somewhere quiet and just talk and get to know each other ','Beach, Bookstores,','Basketball, Bowling,','Trust thats the one thing that is most important to me . we must be best friends and be able to tell each other everything good or bad .','just be yourself . you cant change someone no matter how bad you want to everyone has thier own mind just let them make up thier own'),(0000000017,'toni','pass',2,3,1965,38,'','','Male','Female','USA','NY','Newyork City','11111','','images/toni.jpg',180,90,'','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',''),(0000000018,'marry','abc',10,25,1975,28,'','','Female','Male','USA','MA','','','','images/marry.jpg',165,50,'','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',''),(0000000019,'robin','hood',1,1,1983,20,'Wed Apr 20 03:33:54 EDT 2016','robin@abc.com','Male','Female','USA','OH','Columbus','12312','I am the best!','images/nopicture.jpg',152,42,'Arts','0','Awesome Guy','Advertising/Marketing/PR','dlsakdakdlsakd','far from here','Cancer','English ','Marriage, ','Single','Auburn','Will tell you later','Elementary','Lean/Slender','Not important','Agnostic','Black/Ebony','African Descent/Black','Unspecified','Most Important','Occasional Smoker','Rarely Active','I have no kids','Never','0','jsakdjadjsdjkasdjkasdjkasdkadjas','Easygoing/Flexible/Open-Minded, Practical, ','Dining Out, Traveling/Weekend Trips/Adventure Travel, ','honesty and passion','Chinese/Dim Sum, Vegetarian/Organic, ','Classical, Instrumental, ','Non-Fiction, ','Beach/Candle light Dinner','In Bars/In Nightclubs, Live Theater, ','Biking, Volleyball, ','ajdkasjdlk','Live life and stay happy');
/*!40000 ALTER TABLE `userstable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usertable`
--

DROP TABLE IF EXISTS `usertable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usertable` (
  `UserID` int(10) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `UserName` varchar(20) NOT NULL DEFAULT '',
  `UserPassword` varchar(20) NOT NULL DEFAULT '',
  `DOBmonth` int(11) unsigned NOT NULL DEFAULT '0',
  `DOBday` int(11) unsigned NOT NULL DEFAULT '0',
  `DOByear` int(11) unsigned NOT NULL DEFAULT '0',
  `age` int(11) unsigned NOT NULL DEFAULT '0',
  `lastLoginDate` varchar(50) NOT NULL DEFAULT '',
  `Email` varchar(100) NOT NULL DEFAULT '',
  `Gender` varchar(10) NOT NULL DEFAULT '',
  `SeekingGender` varchar(10) NOT NULL DEFAULT '',
  `Country` varchar(50) NOT NULL DEFAULT '',
  `State` varchar(50) NOT NULL DEFAULT '',
  `City` varchar(50) NOT NULL DEFAULT '',
  `PostalCode` varchar(10) NOT NULL DEFAULT '',
  `AboutMe1` text,
  `FileLocation` varchar(100) DEFAULT '',
  `UserRole` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`UserID`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usertable`
--

LOCK TABLES `usertable` WRITE;
/*!40000 ALTER TABLE `usertable` DISABLE KEYS */;
INSERT INTO `usertable` VALUES (0000000001,'ankitbh','abc',1,25,1986,30,'Sun Apr 10 22:38:28 EDT 2016','ankit.bhayani@gmail.com','Male','Female','USA','MA','Boston','02121','student at Boston University',NULL,NULL),(0000000002,'yusuf','abc',1,1,1986,30,'Tue Apr 12 23:51:55 EDT 2016','yusuf@abc.com','Male','Female','USA','MA','Dorchester','02125','Handsome and Intelligent guy',NULL,NULL),(0000000003,'marry','246',1,2,1986,30,'Mon Apr 18 13:19:06 EDT 2016','marrygoround@abc.com','Female','Male','USA','TX','Houston','48311',NULL,NULL,NULL),(0000000004,'jenny','abc',1,1,1985,31,'Tue Apr 19 01:54:02 EDT 2016','jen@abc.com','Female','Male','USA','NH','Nashua','12345','Fun-loving, looking for a decent guy','/resources/filesUploadedByUsers/1461045242216lady2.jpg',NULL),(0000000005,'joe','abc',1,1,1986,30,'Wed Apr 20 00:05:32 EDT 2016','mickey@abc.com','Male','Female','USA','MA','Waltham','23131','Good sense of humor and an entertainer','/resources/filesUploadedByUsers/1461125132500joe.jpg',NULL),(0000000006,'mickey','mouse',1,1,1986,30,'Wed Apr 20 00:23:23 EDT 2016','jack@abc.com','Male','Female','USA','IL','Wood Dale','60190','Sincere and hard-working','/resources/filesUploadedByUsers/1461126203402mickey.jpg',NULL),(0000000007,'pam','pam',1,1,1984,32,'Wed Apr 20 01:46:02 EDT 2016','pam@abc.com','Female','Male','USA','IL','Chicago','64124','Girl who likes to explore adventurous places','/resources/filesUploadedByUsers/1461131162883lady5.jpg',NULL),(0000000008,'michael','abc',1,1,1986,30,'Thu Apr 21 16:50:05 EDT 2016','mike@abc.com','Male','Female','USA','NY','NY','22312','Dancer, Singer and Entertainer','/resources/filesUploadedByUsers/1461271805617michaeljacksonrip.jpg',NULL),(0000000010,'john','abc',1,1,1986,30,'Sun Apr 24 00:08:43 EDT 2016','john@abc.com','Male','Female','USA','MA','Boston','02115','Likes to cook and write novels','/resources/filesUploadedByUsers/1461470923713Watson01.png',NULL),(0000000011,'admin','admin',2,1,1986,30,'Sun Apr 24 11:44:09 EDT 2016','iamtheadmin@abc.com','Male','Female','USA','OH','Columbus','21321','Administrator of this website','/resources/filesUploadedByUsers/1461512649569','ADMIN'),(0000000018,'Ryan','abc',1,1,1986,30,'Mon Apr 25 20:15:49 EDT 2016','iamryan12@gmail.com','Male','Female','USA','MA','Boston','02115','Smart and funny','/resources/filesUploadedByUsers/1461629754188',NULL),(0000000031,'jason','abc',1,1,1986,30,'Tue Apr 26 01:52:59 EDT 2016','jasonthomasisrockstar@gmail.com','Male','Female','USA','MA','Boston','02115','Rockstar','/resources/filesUploadedByUsers/1461649980995',NULL),(0000000034,'abc','abc',1,1,1986,30,'Tue Apr 26 01:57:34 EDT 2016','abc@abc.com','Male','Female','China','IL','ac','d','a','/resources/filesUploadedByUsers/1461650258708',NULL);
/*!40000 ALTER TABLE `usertable` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-04-26  8:45:07
