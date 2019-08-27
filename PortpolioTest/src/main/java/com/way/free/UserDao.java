package com.way.free;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.support.JdbcUtils;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;

import com.way.free.user;

@Repository("userDAO")
@Component
public class UserDao {
	private JdbcTemplate jdbcTemplate;
	private Connection conn = null;
	private PreparedStatement stmt = null;
	private ResultSet rs = null;
	
	private final String USER_GET = "select * from user where id=? and password=?";
	
	public user getUser(user vo) {
		user user = null;
		try {
			conn = JDBCUtil.getConnection();
			stmt = conn.prepareStatement(USER_GET);
			stmt.setString(1, vo.getId());
			stmt.setString(2, vo.getPassword());
			rs = stmt.executeQuery();
			if(rs.next()) {
				user = new user();
				user.setId(rs.getString("id"));
				user.setPassword(rs.getString("password"));
				user.setName(rs.getString("name"));
				user.setRole(rs.getString("role"));
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		} finally {
			JDBCUtil.close(rs, stmt, conn);
		}
		return user;
	}
	
	
	@Autowired
	public void setDataSource(DataSource dataSource) {
		this.jdbcTemplate = new JdbcTemplate(dataSource);
	}
	
	//sign up
	public void create(user user) {
		String sql = "insert into user(id, role, nick, fixnic, password, name, mail, site, coin) values (?, ?, ?, ?, ?, ?, ?, ?, ?)";
		jdbcTemplate.update(sql, user.getId(),user.getRole(),user.getNick(),user.getFixnic(),user.getPassword(),user.getName(),user.getMail()+"@"+user.getMail01(),user.getStie(),user.getCoin());
	}
	
	//id check
	public user checkid(String id) {
		String sql = "select * from user where id = ?";
		user users = jdbcTemplate.queryForObject(sql, new Object [] {id}, new UserMapper());
		return users;
	}
	
	//회원조회 메소드
	public List<user> select() {
		String sql = "select * from user";
		List<user> users =  jdbcTemplate.query(sql, new UserMapper());
		return users;
	}
	
	//단건 조회 메소드
	public user select(String id) {
		String sql = "select * from user where id = ?";
		user users =  jdbcTemplate.queryForObject(sql, new Object [] {id},new UserMapper());
		return users;
	}
	
	//회원닉네임 수정 메소드
	public void updateNick(user user) {
		String sql = "update user set nick=? where id = ?";
		jdbcTemplate.update(sql, user.getNick(),user.getId());
	}
	
	//회원이메일 수정 메소드
		public void updateEmail(user user) {
			String sql = "update user set mail=?, mail01 where id = ?";
			jdbcTemplate.update(sql, user.getMail(),user.getMail01(),user.getId());
		}
	
	
	
}