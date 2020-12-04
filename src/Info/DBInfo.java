package Info;

public class DBInfo {
	private static String url = "jdbc:mysql://dblionsight.cxfxrm0j8yz3.ap-northeast-2.rds.amazonaws.com:3306/lionsight?serverTimezone=UTC";
	private static String user = "admin";
	private static String password = "admin123";
	
	public static String getUrl() {
		return url;
	}
	
	public static String getUser() {
		return user;
	}
	
	public static String getPassword() {
		return password;
	}
}
