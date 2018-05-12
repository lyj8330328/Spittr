package myspittr.loginspitter;

public class LoginSpitter {
	private String username_l;

	private String password_l;

	public LoginSpitter() {

	}

	public LoginSpitter(String username_l, String password_l) {
		this.username_l = username_l;
		this.password_l = password_l;
	}

	public String getUsername_l() {
		return username_l;
	}

	public void setUsername_l(String username_l) {
		this.username_l = username_l;
	}

	public String getPassword_l() {
		return password_l;
	}

	public void setPassword_l(String password_l) {
		this.password_l = password_l;
	}
}
