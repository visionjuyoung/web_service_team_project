package dao;

import java.io.Serializable;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import dto.Team;

public class TeamDAO implements Serializable {
	private String url = "jdbc:mysql://dblionsight.cxfxrm0j8yz3.ap-northeast-2.rds.amazonaws.com:3306/lionsight?serverTimezone=UTC";
	private String user = "admin";
	private String password = "admin123";
	private Connection conn;
	
	private String sql = "select * from team where id=?";
	
	public TeamDAO() {
		
	}
	
	public Team getTeamById(String id) {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection(url, user, password);
			
			Team team = new Team();
			
			try {
				PreparedStatement pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, id);
				ResultSet rs = pstmt.executeQuery();
				
				while (rs.next()) {
					team.setName(rs.getString("name"));
					team.setSrc(rs.getString("src"));
					team.setFormName(rs.getString("form_name"));
					team.setNickname(rs.getString("nickname"));
					team.setFounDay(rs.getString("foun_day"));
					team.setTown(rs.getString("town"));
					team.setStadium(rs.getString("stadium"));
					team.setRival(rs.getString("rival"));
					team.setOwner(rs.getString("owner"));
					team.setCoach(rs.getString("coach"));
					team.setLeader(rs.getString("leader"));
					team.setSiteUrl(rs.getString("site_url"));
					team.setChampionCount(rs.getInt("champion_cnt"));
					team.setGameCount(rs.getInt("game_cnt"));
					team.setWinCount(rs.getInt("win_cnt"));
					team.setDrawCount(rs.getInt("draw_cnt"));
					team.setDefeatCount(rs.getInt("defeat_cnt"));
					team.setVictoryCount(rs.getInt("vic_point"));
					
				}
				
				if (rs != null) {
					rs.close();
				}
				if (pstmt != null) {
					pstmt.close();
				}
				
				return team;
				
			} catch (SQLException e) {
				e.printStackTrace();
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
		return null;	
	}
}
