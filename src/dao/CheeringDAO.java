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
import dto.Member;
import dto.Player;

public class CheeringDAO implements Serializable {
	private static final long serialVersionUID = 1L;

	private Connection conn;

	public CheeringDAO() {

	}
	
	public ArrayList<Cheering> getAllCheering() {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection(DBInfo.getUrl(), DBInfo.getUser(), DBInfo.getPassword());

			ArrayList<Cheering> cheerings = new ArrayList<Cheering>();

			PreparedStatement pstmt = conn.prepareStatement("select c.id id, title, writer_id, "
					+ "m.nickname writer_name, crt_date, text, t.img_name img_name from cheering c, "
					+ "team t, member m where m.id=c.writer_id and m.team_no=t.id");
			ResultSet rs = pstmt.executeQuery();
			while (rs.next()) {
				Cheering cheering = new Cheering();
				cheering.setId(rs.getInt("id"));
				cheering.setTitle(rs.getString("title"));
				cheering.setWriterId(rs.getInt("writer_id"));
				cheering.setWriterName(rs.getString("writer_name"));
				cheering.setCrtDate(rs.getString("crt_date"));
				cheering.setText(rs.getString("text"));
				cheering.setTeamImgName(rs.getString("img_name"));
				
				cheerings.add(cheering);
			}
			
			if (rs != null) {
				rs.close();
			}
			if (pstmt != null) {
				pstmt.close();
			}

			return cheerings;

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
