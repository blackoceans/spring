package biz.user;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import biz.common.JDBCUtil;

public class UserDAO {
	private Connection conn;
	private PreparedStatement stmt;
	private ResultSet rs;
	
	private static String USER_INSERT =
			"insert into users (id, password, name, role) "+ //띄어쓰기 해야함 붙이면 오류 )여기"
					"values (?,?,?,?)"; //뭐가 들어올지 몰라서 ?임 여기에 넣으면 각각에 들어감
	private static String USER_GET =
			"select * from users where id=? and password=?";
					
	
	public void insertUser(UserVO vo) {
		try {
			conn = JDBCUtil.getConnetion();
			stmt = conn.prepareStatement(USER_INSERT);
			stmt.setString(1, vo.getId());
			stmt.setString(2, vo.getPassword());
			stmt.setString(3, vo.getName());
			stmt.setString(4, vo.getRole());
			stmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			JDBCUtil.close(stmt, conn);
		}
	}
	public UserVO getUser(UserVO vo) {
		UserVO user = null; //초기화
		try {
			conn = JDBCUtil.getConnetion();
			stmt = conn.prepareStatement(USER_GET);
			stmt.setNString(1, vo.getId());
			stmt.setNString(2, vo.getPassword());
			rs=stmt.executeQuery();
			if(rs.next()) {
				user = new UserVO();
				user.setId(rs.getString("ID"));
				user.setPassword(rs.getString("PASSWORD"));
				user.setName(rs.getString("NAME"));
				user.setRole(rs.getString("ROLE"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			JDBCUtil.close(rs, stmt, conn);
		}
		return user;
	}
}
