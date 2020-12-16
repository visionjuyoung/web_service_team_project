<%@page import="dto.Comment"%>
<%@page import="dto.Cheering"%>
<%@page import="java.util.ArrayList"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:useBean id="cheeringDAO" class="dao.CheeringDAO" scope="application"/>
<jsp:useBean id="commentDAO" class="dao.CommentDAO" scope="application"/>

<!DOCTYPE html>
<html lang="en">
<head>
<title>축알못도 알수 있는 EPL통계 사이트</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
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
		url("https://www.teahub.io/photos/full/52-526081_english-premier-league-stadium.jpg");
	background-size: cover;
	height: 680px;
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
/* Set height of the grid so .sidenav can be 100% (adjust if needed) */
.row.content {
	height: 250px
}

/* Set gray background color and 100% height */
.sidenav {
	background-color: #f1f1f1;
	height: 100%;
}

/* Set black background color, white text and some padding */
footer {
	background-color: #555;
	color: white;
	padding: 15px;
}

/* On small screens, set height to 'auto' for sidenav and grid */
@media screen and (max-width: 767px) {
	.sidenav {
		height: auto;
		padding: 15px;
	}
	.row.content {
		height: auto;
	}
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
			<div class="col-sm-1"></div>
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
			<div class="col-sm-1"></div>
		</div>
	</div>

	<div class="col-sm-12 text-center">
		<h1>응원</h1>
		<hr>
	</div>

	<div class="container-fluid ">
		<div class="row content">
			<div class="col-sm-2 sidenav text-center">
				<h4>커뮤니티</h4>
				<ul class="nav nav-pills nav-stacked">
					<li><a href="news.jsp">뉴스</a></li>
					<li class="active"><a href="community.jsp">응원</a></li>
					<li><a href="my_squad.jsp">나만의 스쿼드</a></li>
				</ul>
				<br>
			</div>

			<div class="col-sm-10" style="background: #ffffff">
				<%-- 응원 글 불러오기 --%>
				<%
					ArrayList<Cheering> cheerings = cheeringDAO.getAllCheering();
					for (Cheering cheering : cheerings) {
				%>
						<h2><%=cheering.getTitle() %></h2>
						<img src="images/<%=cheering.getTeamImgName() %>" class="img-circle" height="30" width="30"><%=cheering.getWriterName() %>
				
						<h5>
							<span class="glyphicon glyphicon-time"></span><%=cheering.getCrtDate() %>
						</h5>
						<p><%=cheering.getText() %></p>
						<br>
						<details>
							<%
								ArrayList<Comment> comments = commentDAO.getCommentsByCheeringId(cheering.getId());
							%>
							<summary>
								댓글 <span class="badge"><%=comments.size() %></span>
							</summary>
							<div class="row">
								<% 
									for (Comment comment : comments) {
								%>
										<div class="col-sm-2 text-center">
											<img
												src="images/<%=comment.getTeamImgName() %>"
												class="img-circle" height="50" width="50" alt="Avatar">
										</div>
										<div class="col-sm-10">
											<h4>
												<%=comment.getWriterName() %><small>&nbsp;&nbsp;<%=comment.getCrtDate() %></small>
											</h4>
											<p><%=comment.getText() %></p>
											<br>
										</div>						
								<%
									}
								%>
							</div>
							<form role="form" action="process_add_comment.jsp">
								<div class="form-group">
									<textarea name="comment" class="form-control" rows="3" required></textarea>
								</div>
								<input type="hidden" name="cheering_id" value="<%=cheering.getId() %>" />
								<button type="submit" class="btn btn-success" <%if (userId == null) out.print(" disabled=\"disabled\""); %>>제출</button>
							</form>
						</details>
						<hr>
				<%
					}
				%>
				<div class="text-right">
					<button type="button" onclick="location.href='write.jsp' "
						style="width: 150px; background-color: #6699FF; border: none; color: #fff; padding: 15px 0; text-align: center; text-decoration: none; display: inline-block; font-size: 20px; margin: 4px; cursor: pointer; border-radius: 10px;">
						글쓰기</button>
				</div>
				<br> <br>
			</div>
		</div>
	</div>

	<br>


	<!-- footer -->
	<%@ include file="footer.jsp"%>

</body>
</html>
