<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="playerDAO" class="dao.PlayerDAO" scope="application"/>

<%
	int id = Integer.parseInt(request.getParameter("playerId"));
	playerDAO.deletePlayerById(id);
%>
<script>
	alert("삭제되었습니다");
	location.href="manage_player.jsp";
</script>