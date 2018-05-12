package myspittr.data;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcOperations;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import myspittr.pubspittle.PubSpittle;
import myspittr.spittle.Spittle;

//@Service
@Repository
public class JdbcSpittleRepository2 implements SpittleRepositorys {

	private JdbcOperations jdbc;

	@Autowired
	public JdbcSpittleRepository2(JdbcOperations jdbc) {
		this.jdbc = jdbc;
	}

	// public List<Spittle> findRecentSpittles() {
	// return jdbc.query("select id, message, created_at, latitude, longitude" +
	// " from spittle"
	// + " order by created_at desc limit 20", new SpittleRowMapper());
	// }

	public List<Spittle> findSpittles() {
		return jdbc.query("select id,message, title, time, username from spittle", new SpittleRowMapper());
	}

	public Spittle findOne(long id) {
		return jdbc.queryForObject("select id, message, title,time,username" + " from spittle" + " where id = ?",
				new SpittleRowMapper(), id);
	}

	public void save(PubSpittle spittle) {
		Calendar calendar = Calendar.getInstance();
		String time = (new SimpleDateFormat("yyyy-MM-dd HH:mm:ss")).format(calendar.getTime());
		jdbc.update("insert into spittle (id, message, title, time, username)" + " values (?, ?, ?, ?, ?)",
				GenerateUnID.next(), spittle.getMessage(), spittle.getTitle(), time, spittle.getUsername());
	}

	private static class SpittleRowMapper implements RowMapper<Spittle> {
		public Spittle mapRow(ResultSet rs, int rowNum) throws SQLException {
			return new Spittle(rs.getLong("id"), rs.getString("message"), rs.getString("title"), rs.getString("time"),
					rs.getString("username"));
		}
	}

}
