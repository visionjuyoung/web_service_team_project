package dao;

import java.io.Serializable;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import Info.DBInfo;
import dto.Member;
import dto.Player;

public class MemberDAO implements Serializable {
	private static final long serialVersionUID = 1L;

	private Connection conn;

	public MemberDAO() {

	}
	
	public int getMemberIdByUserId(String userId) {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection(DBInfo.getUrl(), DBInfo.getUser(), DBInfo.getPassword());

			

			PreparedStatement pstmt = conn.prepareStatement("select id from member where user_id=?");
			pstmt.setString(1, userId);
			ResultSet rs = pstmt.executeQuery();
			rs.next();
			
			int id = rs.getInt("id");

			if (rs != null) {
				rs.close();
			}
			if (pstmt != null) {
				pstmt.close();
			}

			return id;

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
		return 0;
	}
	
	public Member getUserByUserId(String userId) {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection(DBInfo.getUrl(), DBInfo.getUser(), DBInfo.getPassword());

			

			PreparedStatement pstmt = conn.prepareStatement("select * from member where user_id=?");
			pstmt.setString(1, userId);
			ResultSet rs = pstmt.executeQuery();
			rs.next();
			Member member = new Member();
			member.setId(rs.getInt("id"));
			member.setUserId(rs.getString("user_id"));
			member.setNickname(rs.getString("nickname"));
			member.setPasswd(rs.getString("passwd"));
			member.setTeamNo(rs.getInt("team_no"));

			if (rs != null) {
				rs.close();
			}
			if (pstmt != null) {
				pstmt.close();
			}

			return member;

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
	
	public ArrayList<String> getAllUserNicknames() {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection(DBInfo.getUrl(), DBInfo.getUser(), DBInfo.getPassword());

			ArrayList<String> nicknames = new ArrayList<>();

			PreparedStatement pstmt = conn.prepareStatement("select nickname from member");
			ResultSet rs = pstmt.executeQuery();
			while (rs.next()) {
				nicknames.add(rs.getString("nickname"));
			}

			if (rs != null) {
				rs.close();
			}
			if (pstmt != null) {
				pstmt.close();
			}

			return nicknames;

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
	
	public ArrayList<String> getAllUserIds() {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection(DBInfo.getUrl(), DBInfo.getUser(), DBInfo.getPassword());

			ArrayList<String> ids = new ArrayList<>();

			PreparedStatement pstmt = conn.prepareStatement("select user_id from member");
			ResultSet rs = pstmt.executeQuery();
			while (rs.next()) {
				ids.add(rs.getString("user_id"));
			}

			if (rs != null) {
				rs.close();
			}
			if (pstmt != null) {
				pstmt.close();
			}

			return ids;

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
	
	public boolean addMember(Member member) {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection(DBInfo.getUrl(), DBInfo.getUser(), DBInfo.getPassword());

			PreparedStatement pstmt = conn.prepareStatement("insert into member(user_id, nickname, passwd, team_no) values(?, ?, ?, ?)");
			pstmt.setString(1, member.getUserId());
			pstmt.setString(2, member.getNickname());
			pstmt.setString(3, member.getPasswd());
			pstmt.setInt(4, member.getTeamNo());
			
			boolean result = pstmt.execute();

			if (pstmt != null) {
				pstmt.close();
			}
			
			return result;
			
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
		return false;	
	}
	
	public ArrayList<Player> getAssistRankingPlayers() {
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection(DBInfo.getUrl(), DBInfo.getUser(), DBInfo.getPassword());

			ArrayList<Player> players = new ArrayList<>();

			PreparedStatement pstmt = conn.prepareStatement("select p.id, p.name, t.img_name team_image, "
					+ "p.img_name, p.goals, p.shots, p.shots_in_target, p.aprc, p.assist from player p, team t "
					+ "where t.id=p.team_no order by assist desc limit 20");
			ResultSet rs = pstmt.executeQuery();
			while (rs.next()) {
				Player player = new Player();
				player.setId(rs.getInt("id"));
				player.setName(rs.getString("name"));	
				player.setImgName(rs.getString("img_name"));
				player.setGoals(rs.getInt("goals"));
				player.setShots(rs.getInt("shots"));
				player.setShotsInTarget(rs.getInt("shots_in_target"));
				player.setAppearances(rs.getInt("aprc"));
				player.setAssist(rs.getInt("assist"));
				player.setTeamImg(rs.getString("team_image"));
				players.add(player);
			}

			if (rs != null) {
				rs.close();
			}
			if (pstmt != null) {
				pstmt.close();
			}

			return players;

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
