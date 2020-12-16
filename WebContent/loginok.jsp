<%@page import="dto.Member"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:useBean id="memberDAO" class="dao.MemberDAO" scope="application"/>
<!DOCTYPE html>
<html>
<head>
<title></title>
</head>
<body>
<%
String userId = request.getParameter("login");
String userPw = request.getParameter("password");

Member member = memberDAO.getUserByUserId(userId);

if (member != null) {
	if (member.getPasswd().equals(userPw)) {
		// 로그인 작업 -> 세션값 생성
		session.setAttribute("user_id", userId);
		session.setAttribute("user_pw", userPw);
		%>
		<script>alert("인증되었습니다.");
		location.href = "index.jsp"
		</script>
		<%
	} else {
		%>
		<script>alert("비밀번호가 다릅니다.");
		location.href = "login.jsp"
		</script>
		<%
	}
} else {
	%>
	<script>alert("아이디가 다릅니다.");
	location.href = "login.jsp"
	</script>
	<%
}
%>
</body>
</html>

		
			

