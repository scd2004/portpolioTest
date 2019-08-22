package com.way.free;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Component;

import com.way.free.user;

@Component
public class UserDao {
	private JdbcTemplate jdbcTemplate;
	
	@Autowired
	public void setDataSource(DataSource dataSource) {
		this.jdbcTemplate = new JdbcTemplate(dataSource);
	}
	
	//sign up
	public void create(user user) {
		String sql = "insert into user(id, role, nick, fixnic, password, name, mail, site, coin) values (?, ?, ?, ?, ?, ?, ?, ?, ?)";
		jdbcTemplate.update(sql, user.getId(),user.getRole(),user.getNick(),user.getFixnic(),user.getPassword(),user.getName(),user.getMail(),user.getStie(),user.getCoin());
	}
}