package dao;

import java.io.Serializable;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import Info.DBInfo;
import dto.Player;
import dto.Team;

public class TeamDAO implements Serializable {
	private static final long serialVersionUID = 1L;

	private Connection conn;

	public TeamDAO() {

	}

	public ArrayList<Team> getTeamRanking() {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection(DBInfo.getUrl(), DBInfo.getUser(), DBInfo.getPassword());
			
			ArrayList<Team> teams = new ArrayList<>();

			PreparedStatement pstmt = conn.prepareStatement("select * from team order by vic_point desc");
			ResultSet rs = pstmt.executeQuery();

			while (rs.next()) {
				Team team = new Team();
				team.setName(rs.getString("name"));
				team.setImgName(rs.getString("img_name"));
				team.setSvgName(rs.getString("svg_name"));
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
				teams.add(team);
			}

			if (rs != null) {
				rs.close();
			}
			if (pstmt != null) {
				pstmt.close();
			}

			return teams;

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
	
	public Team getTeamById(String id) {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection(DBInfo.getUrl(), DBInfo.getUser(), DBInfo.getPassword());

			Team team = new Team();

			PreparedStatement pstmt = conn.prepareStatement("select * from team where id=?");
			pstmt.setString(1, id);
			ResultSet rs = pstmt.executeQuery();

			while (rs.next()) {
				team.setName(rs.getString("name"));
				team.setImgName(rs.getString("img_name"));
				team.setSvgName(rs.getString("svg_name"));
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
