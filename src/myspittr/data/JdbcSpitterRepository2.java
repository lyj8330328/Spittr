package myspittr.data;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcOperations;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import myspittr.loginspitter.LoginSpitter;
import myspittr.spitter.Spitter;

//@Service
@Repository
public class JdbcSpitterRepository2 implements SpitterRepositorys {

	private JdbcOperations jdbc;
	private Spitter savedSpitter;

	@Autowired
	public JdbcSpitterRepository2(JdbcOperations jdbc) {
		this.jdbc = jdbc;
	}

	public void save(Spitter spitter) {

		jdbc.update("insert into spitter (username, password, email)" + " values (?, ?, ?)", spitter.getUsername(),
				spitter.getPassword(), spitter.getEmail());

	}

	public Spitter findByUsername(String username) {
		return jdbc.queryForObject("select Id, username, email from Spitter where username=?", new SpitterRowMapper(),
				username);
	}

	private static class SpitterRowMapper implements RowMapper<Spitter> {
		public Spitter mapRow(ResultSet rs, int rowNum) throws SQLException {
			return new Spitter(Integer.parseInt(rs.getString("id")), rs.getString("username"), rs.getString("email"));
		}
	}

	@Override
	public LoginSpitter verifyUser(String username, String password) {
		// TODO Auto-generated method stub
		LoginSpitter loginSpitter = new LoginSpitter();
		Spitter spitter = jdbc.queryForObject("select Id, username, email from Spitter where username=? and password=?",
				new SpitterRowMapper(), username, password);
		if (spitter != null) {
			loginSpitter.setPassword_l(spitter.getPassword());
			loginSpitter.setUsername_l(spitter.getUsername());
			return loginSpitter;
		} else {
			return null;
		}
	}

}
