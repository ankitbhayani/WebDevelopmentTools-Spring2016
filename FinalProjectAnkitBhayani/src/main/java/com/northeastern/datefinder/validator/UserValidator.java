package com.northeastern.datefinder.validator;

import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import com.northeastern.datefinder.pojo.User;

public class UserValidator implements Validator{

	@Override
	public boolean supports(Class clazz) {
		return clazz.equals(User.class);
	}

	@Override
	public void validate(Object obj, Errors errors) {
	       User user = (User) obj;
	        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "UserName", "error.invalid.user", "User Name Required");
	        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "UserPassword", "error.invalid.user", "User Password Required");
	        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "City", "error.invalid.user", "City is Required");
	        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "State", "error.invalid.password", "State is Required");
	        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "Email", "error.invalid.email.emailId", "Email is Required");
	 
		
	}

}
