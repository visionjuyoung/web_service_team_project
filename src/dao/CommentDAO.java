package dao;

import java.io.Serializable;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import Info.DBInfo;
import dto.Cheering;
import dto.Comment;
import dto.Member;
import dto.Player;

public class CommentDAO implements Serializable {
	private static final long serialVersionUID = 1L;

	private Connection conn;

	public CommentDAO() {

	}
	
	public void insertComment(Comment comment) {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection(DBInfo.getUrl(), DBInfo.getUser(), DBInfo.getPassword());

			PreparedStatement pstmt = conn.prepareStatement("insert into comment(cheering_id, writer_id, crt_date, text) values(?, ?, ?, ?)");
			pstmt.setInt(1, comment.getCheeringId());
			pstmt.setInt(2, comment.getWriterId());
			pstmt.setString(3, comment.getCrtDate());
			pstmt.setString(4, comment.getText());
			pstmt.execute();
				
			if (pstmt != null) {
				pstmt.close();
			}

		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			if (conn != null) {
				try {
					conn.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
		}
	}
	
	public ArrayList<Comment> getCommentsByCheeringId(int id) {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection(DBInfo.getUrl(), DBInfo.getUser(), DBInfo.getPassword());

			ArrayList<Comment> comments = new ArrayList<>();

			PreparedStatement pstmt = conn.prepareStatement("select cm.id id, cm.cheering_id, cm.writer_id, "
					+ "cm.crt_date, cm.text, m.nickname writer_name, t.img_name from comment cm, team t, member m, "
					+ "cheering ch where cm.cheering_id = ch.id and m.id = cm.writer_id and m.team_no = t.id "
					+ "and cm.cheering_id=? order by cm.id");
			pstmt.setInt(1, id);
			ResultSet rs = pstmt.executeQuery();
			while (rs.next()) {
				Comment comment = new Comment();
				comment.setId(rs.getInt("id"));
				comment.setCheeringId(rs.getInt("cheering_id"));
				comment.setWriterId(rs.getInt("writer_id"));
				comment.setCrtDate(rs.getString("crt_date"));
				comment.setText(rs.getString("text"));
				comment.setWriterName(rs.getString("writer_name"));
				comment.setTeamImgName(rs.getString("img_name"));
				comments.add(comment);
			}
			
			if (rs != null) {
				rs.close();
			}
			if (pstmt != null) {
				pstmt.close();
			}

			return comments;

		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			if (conn != null) {
				try {
					conn.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
		}
		return null;
	}
}
