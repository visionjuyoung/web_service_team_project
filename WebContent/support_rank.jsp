<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="dto.Player, java.util.ArrayList"%>
<jsp:useBean id="playerDao" class="dao.PlayerDAO" scope="application" />

<%
<<<<<<< HEAD
	ArrayList<Player> players = playerDao.getAssistRankingPlayers();
=======
	ArrayList<Player> players = playerDao.getGoalsRankingPlayers();
>>>>>>> 5dd09a8a32786b743f0fed3935a3968efab78e6a
%>

<!DOCTYPE html>
<html lang="en">
<head>
  <title>축알못도 알수 있는 EPL통계 사이트</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <style>
  body{
  	background-color: #D9E5FF;
  }
    .navbar {
      margin-bottom: 10;
      border-radius: 10;
      background-color: #6699FF;
      text-color: white;
      height: 80px;
    }
	.navbar-brand>img{
		height: 100%;
		padding: 100px;
		width: auto
	}
	.navbar-brand{
		background: url(src/logo.png)center / contain no-repeat;
		width: 190px;
		margin-right: 10px;
		margin-top: 10px;
	}
	.jumbotron {
	 	margin-top:10px;
        background: url("https://wallpapercave.com/wp/wp3737390.jpg");
        background-size:cover;
        height: 900px;
        color:white;
         }
     ul li a { 
            text-decoration: none; 
            font-size: 19px;  
            color: white; 
            position: relative; 
            margin-top:10px;
  
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
	  .row.content {height: 250px}
   
    .sidenav {
      background-color: #f1f1f1;
      height: 100%;
    }
     .styled-table {
    border-collapse: collapse;
    margin: 25px 0;
    font-size: 1.5em;
    font-family: sans-serif;
    min-width: 1100px;
    box-shadow: 0 0 20px rgba(0, 0, 0, 0.15);
}
.styled-table thead tr {
    background-color: #009879;
    color: #ffffff;
    text-align: left;
}
.styled-table th,
.styled-table td {
    padding: 12px 15px;
}
.styled-table tbody tr {
 background-color: #ffffff;
    border-bottom: 1px solid #dddddd;
}

.styled-table tbody tr:nth-of-type(even) {
    background-color: #ffffff;
}

.styled-table tbody tr:last-of-type {
    border-bottom: 2px solid #009879;
}
.styled-table tbody tr.active-row {
    font-weight: bold;
    color: #009879;
}
    footer {
      background-color: #6699FF;
      padding: 25px;
    }
  </style>
  
</head>
<body>

<!-- header -->
<%@ include file="header.jsp" %>

<div class="container-fluid text-center">    
  <div class="row content">
    <div class="col-sm-1">
    </div>
    <div class="col-sm-10 text-left"> 
      <div id="myCarousel" class="carousel slide" data-ride="carousel">
  <ol class="carousel-indicators">
    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
    <li data-target="#myCarousel" data-slide-to="1"></li>
    <li data-target="#myCarousel" data-slide-to="2"></li>
  </ol>

  <div class="carousel-inner">
    <div class="item active">
      <img src="https://wallpapercave.com/wp/wp2086363.png" alt="image1">
    </div>

    <div class="item">
      <img src="https://wallpapercave.com/wp/wp3737390.jpg" alt="image2">
    </div>

    <div class="item">
      <img src="https://resources.premierleague.com/premierleague/photo/2020/09/11/3052bf5d-3e41-4ead-bdd9-16259804e3d9/PL_ATHEM_COVER_2020_1C_WEB_BANNER_HD_RGB.jpg" alt="image3">
    </div>
  </div>

  <a class="left carousel-control" href="#myCarousel" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="right carousel-control" href="#myCarousel" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right"></span>
    <span class="sr-only">Next</span>
  </a>
</div>
    </div>
    <div class="col-sm-1">
    </div>
  </div>
</div>

<div class="container-fluid text-center">    
  <div class="col content">
    <div class="col-sm-2 sidenav">
    </div>
  </div>
</div>
  
<div class="col-sm-12 text-center">
	<h1>도움순위</h1>
	<hr>
</div>
  
<div class="container-fluid text-center">    
  <div class="row content">
    <div class="col-sm-2 sidenav">
      <h4>랭킹</h4>
      <ul class="nav nav-pills nav-stacked">
        <li><a href="player_rank.jsp">득점 순위</a></li>
        <li class="active"><a href="support_rank.jsp">도움 순위</a></li>
        <li><a href="pay_rank.jsp">선수가치 순위</a></li>
      
    </div>
    <div class="col-sm-8 text-left"> 
      <table class="styled-table" style="margin-left:30px">
    <thead>
        <tr>
            <th>순위</th>
            <th>선수</th>
            <th>팀</th>
            <th>도움</th>
            <th>골</th>
            <th>공격pt</th>
            <th>경기수</th>
        </tr>
    </thead>
    <tbody>
        <%
    		int i = 1;
    		for (Player player : players) {
    	%>
    			<tr class="active-row">
		            <td><%=i %></td>
		            <td>
		            	<div class="text-left">
		            		<img class="badge-image badge-image--50 js-badge-image" src="images/players/<%=player.getImgName() %>" width="100px" height="100px"/>
		            		<%=player.getName() %>
		           		</div>
		            </td>
		            <td>
		            	<div class="text-left">
		            		<img class="badge-image badge-image--50 js-badge-image" src="images/<%=player.getTeamImg() %>" width="60px" height="60px"/>
		           		</div>
		            </td>
		            <%
		            	int assist = player.getAssist();
		            	int goals = player.getGoals();
		            %>
		            <td><%=assist %></td>
		            <td><%=goals %></td>
		            <td><%=assist + goals %></td>
		            <td><%=player.getAppearances() %></td>
		        </tr>
    	<%
    		i++;
    		}
    	%> 
    </tbody>
</table>
    </div>
    
  </div>
</div>




<!-- footer -->
<%@ include file="footer.jsp" %>

</body>
</html>
