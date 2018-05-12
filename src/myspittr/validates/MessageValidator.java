package myspittr.validates;

import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

import myspittr.pubspittle.PubSpittle;

public class MessageValidator implements Validator {

	@Override
	public boolean supports(Class<?> arg0) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public void validate(Object arg0, Errors errors) {
		// TODO Auto-generated method stub
		PubSpittle message = (PubSpittle) arg0;
		String title = message.getTitle();
		String messages = message.getMessage();
		if (!(title.length() <= 18 && title.length() > 0)) {
			errors.rejectValue("title", "spittr.title");
		} else if (!(messages.length() <= 50 && messages.length() > 0)) {
			errors.rejectValue("message", "spittr.message");
		}
	}

}
