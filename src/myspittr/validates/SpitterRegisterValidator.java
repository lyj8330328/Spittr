package myspittr.validates;

import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

import myspittr.spitter.Spitter;

public class SpitterRegisterValidator implements Validator {

	@Override
	public boolean supports(Class<?> arg0) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public void validate(Object arg0, Errors errors) {
		// TODO Auto-generated method stub

		// 用户注册校验
		Spitter spitter = (Spitter) arg0;

		// 用户名6~12个字符，可使用字母、数字，需以字母开头
		String username = spitter.getUsername();
		if (username.length() < 6 || username.length() > 12) {
			errors.rejectValue("username", "spittr.username");
		} else {
			char firString = username.toCharArray()[0];
			if (!(firString >= 'A' && firString <= 'Z' || firString <= 'z' && firString >= 'a')) {
				errors.rejectValue("username", "spittr.username");
			}
		}
		// 密码6~16个字符，区分大小写
		// 两次密码是否相同
		String password1 = spitter.getPassword();
		String password2 = spitter.getPasswordconfirm();
		if (!password1.equals(password2)) {

			errors.rejectValue("passwordconfirm", "spittr.passwordconfirm");
		} else {
			if (password1.length() < 6 || password1.length() > 16) {
				errors.rejectValue("password", "spittr.password");
			}
		}

		// 验证邮箱是否正确
		String email = spitter.getEmail();
		if (!(email.contains("@") && email.contains("."))) {
			errors.rejectValue("email", "spittr.email");
		}

	}

}
