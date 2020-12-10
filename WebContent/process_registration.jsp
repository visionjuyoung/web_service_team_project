<%@page import="dto.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="memberDAO" class="dao.MemberDAO" scope="application" />

<%
	String userId = request.getParameter("userId");
	String nickname = request.getParameter("nickname");
	String passwd = request.getParameter("password");
	int teamNo = Integer.parseInt(request.getParameter("teamNo"));
	
	Member member = new Member();
	member.setUserId(userId);
	member.setNickname(nickname);
	member.setPasswd(passwd);
	member.setTeamNo(teamNo);
	
	memberDAO.addMember(member);
	response.sendRedirect("login.jsp");
%>