package biz.board;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import biz.common.JDBCUtil;

public class BoardDAO {
	private Connection conn;
	private PreparedStatement stmt;
	private ResultSet rs;
	
	private static String BOARD_INSERT =
			"insert into board (seq, title, writer, content) values "+
			"((select nvl(max(seq), 0) + 1, from board), ?, ?, ?)";
	private static String BOARD_LIST =
			"select * from board";
	
	public void insertBoard(BoardVO vo) {
		try {
			conn = JDBCUtil.getConnetion();
			stmt = conn.prepareStatement(BOARD_INSERT);
			stmt.setNString(1, vo.getTitle());
			stmt.setNString(2, vo.getWriter());
			stmt.setNString(2, vo.getContent());
			stmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			JDBCUtil.close(stmt, conn);
		}
	}
	
	public List<BoardVO> getBoardList(BoardVO vo) {
		List<BoardVO> boardList = new ArrayList<BoardVO>();
		try {
			conn = JDBCUtil.getConnetion();
			stmt = conn.prepareStatement(BOARD_INSERT);
			rs = stmt.executeQuery();
			while(rs.next()) {
				BoardVO board = new BoardVO();
				board.setSeq(rs.getInt("SEQ"));
				board.setTitle(rs.getString("TITLE"));
				board.setWriter(rs.getString("WRITER"));
				board.setContent(rs.getString("CONTENT"));
				board.setRegDate(rs.getDate("REGDATE"));
				boardList.add(board);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			JDBCUtil.close(rs, stmt, conn);
		}
		return boardList;
	}	
}
