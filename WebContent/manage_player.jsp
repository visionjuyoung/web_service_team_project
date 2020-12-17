<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@page import="dto.Player"%>
<%@page import="java.util.ArrayList"%>
<jsp:useBean id="playerDao" class="dao.PlayerDAO" scope="application" />
<!DOCTYPE html>
<html>
<head>
  <link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<style>
body {
	background-color: #D9E5FF;
}

.navbar {
	margin-bottom: 10;
	border-radius: 10;
	background-color: #6699FF;
	text-color: white;
	height: 80px;
}

.navbar-brand>img {
	height: 100%;
	padding: 100px;
	width: auto
}

.navbar-brand {
	background: url(src/logo.png) center/contain no-repeat;
	width: 190px;
	margin-right: 10px;
	margin-top: 10px;
}

.jumbotron {
	margin-top: 10px;
	background: url(images/banner.png);
	background-size: cover;
	height: 400px;
	color: white;
}

ul li a {
	text-decoration: none;
	font-size: 19px;
	color: white;
	position: relative;
	margin-top: 10px;
}

ul li a::before {
	content: "";
	width: 0px;
	height: 10px;
	background: black;
	position: absolute;
	top: 100%;
	left: 0;
	transition: .5s;
}

ul li a:hover::before {
	width: 50%;
	transform: translateX(100%);
}

.scrollable-menu {
	height: auto;
	max-height: 300px;
	overflow-x: hidden;
}

.wrapper {
	display: flex;
	align-items: center;
	flex-direction: column;
	justify-content: center;
	width: 100%;
	min-height: 100%;
	padding: 20px;
}

#formContent {
	-webkit-border-radius: 10px 10px 10px 10px;
	border-radius: 10px 10px 10px 10px;
	background: #fff;
	padding: 30px;
	width: 90%;
	max-width: 1000px;
	position: relative;
	padding: 0px;
	text-align: center;
	text-color: black;
}

.styled-table {
	border-collapse: collapse;
	font-size: 1.5em;
	font-family: sans-serif;
	min-width: 600px;
	box-shadow: 0 0 20px rgba(0, 0, 0, 0.15);
}

.styled-table thead tr {
	background-color: #6699FF;
	color: #ffffff;
}

.styled-table th {
	padding: 12px 15px;
	width: 200px;
}

.styled-table td {
	padding: 12px 15px;
	width: 100px;
}

.styled-table tbody tr {
	background-color: #ffffff;
	border-bottom: 1px solid #6699FF;
}

.styled-table tbody tr:nth-of-type(even) {
	background-color: #ffffff;
}

.styled-table tbody tr:last-of-type {
	border-bottom: 2px solid #6699FF;
}

.styled-table tbody tr.active-row {
	font-weight: bold;
	color: black;
}

footer {
	background-color: #6699FF;
	padding: 25px;
}
</style>
<title>선수 정보 수정</title>
</head>

<%
	ArrayList<Player> players;
	String teamNo = request.getParameter("team");
	if (teamNo != null) {
		players = playerDao.getPlayersByTeamId(teamNo);
	} else {
		 players = playerDao.getAllPlayers();	
	}
%>

<body>
	<jsp:include page="header.jsp"/>
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">선수 정보 수정</h1>
		</div>
	</div>
	<div class="container">
		<table class="styled-table"
						style="min-width: 900px; margin-left: 50px;">
						<thead>
							<tr>
								<th style="width: 50%">선수</th>
								<th>포지션</th>
								<th>국적</th>
							</tr>
						</thead>
						<tbody>
							<%
								for(Player player : players) {
							%>
									<tr>
										<td align="left"><a href="update_player.jsp?playerId=<%=player.getId()%>"><img
											style="width: 60px; height: 60px; margin-left: 10px; margin-right: 10px;"
											src="images/players/<%=player.getImgName() %>"><%=player.getName() %></a></td>
										<td align="left"><%=player.getPosition() %></td>
										<td align="left"><%=player.getCountry() %></td>
									</tr>
									
							<%
								}
							%>
						</tbody>
					</table>
	</div>
		
	<jsp:include page="footer.jsp"/>
</body>
</html>