package myspittr.config;

import javax.sql.DataSource;

import org.apache.tomcat.dbcp.dbcp2.BasicDataSource;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.jdbc.core.JdbcOperations;
import org.springframework.jdbc.core.JdbcTemplate;

@Configuration
public class DataConfig {

	@Bean
	public DataSource dataSource() {
		BasicDataSource dSource = new BasicDataSource();
		dSource.setDriverClassName("com.mysql.jdbc.Driver");
		dSource.setUrl("jdbc:mysql://localhost:3306/spittr");
		dSource.setUsername("root");
		dSource.setPassword("123456");
		return dSource;
	}

	@Bean
	public JdbcOperations jdbcTemplate(DataSource dataSource) {
		return new JdbcTemplate(dataSource);

	}
}
