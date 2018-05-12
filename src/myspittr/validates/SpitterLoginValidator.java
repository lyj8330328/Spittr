package myspittr.validates;

import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

import myspittr.data.SpitterRepositorys;
import myspittr.loginspitter.LoginSpitter;

public class SpitterLoginValidator implements Validator {

	private SpitterRepositorys user;

	public SpitterLoginValidator(SpitterRepositorys user) {
		this.user = user;
	}

	@Override
	public boolean supports(Class<?> arg0) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public void validate(Object arg0, Errors errors) {
		// TODO Auto-generated method stub

		// 用户登录校验

		LoginSpitter loginSpitter = (LoginSpitter) arg0;

		// 用户名6~12个字符，可使用字母、数字，需以字母开头
		String username = loginSpitter.getUsername_l();
		if (username.length() < 6 || username.length() > 12) {
			errors.rejectValue("username_l", "spittr.username");
		}

		// 密码6~16个字符，区分大小写
		String password1 = loginSpitter.getPassword_l();

		if (password1.length() < 6 || password1.length() > 16) {
			errors.rejectValue("password_l", "spittr.password");
		}
		try {
			LoginSpitter spitter = user.verifyUser(username, password1);
		} catch (Exception e) {
			// TODO: handle exception
			errors.rejectValue("password_l", "spittr.loginerror");
		}

	}

}
