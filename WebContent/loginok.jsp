<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title></title>
</head>
<body>
<%
String id = request.getParameter("login");
String pw = request.getParameter("password");

// 기존 DB의 사용자 ID, PW
String dbId = "poiuy", dbPw = "0987";

if (dbId.equals(id)) {
	if (dbPw.equals(pw)) {
		// 로그인 작업 -> 세션값 생성
		session.setAttribute("id", id);
		session.setAttribute("pw", pw);
		%>
		<script>alert("인증되었습니다.");
		location.href = "main.jsp"
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

		
			

