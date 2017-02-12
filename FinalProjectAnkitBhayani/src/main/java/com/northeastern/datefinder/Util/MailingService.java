package com.northeastern.datefinder.Util;

import org.apache.commons.mail.DefaultAuthenticator;
import org.apache.commons.mail.EmailAttachment;
import org.apache.commons.mail.EmailException;
import org.apache.commons.mail.MultiPartEmail;

import com.northeastern.datefinder.pojo.User;

public class MailingService {

	public void sendMail(User user) {

		String emailId = null;
		emailId = user.getEmail();
		
		// Create the email message
		MultiPartEmail email = new MultiPartEmail();
		email.setHostName("smtp.gmail.com");
		email.setSmtpPort(587);

		email.setAuthenticator(new DefaultAuthenticator("northeasterndatefinder@gmail.com", "northeas"));

		email.setStartTLSEnabled(true);
		email.setDebug(true);

		try {
			email.addTo(emailId, user.getUserName());
			//email.addTo("ankit.bhayani@gmail.com", user.getUserName());
			email.setFrom("northeasterndatefinder@gmail.com");

			email.setSubject("Sample Mail ");
			email.setMsg("Greeting from NortheasternDateFinder.com");

			// add the attachment
			//email.attach(attachment);

			// send the email
			email.send();

		} catch (EmailException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
}
