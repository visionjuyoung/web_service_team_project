<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <script type="text/javascript" src="./js/script.js"></script>
<title>관리자 페이지</title>
</head>

<%
	String userId = (String) session.getAttribute("user_id");
	if (userId == null) {
		session.setAttribute("user_id", "king");
		session.setAttribute("user_pw", "1111");	
	}
%>

<body>
	<jsp:include page="header.jsp"/>
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">관리자 페이지</h1>
		</div>
	</div>
	<div class="container">
		<div class="col-md-4">
			<a href="add_player.jsp"><button type="button" class="btn btn-default btn-lg">선수 등록</button></a>
		</div>
		<div class="col-md-4">
			<a href="manage_player.jsp"><button type="button" class="btn btn-default btn-lg">선수 관리</button></a>
		</div>
	</div>
	<jsp:include page="footer.jsp"/>
</body>
</html>