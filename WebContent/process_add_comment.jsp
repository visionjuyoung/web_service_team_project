<%@page import="dto.Comment"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="memberDAO" class="dao.MemberDAO" scope="application"/>
<jsp:useBean id="commentDAO" class="dao.CommentDAO" scope="application"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%!
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd a hh:mm");
%>

<%
	request.setCharacterEncoding("utf-8");
	int cheeringId = Integer.parseInt(request.getParameter("cheering_id"));
	
	String userId = (String) session.getAttribute("user_id");
	int writerId = memberDAO.getMemberIdByUserId(userId);
	
	Date date = new Date();
	String crtDate = sdf.format(date);
	
	String text = request.getParameter("comment");
	
	Comment comment = new Comment();
	comment.setCheeringId(cheeringId);
	comment.setWriterId(writerId);
	comment.setCrtDate(crtDate);
	comment.setText(text);
	
	commentDAO.insertComment(comment);
	response.sendRedirect("community.jsp");
%>

</body>
</html>

