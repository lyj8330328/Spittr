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

		// �û���¼У��

		LoginSpitter loginSpitter = (LoginSpitter) arg0;

		// �û���6~12���ַ�����ʹ����ĸ�����֣�������ĸ��ͷ
		String username = loginSpitter.getUsername_l();
		if (username.length() < 6 || username.length() > 12) {
			errors.rejectValue("username_l", "spittr.username");
		}

		// ����6~16���ַ������ִ�Сд
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
