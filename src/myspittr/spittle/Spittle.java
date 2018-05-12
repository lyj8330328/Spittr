package myspittr.spittle;

import org.apache.commons.lang3.builder.EqualsBuilder;
import org.apache.commons.lang3.builder.HashCodeBuilder;

public class Spittle {
	private Long id;
	private String message;
	private String title;
	private String time;
	private String username;

	public Spittle() {
	}

	public Spittle(Long id, String message, String title, String time, String username) {
		this.id = id;
		this.message = message;
		this.time = time;
		this.title = title;
		this.username = username;
	}

	public String getUsername() {
		return username;
	}

	public long getId() {
		return id;
	}

	public String getMessage() {
		return message;
	}

	public String getTime() {
		return time;
	}

	public String getTitle() {
		return title;
	}

	@Override
	public boolean equals(Object that) {
		return EqualsBuilder.reflectionEquals(this, that, "id", "time");
	}

	@Override
	public int hashCode() {
		return HashCodeBuilder.reflectionHashCode(this, "id", "time");
	}
}
