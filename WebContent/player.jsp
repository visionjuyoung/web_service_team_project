<%@page import="dto.Player"%>
<%@page import="java.util.ArrayList"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:useBean id="playerDao" class="dao.PlayerDAO" scope="application" />
<!DOCTYPE html>
<html lang="en">
<head>
<title>축알못도 알수 있는 EPL통계 사이트</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<%
	ArrayList<Player> players;
	String teamNo = request.getParameter("team");
	if (teamNo != null) {
		players = playerDao.getPlayersByTeamId(teamNo);
	} else {
		 players = playerDao.getAllPlayers();	
	}
%>

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
	background:
		url(https://www.footballist.co.kr/news/photo/202004/123085_50194_2647.png);
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
</head>
<body>

	<!-- header -->
	<%@ include file="header.jsp"%>

	<div class="container-fluid text-center">
		<div class="row content">
			<div class="col-sm-1 sidenav"></div>
			<div class="col-sm-10 text-left">
				<div id="myCarousel" class="carousel slide" data-ride="carousel">
					<ol class="carousel-indicators">
						<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
						<li data-target="#myCarousel" data-slide-to="1"></li>
						<li data-target="#myCarousel" data-slide-to="2"></li>
					</ol>

					<div class="carousel-inner">
						<div class="item active">
							<img src="https://wallpapercave.com/wp/wp2086363.png"
								alt="image1">
						</div>

						<div class="item">
							<img src="https://wallpapercave.com/wp/wp3737390.jpg"
								alt="image2">
						</div>

						<div class="item">
							<img
								src="https://resources.premierleague.com/premierleague/photo/2020/09/11/3052bf5d-3e41-4ead-bdd9-16259804e3d9/PL_ATHEM_COVER_2020_1C_WEB_BANNER_HD_RGB.jpg"
								alt="image3">
						</div>
					</div>

					<!-- Left and right controls -->
					<a class="left carousel-control" href="#myCarousel"
						data-slide="prev"> <span
						class="glyphicon glyphicon-chevron-left"></span> <span
						class="sr-only">Previous</span>
					</a> <a class="right carousel-control" href="#myCarousel"
						data-slide="next"> <span
						class="glyphicon glyphicon-chevron-right"></span> <span
						class="sr-only">Next</span>
					</a>
				</div>
			</div>
			<div class="col-sm-1 sidenav"></div>
		</div>
	</div>

	<div class="container-fluid text-center">
		<div class="row content">
			<div class="col-sm-3" style="margin-top: 20px">
				<div>
					<h4>팀별 선수</h4>
					<br>
				</div>
				<div id="formContent">
					<br>
					<div>
						<div>
							<button type="button" class="btn btn-xs btn-link" onClick="location.href='player.jsp?team=1'">
								<img class="badge-image badge-image--50 js-badge-image"
									src="https://resources.premierleague.com/premierleague/badges/50/t3.png"
									srcset="https://resources.premierleague.com/premierleague/badges/50/t3@x2.png 2x" />
								<p>Arsenal
								<p>
							</button>

							<button type="button" class="btn btn-xs btn-link" onClick="location.href='player.jsp?team=2'"
								style="margin-right: 20px; margin-left: 20px">
								<img class="badge-image badge-image--50 js-badge-image"
									src="https://resources.premierleague.com/premierleague/badges/50/t7.png"
									srcset="https://resources.premierleague.com/premierleague/badges/50/t7@x2.png 2x" />
								<p>Aston villa
								<p>
							</button>

							<button type="button" class="btn btn-xs btn-link" onClick="location.href='player.jsp?team=3'">
								<img class="badge-image badge-image--50 js-badge-image"
									src="https://resources.premierleague.com/premierleague/badges/50/t36.png"
									srcset="https://resources.premierleague.com/premierleague/badges/50/t36@x2.png 2x" />
								<p>Brighton
								<p>
							</button>
						</div>

						<br>

						<div>
							<button type="button" class="btn btn-xs btn-link" onClick="location.href='player.jsp?team=4'">
								<img class="badge-image badge-image--50 js-badge-image"
									src="https://resources.premierleague.com/premierleague/badges/50/t90.png"
									srcset="https://resources.premierleague.com/premierleague/badges/50/t90@x2.png 2x" />
								<p>Burnley
								<p>
							</button>

							<button type="button" class="btn btn-xs btn-link" onClick="location.href='player.jsp?team=5'"
								style="margin-right: 20px; margin-left: 20px">
								<img class="badge-image badge-image--50 js-badge-image"
									src="https://resources.premierleague.com/premierleague/badges/50/t8.png"
									srcset="https://resources.premierleague.com/premierleague/badges/50/t8@x2.png 2x" />
								<p>chelsea
								<p>
							</button>
							<button type="button" class="btn btn-xs btn-link" onClick="location.href='player.jsp?team=6'">
								<img class="badge-image badge-image--50 js-badge-image"
									src="https://resources.premierleague.com/premierleague/badges/50/t31.png"
									srcset="https://resources.premierleague.com/premierleague/badges/50/t31@x2.png 2x" />
								<p>cp fc
								<p>
							</button>
						</div>

						<br>

						<div>
							<button type="button" class="btn btn-xs  btn-link" onClick="location.href='player.jsp?team=7'">
								<img class="badge-image badge-image--50 js-badge-image"
									src="https://resources.premierleague.com/premierleague/badges/50/t11.png"
									srcset="https://resources.premierleague.com/premierleague/badges/50/t11@x2.png 2x" />
								<p>Everton
								<p>
							</button>
							<button type="button" class="btn btn-xs btn-link" onClick="location.href='player.jsp?team=8'"
								style="margin-right: 20px; margin-left: 20px">
								<img class="badge-image badge-image--50 js-badge-image"
									src="https://resources.premierleague.com/premierleague/badges/50/t54.png"
									srcset="https://resources.premierleague.com/premierleague/badges/50/t54@x2.png 2x" />
								<p>Fulfam
								<p>
							</button>

							<button type="button" class="btn btn-xs  btn-link" onClick="location.href='player.jsp?team=9'">
								<img class="badge-image badge-image--50 js-badge-image"
									src="https://resources.premierleague.com/premierleague/badges/50/t2.png"
									srcset="https://resources.premierleague.com/premierleague/badges/50/t2@x2.png 2x" />
								<p>leeds
								<p>
							</button>
						</div>

						<br>

						<div>
							<button type="button" class="btn btn-xs  btn-link" onClick="location.href='player.jsp?team=10'">
								<img class="badge-image badge-image--50 js-badge-image"
									src="https://resources.premierleague.com/premierleague/badges/50/t13.png"
									srcset="https://resources.premierleague.com/premierleague/badges/50/t13@x2.png 2x" />
								<p>leicester
								<p>
							</button>

							<button type="button" class="btn btn-xs btn-link" onClick="location.href='player.jsp?team=11'"
								style="margin-right: 20px; margin-left: 20px">
								<img class="badge-image badge-image--50 js-badge-image"
									src="https://resources.premierleague.com/premierleague/badges/50/t14.png"
									srcset="https://resources.premierleague.com/premierleague/badges/50/t14@x2.png 2x" />
								<p>Liverpool
								<p>
							</button>
							<button type="button" class="btn btn-xs  btn-link" onClick="location.href='player.jsp?team=12'">
								<img class="badge-image badge-image--50 js-badge-image"
									src="https://resources.premierleague.com/premierleague/badges/50/t43.png"
									srcset="https://resources.premierleague.com/premierleague/badges/50/t43@x2.png 2x" />
								<p>Man.city
								<p>
							</button>
						</div>

						<br>

						<div>
							<button type="button" class="btn btn-xs  btn-link" onClick="location.href='player.jsp?team=13'">
								<img class="badge-image badge-image--50 js-badge-image"
									src="https://resources.premierleague.com/premierleague/badges/50/t1.png"
									srcset="https://resources.premierleague.com/premierleague/badges/50/t1@x2.png 2x" />
								<p>Man.utd
								<p>
							</button>
							<button type="button" class="btn btn-xs btn-link" onClick="location.href='player.jsp?team=14'"
								style="margin-right: 20px; margin-left: 20px">
								<img class="badge-image badge-image--50 js-badge-image"
									src="https://resources.premierleague.com/premierleague/badges/50/t4.png"
									srcset="https://resources.premierleague.com/premierleague/badges/50/t4@x2.png 2x" />
								<p>Nu fc
								<p>
							</button>

							<button type="button" class="btn btn-xs  btn-link" onClick="location.href='player.jsp?team=15'">
								<img class="badge-image badge-image--50 js-badge-image"
									src="https://resources.premierleague.com/premierleague/badges/50/t49.png"
									srcset="https://resources.premierleague.com/premierleague/badges/50/t49@x2.png 2x" />
								<p>Sheffield
								<p>
							</button>
						</div>

						<br>

						<div>
							<button type="button" class="btn btn-xs  btn-link" onClick="location.href='player.jsp?team=16'">
								<img class="badge-image badge-image--50 js-badge-image"
									src="https://resources.premierleague.com/premierleague/badges/50/t20.png"
									srcset="https://resources.premierleague.com/premierleague/badges/50/t20@x2.png 2x" />
								<p>sh fc
								<p>
							</button>

							<button type="button" class="btn btn-xs btn-link" onClick="location.href='player.jsp?team=17'"
								style="margin-right: 20px; margin-left: 20px">
								<img class="badge-image badge-image--50 js-badge-image"
									src="https://resources.premierleague.com/premierleague/badges/50/t6.png"
									srcset="https://resources.premierleague.com/premierleague/badges/50/t6@x2.png 2x" />
								<p>Tottenham
								<p>
							</button>
							<button type="button" class="btn btn-xs  btn-link" onClick="location.href='player.jsp?team=18'">
								<img class="badge-image badge-image--50 js-badge-image"
									src="https://resources.premierleague.com/premierleague/badges/50/t35.png"
									srcset="https://resources.premierleague.com/premierleague/badges/50/t35@x2.png 2x" />
								<p>Wba
								<p>
							</button>
						</div>

						<br>

						<div>
							<button type="button" class="btn btn-xs  btn-link" onClick="location.href='player.jsp?team=19'"
								style="margin-right: 20px">
								<img class="badge-image badge-image--50 js-badge-image"
									src="https://resources.premierleague.com/premierleague/badges/50/t21.png"
									srcset="https://resources.premierleague.com/premierleague/badges/50/t21@x2.png 2x" />
								<p>Westham
								<p>
							</button>
							<button type="button" class="btn btn-xs  btn-link" onClick="location.href='player.jsp?team=20'"
								style="margin-left: 20px">
								<img class="badge-image badge-image--50 js-badge-image"
									src="https://resources.premierleague.com/premierleague/badges/50/t39.png"
									srcset="https://resources.premierleague.com/premierleague/badges/50/t39@x2.png 2x" />
								<p>Wolves
								<p>
							</button>
						</div>
					</div>
				</div>

			</div>
			<div class="col-sm-9 text-center">
				<div id="formContent" style="margin-top: 80px;">
					<br>
					<h4>선수 명단</h4>
					<br>

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
										<td align="left"><a href=""><img
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

					<%-- 여기다가 선수 상세 페이지 추가 하면 됨 --%>
				</div>
			</div>
		</div>
	</div>

	<br>


	<!-- footer -->
	<%@ include file="footer.jsp"%>

</body>
</html>
