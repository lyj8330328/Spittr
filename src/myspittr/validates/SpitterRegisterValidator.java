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

		// �û�ע��У��
		Spitter spitter = (Spitter) arg0;

		// �û���6~12���ַ�����ʹ����ĸ�����֣�������ĸ��ͷ
		String username = spitter.getUsername();
		if (username.length() < 6 || username.length() > 12) {
			errors.rejectValue("username", "spittr.username");
		} else {
			char firString = username.toCharArray()[0];
			if (!(firString >= 'A' && firString <= 'Z' || firString <= 'z' && firString >= 'a')) {
				errors.rejectValue("username", "spittr.username");
			}
		}
		// ����6~16���ַ������ִ�Сд
		// ���������Ƿ���ͬ
		String password1 = spitter.getPassword();
		String password2 = spitter.getPasswordconfirm();
		if (!password1.equals(password2)) {

			errors.rejectValue("passwordconfirm", "spittr.passwordconfirm");
		} else {
			if (password1.length() < 6 || password1.length() > 16) {
				errors.rejectValue("password", "spittr.password");
			}
		}

		// ��֤�����Ƿ���ȷ
		String email = spitter.getEmail();
		if (!(email.contains("@") && email.contains("."))) {
			errors.rejectValue("email", "spittr.email");
		}

	}

}
