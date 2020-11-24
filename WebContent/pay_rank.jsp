<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
		background: url(https://upload.wikimedia.org/wikipedia/ko/7/73/%ED%94%84%EB%A6%AC%EB%AF%B8%EC%96%B4%EB%A6%AC%EA%B7%B8_%EB%A1%9C%EA%B3%A0.png)center / contain no-repeat;
		width: 100px;
		margin-right: 10px;
		margin-top: 10px;
	}
	.jumbotron {
	 	margin-top:10px;
        background: url("https://blog.kakaocdn.net/dn/bP0r1v/btqAsmuR9Kw/fP4wfTS6VGQAiVk2VrojBK/img.jpg");
        background-size:cover;
        height: 700px;
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
    font-size: 0.9em;
    font-family: sans-serif;
    min-width: 480px;
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

<nav class="navbar navbar-expand-lg">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      <a class="navbar-brand" href="#"></a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        <li><a href="main.jsp"> 홈</a></li>
        <li class="dropdown">
        <a class="dropdown-toggle" data-toggle="dropdown" href="#">팀
        <span class="caret"></span></a>
        <ul class="dropdown-menu scrollable-menu">
           <li>
                    <a target="_blank" href="        http://www.arsenal.com?utm_source=premier-league-website&utm_campaign=website&utm_medium=link" role="menuitem">
                        <div class="badge badge--large badge-image-container" data-widget="club-badge-image" data-size="50">
                            <img class="badge-image badge-image--50 js-badge-image" src="https://resources.premierleague.com/premierleague/badges/50/t3.png" srcset="https://resources.premierleague.com/premierleague/badges/50/t3@x2.png 2x" />
                            <span class="visuallyHidden">아스널 FC</span>
                        </div>
                    </a>
                </li>
                <li>
                    <a target="_blank" href="        https://www.avfc.co.uk/?utm_source=premier-league-website&utm_campaign=website&utm_medium=link" role="menuitem">
                        <div class="badge badge--large badge-image-container" data-widget="club-badge-image" data-size="50">
                            <img class="badge-image badge-image--50 js-badge-image" src="https://resources.premierleague.com/premierleague/badges/50/t7.png" srcset="https://resources.premierleague.com/premierleague/badges/50/t7@x2.png 2x" />
                            <span class="visuallyHidden">아스톤 빌라 FC</span>
                        </div>
                    </a>
                </li>
                <li>
                    <a target="_blank" href="        https://www.brightonandhovealbion.com?utm_source=premier-league-website&utm_campaign=website&utm_medium=link" role="menuitem">
                        <div class="badge badge--large badge-image-container" data-widget="club-badge-image" data-size="50">
                            <img class="badge-image badge-image--50 js-badge-image" src="https://resources.premierleague.com/premierleague/badges/50/t36.png" srcset="https://resources.premierleague.com/premierleague/badges/50/t36@x2.png 2x" />
                            <span class="visuallyHidden">브라이튼 앤 호브 알비온 FC</span>
                        </div>
                    </a>
                </li>
                <li>
                    <a target="_blank" href="        http://www.burnleyfootballclub.com/?utm_source=premier-league-website&utm_campaign=website&utm_medium=link" role="menuitem">
                        <div class="badge badge--large badge-image-container" data-widget="club-badge-image" data-size="50">
                            <img class="badge-image badge-image--50 js-badge-image" src="https://resources.premierleague.com/premierleague/badges/50/t90.png" srcset="https://resources.premierleague.com/premierleague/badges/50/t90@x2.png 2x" />
                            <span class="visuallyHidden">번리 FC</span>
                        </div>
                    </a>
                </li>
                <li>
                    <a target="_blank" href="        https://www.chelseafc.com/?utm_source=premier-league-website&utm_campaign=website&utm_medium=link" role="menuitem">
                        <div class="badge badge--large badge-image-container" data-widget="club-badge-image" data-size="50">
                            <img class="badge-image badge-image--50 js-badge-image" src="https://resources.premierleague.com/premierleague/badges/50/t8.png" srcset="https://resources.premierleague.com/premierleague/badges/50/t8@x2.png 2x" />
                            <span class="visuallyHidden">첼시 FC</span>
                        </div>
                    </a>
                </li>
                <li>
                    <a target="_blank" href="        http://www.cpfc.co.uk/?utm_source=premier-league-website&utm_campaign=website&utm_medium=link" role="menuitem">
                        <div class="badge badge--large badge-image-container" data-widget="club-badge-image" data-size="50">
                            <img class="badge-image badge-image--50 js-badge-image" src="https://resources.premierleague.com/premierleague/badges/50/t31.png" srcset="https://resources.premierleague.com/premierleague/badges/50/t31@x2.png 2x" />
                            <span class="visuallyHidden">크리스탈 팰리스 FC</span>
                        </div>
                    </a>
                </li>
                <li>
                    <a target="_blank" href="        http://www.evertonfc.com/?utm_source=premier-league-website&utm_campaign=website&utm_medium=link" role="menuitem">
                        <div class="badge badge--large badge-image-container" data-widget="club-badge-image" data-size="50">
                            <img class="badge-image badge-image--50 js-badge-image" src="https://resources.premierleague.com/premierleague/badges/50/t11.png" srcset="https://resources.premierleague.com/premierleague/badges/50/t11@x2.png 2x" />
                            <span class="visuallyHidden">에버튼 FC</span>
                        </div>
                    </a>
                </li>
                <li>
                    <a target="_blank" href="        http://www.fulhamfc.com?utm_source=premier-league-website&utm_campaign=website&utm_medium=link" role="menuitem">
                        <div class="badge badge--large badge-image-container" data-widget="club-badge-image" data-size="50">
                            <img class="badge-image badge-image--50 js-badge-image" src="https://resources.premierleague.com/premierleague/badges/50/t54.png" srcset="https://resources.premierleague.com/premierleague/badges/50/t54@x2.png 2x" />
                            <span class="visuallyHidden">풀럼 FC</span>
                        </div>
                    </a>
                </li>
                <li>
                    <a target="_blank" href="        http://www.leedsunited.com?utm_source=premier-league-website&utm_campaign=website&utm_medium=link" role="menuitem">
                        <div class="badge badge--large badge-image-container" data-widget="club-badge-image" data-size="50">
                            <img class="badge-image badge-image--50 js-badge-image" src="https://resources.premierleague.com/premierleague/badges/50/t2.png" srcset="https://resources.premierleague.com/premierleague/badges/50/t2@x2.png 2x" />
                            <span class="visuallyHidden">리즈 유나이티드 FC</span>
                        </div>
                    </a>
                </li>
                <li>
                    <a target="_blank" href="        http://www.lcfc.com/?utm_source=premier-league-website&utm_campaign=website&utm_medium=link" role="menuitem">
                        <div class="badge badge--large badge-image-container" data-widget="club-badge-image" data-size="50">
                            <img class="badge-image badge-image--50 js-badge-image" src="https://resources.premierleague.com/premierleague/badges/50/t13.png" srcset="https://resources.premierleague.com/premierleague/badges/50/t13@x2.png 2x" />
                            <span class="visuallyHidden">레스터 시티 FC</span>
                        </div>
                    </a>
                </li>
                <li>
                    <a target="_blank" href="        http://www.liverpoolfc.com/?utm_source=premier-league-website&utm_campaign=website&utm_medium=link" role="menuitem">
                        <div class="badge badge--large badge-image-container" data-widget="club-badge-image" data-size="50">
                            <img class="badge-image badge-image--50 js-badge-image" src="https://resources.premierleague.com/premierleague/badges/50/t14.png" srcset="https://resources.premierleague.com/premierleague/badges/50/t14@x2.png 2x" />
                            <span class="visuallyHidden">리버풀 FC</span>
                        </div>
                    </a>
                </li>
                <li>
                    <a target="_blank" href="        https://www.mancity.com?utm_source=premier-league-website&utm_campaign=website&utm_medium=link" role="menuitem">
                        <div class="badge badge--large badge-image-container" data-widget="club-badge-image" data-size="50">
                            <img class="badge-image badge-image--50 js-badge-image" src="https://resources.premierleague.com/premierleague/badges/50/t43.png" srcset="https://resources.premierleague.com/premierleague/badges/50/t43@x2.png 2x" />
                            <span class="visuallyHidden">맨체스터 시티 FC</span>
                        </div>
                    </a>
                </li>
                <li>
                    <a target="_blank" href="        http://www.manutd.com/?utm_source=premier-league-website&utm_campaign=website&utm_medium=link" role="menuitem">
                        <div class="badge badge--large badge-image-container" data-widget="club-badge-image" data-size="50">
                            <img class="badge-image badge-image--50 js-badge-image" src="https://resources.premierleague.com/premierleague/badges/50/t1.png" srcset="https://resources.premierleague.com/premierleague/badges/50/t1@x2.png 2x" />
                            <span class="visuallyHidden">맨체스터 유나이티드 FC</span>
                        </div>
                    </a>
                </li>
                <li>
                    <a target="_blank" href="        https://www.nufc.co.uk/?utm_source=premier-league-website&utm_campaign=website&utm_medium=link" role="menuitem">
                        <div class="badge badge--large badge-image-container" data-widget="club-badge-image" data-size="50">
                            <img class="badge-image badge-image--50 js-badge-image" src="https://resources.premierleague.com/premierleague/badges/50/t4.png" srcset="https://resources.premierleague.com/premierleague/badges/50/t4@x2.png 2x" />
                            <span class="visuallyHidden">뉴캐슬 유나이티드 FC</span>
                        </div>
                    </a>
                </li>
                <li>
                    <a target="_blank" href="        https://www.sufc.co.uk/?utm_source=premier-league-website&utm_campaign=website&utm_medium=link" role="menuitem">
                        
                        <div class="badge badge--large badge-image-container" data-widget="club-badge-image" data-size="50">
                            <img class="badge-image badge-image--50 js-badge-image" src="https://resources.premierleague.com/premierleague/badges/50/t49.png" srcset="https://resources.premierleague.com/premierleague/badges/50/t49@x2.png 2x" />
                            <span class="visuallyHidden">셰필드 유나이티드 FC</span>
                        </div>
                    </a>
                </li>
                <li>
                    <a target="_blank" href="        https://www.southamptonfc.com/?utm_source=premier-league-website&utm_campaign=website&utm_medium=link" role="menuitem">
                        <div class="badge badge--large badge-image-container" data-widget="club-badge-image" data-size="50">
                            <img class="badge-image badge-image--50 js-badge-image" src="https://resources.premierleague.com/premierleague/badges/50/t20.png" srcset="https://resources.premierleague.com/premierleague/badges/50/t20@x2.png 2x" />
                            <span class="visuallyHidden">사우샘프턴 FC</span>
                        </div>
                    </a>
                </li>
                <li>
                    <a target="_blank" href="        http://www.tottenhamhotspur.com/?utm_source=premier-league-website&utm_campaign=website&utm_medium=link" role="menuitem">
                        <div class="badge badge--large badge-image-container" data-widget="club-badge-image" data-size="50">
                            <img class="badge-image badge-image--50 js-badge-image" src="https://resources.premierleague.com/premierleague/badges/50/t6.png" srcset="https://resources.premierleague.com/premierleague/badges/50/t6@x2.png 2x" />
                            <span class="visuallyHidden">토트넘 홋스퍼 FC</span>
                        </div>
                    </a>
                </li>
                <li>
                    <a target="_blank" href="        http://www.wba.co.uk?utm_source=premier-league-website&utm_campaign=website&utm_medium=link" role="menuitem">
                    <div class="badge badge--large badge-image-container" data-widget="club-badge-image" data-size="50">
                            <img class="badge-image badge-image--50 js-badge-image" src="https://resources.premierleague.com/premierleague/badges/50/t35.png" srcset="https://resources.premierleague.com/premierleague/badges/50/t35@x2.png 2x" />
                            <span class="visuallyHidden">웨스트 브로미치 앨비언</span>
                        </div>
                    </a>
                </li>
                <li>
                    <a target="_blank" href="        http://www.whufc.com/?utm_source=premier-league-website&utm_campaign=website&utm_medium=link" role="menuitem">
                        <div class="badge badge--large badge-image-container" data-widget="club-badge-image" data-size="50">
                            <img class="badge-image badge-image--50 js-badge-image" src="https://resources.premierleague.com/premierleague/badges/50/t21.png" srcset="https://resources.premierleague.com/premierleague/badges/50/t21@x2.png 2x" />
                            <span class="visuallyHidden">웨스트햄 유나이티드 FC</span>
                        </div>
                    </a>
                </li>
                <li>
                    <a target="_blank" href="        https://www.wolves.co.uk/?utm_source=premier-league-website&utm_campaign=website&utm_medium=link" role="menuitem">
                        <div class="badge badge--large badge-image-container" data-widget="club-badge-image" data-size="50">
                            <img class="badge-image badge-image--50 js-badge-image" src="https://resources.premierleague.com/premierleague/badges/50/t39.png" srcset="https://resources.premierleague.com/premierleague/badges/50/t39@x2.png 2x" />
                            <span class="visuallyHidden">울버햄튼 원더러스 FC</span>
                        </div>
                    </a>
                </li>
        </ul>
      </li>
        <li><a href="player.jsp">선수</a></li>
        <li><a href="calendar.jsp">일정</a></li>
        <li class="dropdown">
        <a class="dropdown-toggle" data-toggle="dropdown" href="#">랭킹
        <span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="player_rank.jsp">득점 순위</a></li>
          <li><a href="support_rank.jsp">도움 순위</a></li>
          <li><a href="pay_rank.jsp">선수가치 순위</a></li>
        </ul>
      </li>
      <li class="dropdown">
        <a class="dropdown-toggle" data-toggle="dropdown" href="#">커뮤니티
        <span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="news.jsp">뉴스</a></li>
          <li><a href="community.jsp">응원</a></li>
          <li><a href="my_squad.jsp">나만의 스쿼드</a></li>
        </ul>
      </li>
      </ul>
      <ul class="nav navbar-nav navbar-right">
        <li><a href="login.jsp"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
      </ul>
    </div>
  </div>
</nav>

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
	<h1>선수가치 순위</h1>
	<hr>
</div>
  
<div class="container-fluid text-center">    
  <div class="row content">
    <div class="col-sm-2 sidenav">
      <h4>랭킹</h4>
      <ul class="nav nav-pills nav-stacked">
        <li><a href="player_rank.jsp">득점 순위</a></li>
        <li><a href="support_rank.jsp">도움 순위</a></li>
        <li class="active"><a href="pay_rank.jsp">선수가치 순위</a></li>
      
    </div>
    <div class="col-sm-8 text-left"> 
     <table class="styled-table" style="margin-left:30px">
    <thead>
        <tr>
            <th>순위</th>
            <th>선수</th>
            <th>팀</th>
            <th>국가</th>
            <th>포지션</th>
            <th>나이</th>
            <th>시장가치</th>
        </tr>
    </thead>
    <tbody>
        <tr class="active-row">
            <td>1</td>
            <td>
            <div class="text-left">
            <img class="badge-image badge-image--50 js-badge-image" src="https://w.namu.la/s/66f8070ad9282e5b63aa0c3087f34b22540c79c9512d800a1e01eb54e0dd4c49d3aeeb5b0b6121b131b60553a98f9ec9daae008e1c92f3a5e2a2edbf114442ada420cd8d39b304c143f0a84f4fe9e267821ff9eaa61857747a51a84bfd06d31c" srcset="https://resources.premierleague.com/premierleague/badges/50/t6@x2.png 2x" width="100px" height="100px"/>
            칼버트 르윈
           </div>
            </td>
            <th>
            <div class="text-left">
            <img class="badge-image badge-image--50 js-badge-image" src="https://resources.premierleague.com/premierleague/badges/50/t6.png" srcset="https://resources.premierleague.com/premierleague/badges/50/t6@x2.png 2x" width="60px" height="60px"/>
            토트넘
           </div>
            </th>
            <th>
            <img class="badge-image badge-image--50 js-badge-image" src="https://resources.premierleague.com/premierleague/badges/50/t6.png" srcset="https://upload.wikimedia.org/wikipedia/commons/thumb/0/09/Flag_of_South_Korea.svg/1200px-Flag_of_South_Korea.svg.png" width="78px" height="52px"/>
            </th>
            <th>2</th>
            <th>1</th>
            <th>£200,000<br>
            <p>₩1000억</p>
            </th>
            
        </tr>
        
        <tr class="active-row">
            <td>2</td>
            <td>
            <div class="text-left">
            <img class="badge-image badge-image--50 js-badge-image" src="https://resources.premierleague.com/premierleague/badges/50/t6.png" srcset="https://resources.premierleague.com/premierleague/badges/50/t6@x2.png 2x" width="25px" height="25px"/>토트넘
           </div>
           </td>
            <th>10</th>
            <th>5</th>
            <th>2</th>
            <th>1</th>
            <th>20</th>
        </tr>
        
        <tr class="active-row">
            <td>3</td>
            <td>
            <div class="text-left">
            <img class="badge-image badge-image--50 js-badge-image" src="https://resources.premierleague.com/premierleague/badges/50/t6.png" srcset="https://resources.premierleague.com/premierleague/badges/50/t6@x2.png 2x" width="25px" height="25px"/>토트넘
           </div>
           </td>
            <th>10</th>
            <th>5</th>
            <th>2</th>
            <th>1</th>
            <th>20</th>
        </tr>
        
        <tr class="active-row">
            <td>4</td>
            <td>
            <div class="text-left">
            <img class="badge-image badge-image--50 js-badge-image" src="https://resources.premierleague.com/premierleague/badges/50/t6.png" srcset="https://resources.premierleague.com/premierleague/badges/50/t6@x2.png 2x" width="25px" height="25px"/>토트넘
           </div>
           </td>
            <th>10</th>
            <th>5</th>
            <th>2</th>
            <th>1</th>
            <th>20</th>
        </tr>
        
        <tr class="active-row">
            <td>5</td>
            <td>
            <div class="text-left">
            <img class="badge-image badge-image--50 js-badge-image" src="https://resources.premierleague.com/premierleague/badges/50/t6.png" srcset="https://resources.premierleague.com/premierleague/badges/50/t6@x2.png 2x" width="25px" height="25px"/>토트넘
           </div>
           </td>
            <th>10</th>
            <th>5</th>
            <th>2</th>
            <th>1</th>
            <th>20</th>
        </tr>
        
        <tr class="active-row">
            <td>6</td>
            <td>
            <div class="text-left">
            <img class="badge-image badge-image--50 js-badge-image" src="https://resources.premierleague.com/premierleague/badges/50/t6.png" srcset="https://resources.premierleague.com/premierleague/badges/50/t6@x2.png 2x" width="25px" height="25px"/>토트넘
           </div>
           </td>
            <th>10</th>
            <th>5</th>
            <th>2</th>
            <th>1</th>
            <th>20</th>
        </tr>
        
        <tr class="active-row">
            <td>7</td>
            <td>
            <div class="text-left">
            <img class="badge-image badge-image--50 js-badge-image" src="https://resources.premierleague.com/premierleague/badges/50/t6.png" srcset="https://resources.premierleague.com/premierleague/badges/50/t6@x2.png 2x" width="25px" height="25px"/>토트넘
           </div>
           </td>
            <th>10</th>
            <th>5</th>
            <th>2</th>
            <th>1</th>
            <th>20</th>
        </tr>
        
        <tr class="active-row">
            <td>8</td>
            <td>
            <div class="text-left">
            <img class="badge-image badge-image--50 js-badge-image" src="https://resources.premierleague.com/premierleague/badges/50/t6.png" srcset="https://resources.premierleague.com/premierleague/badges/50/t6@x2.png 2x" width="25px" height="25px"/>토트넘
           </div>
           </td>
            <th>10</th>
            <th>5</th>
            <th>2</th>
            <th>1</th>
            <th>20</th>
        </tr>
        
        <tr class="active-row">
            <td>9</td>
            <td>
            <div class="text-left">
            <img class="badge-image badge-image--50 js-badge-image" src="https://resources.premierleague.com/premierleague/badges/50/t6.png" srcset="https://resources.premierleague.com/premierleague/badges/50/t6@x2.png 2x" width="25px" height="25px"/>토트넘
           </div>
           </td>
            <th>10</th>
            <th>5</th>
            <th>2</th>
            <th>1</th>
            <th>20</th>
        </tr>
        
        <tr class="active-row">
            <td>10</td>
            <td>
            <div class="text-left">
            <img class="badge-image badge-image--50 js-badge-image" src="https://resources.premierleague.com/premierleague/badges/50/t6.png" srcset="https://resources.premierleague.com/premierleague/badges/50/t6@x2.png 2x" width="25px" height="25px"/>토트넘
           </div>
           </td>
            <th>10</th>
            <th>5</th>
            <th>2</th>
            <th>1</th>
            <th>20</th>
        </tr>
        
        <tr class="active-row">
            <td>11</td>
            <td>
            <div class="text-left">
            <img class="badge-image badge-image--50 js-badge-image" src="https://resources.premierleague.com/premierleague/badges/50/t6.png" srcset="https://resources.premierleague.com/premierleague/badges/50/t6@x2.png 2x" width="25px" height="25px"/>토트넘
           </div>
           </td>
            <th>10</th>
            <th>5</th>
            <th>2</th>
            <th>1</th>
            <th>20</th>
        </tr>
        
        <tr class="active-row">
            <td>12</td>
            <td>
            <div class="text-left">
            <img class="badge-image badge-image--50 js-badge-image" src="https://resources.premierleague.com/premierleague/badges/50/t6.png" srcset="https://resources.premierleague.com/premierleague/badges/50/t6@x2.png 2x" width="25px" height="25px"/>토트넘
           </div>
           </td>
            <th>10</th>
            <th>5</th>
            <th>2</th>
            <th>1</th>
            <th>20</th>
        </tr>
        
        <tr class="active-row">
            <td>13</td>
            <td>
            <div class="text-left">
            <img class="badge-image badge-image--50 js-badge-image" src="https://resources.premierleague.com/premierleague/badges/50/t6.png" srcset="https://resources.premierleague.com/premierleague/badges/50/t6@x2.png 2x" width="25px" height="25px"/>토트넘
           </div>
           </td>
            <th>10</th>
            <th>5</th>
            <th>2</th>
            <th>1</th>
            <th>20</th>
        </tr>
        
        <tr class="active-row">
            <td>14</td>
            <td>
            <div class="text-left">
            <img class="badge-image badge-image--50 js-badge-image" src="https://resources.premierleague.com/premierleague/badges/50/t6.png" srcset="https://resources.premierleague.com/premierleague/badges/50/t6@x2.png 2x" width="25px" height="25px"/>토트넘
           </div>
           </td>
            <th>10</th>
            <th>5</th>
            <th>2</th>
            <th>1</th>
            <th>20</th>
        </tr>
        
        <tr class="active-row">
            <td>15</td>
            <td>
            <div class="text-left">
            <img class="badge-image badge-image--50 js-badge-image" src="https://resources.premierleague.com/premierleague/badges/50/t6.png" srcset="https://resources.premierleague.com/premierleague/badges/50/t6@x2.png 2x" width="25px" height="25px"/>토트넘
           </div>
           </td>
            <th>10</th>
            <th>5</th>
            <th>2</th>
            <th>1</th>
            <th>20</th>
        </tr>
        
        <tr class="active-row">
            <td>16</td>
            <td>
            <div class="text-left">
            <img class="badge-image badge-image--50 js-badge-image" src="https://resources.premierleague.com/premierleague/badges/50/t6.png" srcset="https://resources.premierleague.com/premierleague/badges/50/t6@x2.png 2x" width="25px" height="25px"/>토트넘
           </div>
           </td>
            <th>10</th>
            <th>5</th>
            <th>2</th>
            <th>1</th>
            <th>20</th>
        </tr>
        
        <tr class="active-row">
            <td>17</td>
            <td>
            <div class="text-left">
            <img class="badge-image badge-image--50 js-badge-image" src="https://resources.premierleague.com/premierleague/badges/50/t6.png" srcset="https://resources.premierleague.com/premierleague/badges/50/t6@x2.png 2x" width="25px" height="25px"/>토트넘
           </div>
           </td>
            <th>10</th>
            <th>5</th>
            <th>2</th>
            <th>1</th>
            <th>20</th>
        </tr>
        
        <tr class="active-row">
            <td>18</td>
            <td>
            <div class="text-left">
            <img class="badge-image badge-image--50 js-badge-image" src="https://resources.premierleague.com/premierleague/badges/50/t6.png" srcset="https://resources.premierleague.com/premierleague/badges/50/t6@x2.png 2x" width="25px" height="25px"/>토트넘
           </div>
           </td>
            <th>10</th>
            <th>5</th>
            <th>2</th>
            <th>1</th>
            <th>20</th>
        </tr>
        
        <tr class="active-row">
            <td>19</td>
            <td>
            <div class="text-left">
            <img class="badge-image badge-image--50 js-badge-image" src="https://resources.premierleague.com/premierleague/badges/50/t6.png" srcset="https://resources.premierleague.com/premierleague/badges/50/t6@x2.png 2x" width="25px" height="25px"/>토트넘
           </div>
           </td>
            <th>10</th>
            <th>5</th>
            <th>2</th>
            <th>1</th>
            <th>20</th>
        </tr>
        
        <tr class="active-row">
            <td>20</td>
            <td>
            <div class="text-left">
            <img class="badge-image badge-image--50 js-badge-image" src="https://resources.premierleague.com/premierleague/badges/50/t6.png" srcset="https://resources.premierleague.com/premierleague/badges/50/t6@x2.png 2x" width="25px" height="25px"/>토트넘
           </div>
           </td>
            <th>10</th>
            <th>5</th>
            <th>2</th>
            <th>1</th>
            <th>20</th>
        </tr>
       
        
    </tbody>
</table>
    </div>
    
  </div>
</div>




<footer class="container-fluid text-center">
  <p>copyright ⓒ비상하는 독수리 Corp. All Rights Reserved.</p>
</footer>

</body>
</html>
