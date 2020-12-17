<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="dto.Player"%>
<%@page import="dao.PlayerDAO"%>
<%@page import="java.util.Enumeration"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
    
<jsp:useBean id="playerDao" class="dao.PlayerDAO" scope="application" />


<%
	request.setCharacterEncoding("utf-8");
	

	String filename = "";
	String realFolder = "/usr/share/tomcat/webapps/ROOT/images/players";
	int maxSize = 5 * 1024 * 1024;  // 5MB
	String encType = "utf-8";
	
	MultipartRequest multi = new MultipartRequest(request, realFolder, maxSize, encType,
			new DefaultFileRenamePolicy());
	
	
	String playerName = multi.getParameter("playerName");
	String backNumber = multi.getParameter("backNumber");
	String country = multi.getParameter("country");
	int teamNo = Integer.parseInt(multi.getParameter("team"));
	int posNo = Integer.parseInt(multi.getParameter("position"));
	int age = Integer.parseInt(multi.getParameter("age"));
	
	
	Enumeration files = multi.getFileNames();
	String fname = (String) files.nextElement();
	String fileName = multi.getFilesystemName(fname);
	
	Player player = new Player();
	player.setName(playerName);
	player.setImgName(fileName);
	player.setTeamNo(teamNo);
	player.setBackNumber(backNumber);
	player.setCountry(country);
	player.setPosNo(posNo);
	player.setAge(age);
	
	
	playerDao.addPlayer(player);
	
%>
<script>
	alert("등록되었습니다");
	location.href="management.jsp";
</script>