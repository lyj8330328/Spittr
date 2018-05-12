package myspittr.data;

import myspittr.loginspitter.LoginSpitter;
import myspittr.spitter.Spitter;

public interface SpitterRepositorys {
	void save(Spitter spitter);

	Spitter findByUsername(String username);

	LoginSpitter verifyUser(String username, String password);
}
