<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="memberDAO" class="dao.MemberDAO" scope="application"/>

<%
	boolean check = true;
	String userId = request.getParameter("userId");
	String userNickname = request.getParameter("nickname");
	String passwd = request.getParameter("password");
	int teamNo = Integer.parseInt(request.getParameter("teamNo"));
	
	ArrayList<String> ids = memberDAO.getAllUserIds();
	for (String id : ids) {
		if (userId.equals(id)) {
			check = false;
%>
			<script>
				alert("중복된 아이디입니다");
				window.history.back();
				
			</script>			
<%
			break;
		}
	}
	
	if (check) {
		ArrayList<String> nicknames = memberDAO.getAllUserNicknames();
		for (String nickname : nicknames) {
			if (userNickname.equals(nickname)) {
				check = false;
	%>
				<script>
					alert("중복된 닉네임입니다");
					window.history.back();
				</script>			
	<%
				break;
			}
		}
	if (check) {
			
	%>
			<jsp:forward page="process_registration.jsp">
				<jsp:param name="userId" value="<%=userId %>" />
				<jsp:param name="nickname" value="<%=userNickname %>" />
				<jsp:param name="password" value="<%=passwd %>" />
				<jsp:param name="teamNo" value="<%=teamNo %>" />	
			</jsp:forward>
	<%
		}
	}
%>