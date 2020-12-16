<%@page import="dto.Cheering"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="memberDAO" class="dao.MemberDAO" scope="application"/>
<jsp:useBean id="cheeringDAO" class="dao.CheeringDAO" scope="application"/>

<%!
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd a hh:mm");
%>

<%
	request.setCharacterEncoding("utf-8");

	String title = request.getParameter("title");
	
	String userId = (String) session.getAttribute("user_id");
	int writerId = memberDAO.getMemberIdByUserId(userId);

	Date date = new Date();
	String crtDate = sdf.format(date);
	
	String text = request.getParameter("content");
	
	Cheering cheering = new Cheering();
	cheering.setTitle(title);
	cheering.setWriterId(writerId);
	cheering.setCrtDate(crtDate);
	cheering.setText(text);
	
	cheeringDAO.insertCheering(cheering);
	
	response.sendRedirect("community.jsp");
%>