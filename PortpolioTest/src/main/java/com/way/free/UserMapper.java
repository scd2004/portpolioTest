package com.way.free;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.way.free.user;

public class UserMapper implements RowMapper<user> {
	boolean fixnick;
	@Override
	public user mapRow(ResultSet rs, int rowNum) throws SQLException {
		user user = new user();
		user.setId(rs.getString("id"));
		user.setRole(rs.getString("role"));
		user.setNick(rs.getString("nick"));
		if (rs.getInt("fixnic") == 0) {
			fixnick = false;
		} else {
			fixnick = true;
		}
		user.setFixnic(fixnick);
		user.setPassword(rs.getString("password"));
		user.setName(rs.getString("name"));
		user.setMail01(rs.getString("mail01"));
		user.setMail02(rs.getString("mail02"));
		user.setMail(rs.getString("mail01")+"@"+rs.getString("mail02"));
		user.setStie(rs.getString("site"));
		user.setCoin(rs.getInt("coin"));
		return user;
	}

}
