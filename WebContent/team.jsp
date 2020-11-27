<%@page import="dto.Team"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:useBean id="teamDao" class="dao.TeamDAO" scope="session" />
<%
	String id = request.getParameter("team");
	Team team = teamDao.getTeamById(id);
%>
 
<!DOCTYPE html>
<html lang="en">
<head>
  <title>축알못도 알수 있는 EPL통계 사이트</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta name="Generator" content="EditPlus®">
  <meta name="Author" content="">
  <meta name="Keywords" content="">
  <meta name="Description" content="">
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
        background: url("https://i1.wp.com/media.premiumtimesng.com/wp-content/files/2020/09/Premier-League-clubs-min-scaled.jpg?fit=2560%2C1440&ssl=1");
        background-size:cover;
        height: 600px;
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
	.row.content {height: 450px}
    
    .sidenav {
    	margin-top: 70px;
      padding-top: 20px;
      background-color: #f1f1f1;
      height: 100%;
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
.styled-table th{
	padding: 12px 15px;
	width:450px;
	
}
.styled-table td {
    padding: 12px 15px;
    width:450px;
}
.styled-table tbody tr {
 background-color: #ffffff;
    border-bottom: 1px solid  #6699FF;
}

.styled-table tbody tr:nth-of-type(even) {
    background-color: #ffffff;
}

.styled-table tbody tr:last-of-type {
    border-bottom: 2px solid  #6699FF;
}
.styled-table tbody tr.active-row {
    font-weight: bold;
    color: black;
}
	 body {
  	font-family: Tahoma;
}
header {
  text-align: center;
}
 .row.content {height: 0px}
    
    .sidenav {
    	
      background-color: #f1f1f1;
      height: 100%;
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
  position: relative;
  padding: 0px;
  text-align: center;
  text-color: black;
  margin-left:30px;
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

<br>

<div class="text-center">
<h1>팀 정보</h1>
</div>

<hr>

  
<div class="container-fluid text-center">    
  <div class="row content">
    <div class="col-sm-3" style="margin-top:20px">
    <div>
    <h4>팀별 일정</h4>
    <br>
    </div>
    <div id="formContent" style=" max-width: 300px;  height:750px;">
    <br>
    <div>
    <div>
    <button type="button" class="btn btn-xs btn-link" onClick="location.href='team.jsp?team=1'">
          <img class="badge-image badge-image--50 js-badge-image" src="images/arsenal_50x50.png" srcset="images/arsenal_50x50@x2.png 2x"/>
  		  <p>Arsenal<p>
  </button>
  
  <button type="button" class="btn btn-xs btn-link" style="margin-right:20px; margin-left:20px">
         <a href="main.jsp"><img class="badge-image badge-image--50 js-badge-image" src="images/aston_villa_50x50.png" srcset="images/aston_villa_50x50@x2.png 2x" /></a>
  		<p>Aston villa<p>
  </button>
  
   <button type="button" class="btn btn-xs btn-link">
          <img class="badge-image badge-image--50 js-badge-image" src="images/brighton_and_hove_albion_50x50.png" srcset="images/brighton_and_hove_albion_50x50@x2.png 2x" />
  		<p>Brighton<p>
  </button>
  </div>
  
  <br>
  
  <div>
   <button type="button" class="btn btn-xs btn-link">
          <img class="badge-image badge-image--50 js-badge-image" src="images/burnley_50x50.png" srcset="images/burnley_50x50@x2.png 2x" />
  <p>Burnley<p>
  </button>
    
  <button type="button" class="btn btn-xs btn-link" style="margin-right:20px; margin-left:20px">
          <img class="badge-image badge-image--50 js-badge-image" src="images/chelsea_50x50.png" srcset="images/chelsea_50x50@x2.png 2x" />
  <p>chelsea<p>
  </button>
   <button type="button" class="btn btn-xs btn-link">
          <img class="badge-image badge-image--50 js-badge-image" src="images/crystal_palace_50x50.png" srcset="images/crystal_palace_50x50@x2.png 2x" />
 <p>cp fc<p>
  </button>
  </div>
  
  <br>
  
  <div>
   <button type="button" class="btn btn-xs  btn-link">
          <img class="badge-image badge-image--50 js-badge-image" src="images/everton_50x50.png" srcset="images/everton_50x50@x2.png 2x" />
   <p>Everton<p>
  </button>
   <button type="button" class="btn btn-xs btn-link" style="margin-right:20px; margin-left:20px">
          <img class="badge-image badge-image--50 js-badge-image" src="images/fulham_50x50.png" srcset="images/fulham_50x50@x2.png 2x" />
   <p>Fulfam<p>
  </button>
  
   <button type="button" class="btn btn-xs  btn-link">
          <img class="badge-image badge-image--50 js-badge-image" src="images/leeds_united_50x50.png" srcset="images/leeds_united_50x50@x2.png 2x" />
   <p>leeds<p>
  </button>
  </div>
  
  <br>
  
   <div>
  <button type="button" class="btn btn-xs  btn-link">
          <img class="badge-image badge-image--50 js-badge-image" src="images/leicester_city_50x50.png" srcset="images/leicester_city_50x50@x2.png 2x" />
  <p>leicester<p>
  </button>
 
   <button type="button" class="btn btn-xs btn-link" style="margin-right:20px; margin-left:20px">
          <img class="badge-image badge-image--50 js-badge-image" src="images/liverpool_50x50.png" srcset="images/liverpool_50x50@x2.png 2x" />
  <p>Liverpool<p>
  </button>
   <button type="button" class="btn btn-xs  btn-link">
          <img class="badge-image badge-image--50 js-badge-image" src="images/manchester_city_50x50.png" srcset="images/manchester_city_50x50@x2.png 2x" />
  <p>Man.city<p>
  </button>
   </div>
   
   <br>
  
   <div>
  <button type="button" class="btn btn-xs  btn-link">
          <img class="badge-image badge-image--50 js-badge-image"src="images/manchester_united_50x50.png" srcset="images/manchester_united_50x50@x2.png 2x" />
  <p>Man.utd<p>
  </button>
   <button type="button" class="btn btn-xs btn-link" style="margin-right:20px; margin-left:20px">
          <img class="badge-image badge-image--50 js-badge-image" src="images/newcastle_united_50x50.png" srcset="images/newcastle_united_50x50@x2.png 2x" />
  <p>Nu fc<p>
  </button>
  
   <button type="button" class="btn btn-xs  btn-link">
          <img class="badge-image badge-image--50 js-badge-image" src="images/sheffield_united.png" srcset="images/sheffield_united_50x50@x2.png 2x" />
    <p>Sheffield<p>
  </button>
   </div>
   
   <br>
  
   <div>
   <button type="button" class="btn btn-xs  btn-link">
          <img class="badge-image badge-image--50 js-badge-image" src="images/southampton_50x50.png" srcset="images/southampton_50x50@x2.png 2x" />
   <p>sh fc<p>
  </button>
  
  <button type="button" class="btn btn-xs btn-link" style="margin-right:20px; margin-left:20px">
          <img class="badge-image badge-image--50 js-badge-image" src="images/tottenham_hotspur_50x50.png" srcset="images/tottenham_hotspur_50x50@x2.png 2x" />
   <p>Tottenham<p>
  </button>
   <button type="button" class="btn btn-xs  btn-link">
          <img class="badge-image badge-image--50 js-badge-image" src="images/west_bromwich_albion_50x50.png" srcset="images/west_bromwich_albion_50x50@x2.png 2x" />
   <p>Wba<p>
  </button>
   </div>
   
   <br>
  
   <div>
   <button type="button" class="btn btn-xs  btn-link" style="margin-right:20px">
          <img class="badge-image badge-image--50 js-badge-image" src="images/westham_united_50x50.png" srcset="images/westham_united_50x50@x2.png 2x" />
  <p>Westham<p>
  </button>
   <button type="button" class="btn btn-xs  btn-link" style="margin-left:20px">
          <img class="badge-image badge-image--50 js-badge-image" src="images/wolverhampton_wanderers_50x50.png" srcset="images/wolverhampton_wanderers_50x50@x2.png 2x" />
  <p>Wolves<p>
  </button>
  </div>
   </div>
  </div>
  
    </div>
    <div class="col-sm-9 text-center"> 
      <div class="wrapper fadeInDown">
      <h3>팀 상세정보</h3>
  <div id="formContent" style=" max-width: 1000px;  height:2300px;">
	<br>
	<form>
    <div class="text-center" style="margin-left:30px; margin-right:30px; border-radius: 10px 10px 10px 10px; height:300px ; border: 4px solid #6699FF">
       <img src="https://w.namu.la/s/10181b0d6f7f0dbc81f05987cee09a8d08fd297cf1f7f517323bb2b7ade0795902c6cf2ac16739970a4b5f2e701702cffb1f3dd1eeb02b457a316b3129acf305be1f6edb05555db49e375f8d25558ca22bd3c8350476577ab75fee2047069c981aa5d44d1289c643e5f5faa94dab107b" style="height:80%; margin-top:30px"></img>
    	
    	
     <table class="styled-table" style="margin-top:50px; min-width:900px;">
    <thead>
        <tr>
            <th style=" text-align:center">아스날 FC</th>
        </tr>
    </thead>
    
    	
	</table>
	
	 <table class="styled-table" style="min-width:900px;">
    
        <tr class="active-row">
            <td style="background-color:#D9E5FF">정식명칭</td>
            <th style=" text-align:center"><%=team.getFormName() %></th>
        </tr>
        
        <tr class="active-row">
            <td style="background-color:#D9E5FF">별명</td>
            <th style=" text-align:center"><%=team.getNickname() %></th>
        </tr>
        
        <tr class="active-row">
            <td style="background-color:#D9E5FF">창단</td>
            <th style=" text-align:center"><%=team.getFounDay() %></th>
        </tr>
        
        <tr class="active-row">
            <td style="background-color:#D9E5FF">연고지</td>
            <th style=" text-align:center"><%=team.getTown() %></th>
        </tr>
        
        <tr class="active-row">
            <td style="background-color:#D9E5FF">구장</td>
            <th style=" text-align:center"><%=team.getStadium() %></th>
        </tr>
   
   		<tr class="active-row">
            <td style="background-color:#D9E5FF">라이벌</td>
            <th style=" text-align:center"><%=team.getRival() %></th>
        </tr>
        
        <tr class="active-row">
            <td style="background-color:#D9E5FF">구단주</td>
            <th style=" text-align:center"><%=team.getOwner() %></th>
        </tr>
        
        <tr class="active-row">
            <td style="background-color:#D9E5FF">감독</td>
            <th style=" text-align:center"><%=team.getCoach() %></th>
        </tr>
        
        <tr class="active-row">
            <td style="background-color:#D9E5FF">주장</td>
            <th style=" text-align:center"><%=team.getLeader()%></th>
        </tr>
        
        <tr class="active-row">
            <td style="background-color:#D9E5FF">공식 웹사이트</td>
            <th style=" text-align:center">
            <a class="underlineHover" href=<%=team.getSiteUrl() %>>공식사이트 이동</a>
            </th>
        </tr>
        
        <tr class="active-row">
            <td style="background-color:#D9E5FF">리그 우승 횟수</td>
            <th style=" text-align:center"><%=team.getChampionCount() %>회</th>
        </tr>	
	</table>
	
	
	<table class="styled-table" style="min-width:900px;">
    <thead>
        <tr>
            <th style=" text-align:center">명단</th>
        </tr>
    </thead>
	</table>
	
	<table class="styled-table" style="min-width:900px;">
	<tr class="active-row">
    	<th style=" text-align:center">
    	<img src="https://www.arsenal.com/sites/default/files/styles/player_featured_image_1045x658/public/images/Leno_1045x658_0.jpg?itok=wG2m32hE" style="height:150px; width:auto; margin-top:10px"></img>
    	</th>
    	<th style=" text-align:center">
    	<img src="https://www.arsenal.com/sites/default/files/styles/player_featured_image_1045x658/public/images/Bellerin_1045x658_1.jpg?itok=95vIilIJ" style="height:150px; width:auto; margin-top:10px"></img>
    	</th>
    	<th style=" text-align:center">
    	<img src="https://www.arsenal.com/sites/default/files/styles/player_featured_image_1045x658/public/images/Tierney_1045x658_0.jpg?itok=mjvpH5MI" style="height:150px; width:auto; margin-top:10px"></img>
    	</th>
    </tr>
    	
    	<tr class="active-row" style="border-bottom: 1px solid  #ffffff;">
            <th style=" text-align:center">GK</th>
            <th style=" text-align:center">DF</th>
            <th style=" text-align:center">DF</th>
        
        </tr>
    	<tr class="active-row">
            <th style=" text-align:center">베른트 레노</th>
            <th style=" text-align:center">엑토르 베예린</th>
            <th style=" text-align:center">키어런 티어니</th>
        </tr>	
        
        
        <tr class="active-row">
    	<th style=" text-align:center">
    	<img src="https://www.arsenal.com/sites/default/files/styles/player_featured_image_1045x658/public/images/Saka_1045x658_0.jpg?itok=Tx1tc5do" style="height:150px; width:auto; margin-top:10px"></img>
    	</th>
    	<th style=" text-align:center">
    	<img src="https://www.arsenal.com/sites/default/files/styles/player_featured_image_1045x658/public/images/Lacazette_1045x658_1.jpg?itok=rpE-7T4U" style="height:150px; width:auto; margin-top:10px"></img>
    	</th>
    	<th style=" text-align:center">
    	<img src="https://www.arsenal.com/sites/default/files/styles/player_featured_image_1045x658/public/images/Ozil_1045x658_1.jpg?itok=SsX1Db3y" style="height:150px; width:auto; margin-top:10px"></img>
    	</th>
    </tr>
    	
    	<tr class="active-row" style="border-bottom: 1px solid  #ffffff;">
            <th style=" text-align:center">FW</th>
            <th style=" text-align:center">FW</th>
            <th style=" text-align:center">MF</th>
           
        </tr>
    	<tr class="active-row">
            <th style=" text-align:center">부카요 사카</th>
            <th style=" text-align:center">알렉상드로 라카제트</th>
            <th style=" text-align:center">메수트 외질</th>
  
        </tr>	
        
        
        <tr class="active-row">
    	<th style=" text-align:center">
    	<img src="https://www.arsenal.com/sites/default/files/styles/player_featured_image_1045x658/public/images/Partey_1045x658.jpg?itok=iH5rRkLH" style="height:150px; width:auto; margin-top:10px"></img>
    	</th>
    	<th style=" text-align:center">
    	<img src="https://www.arsenal.com/sites/default/files/styles/player_featured_image_1045x658/public/images/Pepe_1045x658.jpg?itok=t71xsJoY" style="height:150px; width:auto; margin-top:10px"></img>
    	</th>
    	<th style=" text-align:center">
    	<img src="https://www.arsenal.com/sites/default/files/styles/player_featured_image_1045x658/public/images/Mustafi_1045x658_1.jpg?itok=P2EadO1b" style="height:150px; width:auto; margin-top:10px"></img>
    	</th>
    </tr>
    	
    	<tr class="active-row" style="border-bottom: 1px solid  #ffffff;">
            <th style=" text-align:center">MF</th>
            <th style=" text-align:center">FW</th>
            <th style=" text-align:center">DF</th>
          
        </tr>
    	<tr class="active-row">
            <th style=" text-align:center">토마스 파티</th>
            <th style=" text-align:center">니콜라 페페</th>
            <th style=" text-align:center">슈코드란 무스타피</th>
          
        </tr>	
        
        <tr class="active-row">
    	<th style=" text-align:center">
    	<img src="https://www.arsenal.com/sites/default/files/styles/player_featured_image_1045x658/public/images/Gabriel_1045x658%5B2%5D_0.jpg?itok=fNg6wu1H" style="height:150px; width:auto; margin-top:10px"></img>
    	</th>
    	<th style=" text-align:center">
    	<img src="https://www.arsenal.com/sites/default/files/styles/player_featured_image_1045x658/public/images/Willian_Website_profiles_1045x658.jpg?itok=Tga-wd_1" style="height:150px; width:auto; margin-top:10px"></img>
    	</th>
    	<th style=" text-align:center">
    	<img src="https://www.arsenal.com/sites/default/files/styles/player_featured_image_1045x658/public/images/Aubameyang_1045x658_0.jpg?itok=FhDWuQfN" style="height:150px; width:auto; margin-top:10px"></img>
    	</th>
    
    </tr>
    	
    	<tr class="active-row" style="border-bottom: 1px solid  #ffffff;">
            <th style=" text-align:center">DF</th>
            <th style=" text-align:center">FW</th>
            <th style=" text-align:center">FW</th>

        </tr>
    	<tr class="active-row">
            <th style=" text-align:center">가브리엘</th>
            <th style=" text-align:center">윌리안</th>
            <th style=" text-align:center">피에르에메릭 오바메양</th>

        </tr>	
	</table>
	
	
    </div>
   
    </form>
  </div>
  <br>
</div>
    </div>
  </div>
</div>


       


<!-- footer -->
<%@ include file="footer.jsp" %>

</body>
</html>
