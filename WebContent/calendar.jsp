<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
		background: url(https://upload.wikimedia.org/wikipedia/ko/7/73/%ED%94%84%EB%A6%AC%EB%AF%B8%EC%96%B4%EB%A6%AC%EA%B7%B8_%EB%A1%9C%EA%B3%A0.png)center / contain no-repeat;
		width: 100px;
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
    
	 body {
  	font-family: Tahoma;
}
header {
  text-align: center;
}
#calendar {
  width: 90%;
  margin-left:30px;
  margin-right:30px;
}
#calendar a {
  color: #8e352e;
  text-decoration: none;
}
#calendar ul {
  list-style: none;
  padding: 0;
  margin: 0;
  width: 100%;
}
#calendar li {
  display: block;
  float: left;
  width: 14.342%;
  padding: 5px;
  box-sizing: border-box;
  border: 1px solid #ccc;
  margin-right: -1px;
  margin-bottom: -1px;
}
#calendar ul.weekdays {
  height: 40px;
  background: #8e352e;
}
#calendar ul.weekdays li {
  text-align: center;
  text-transform: uppercase;
  line-height: 20px;
  border: none !important;
  padding: 10px 6px;
  color: #fff;
  font-size: 13px;
}
#calendar .days li {
  height: 200px;
  background: #ffffff;
}
#calendar .days li:hover {
  background: #d3d3d3;
}
#calendar .date {
  text-align: center;
  margin-bottom: 5px;
  padding: 4px;
  background: #333;
  color: #ffffff;
  width: 20px;
  border-radius: 50%;
  float: right;
}
#calendar .event {
  clear: both;
  display: block;
  font-size: 12px;
  border-radius: 4px;
  padding: 5px;
  margin-top: 10px;
  margin-bottom: 5px;
  line-height: 10px;
  background: #e4f2f2;
  border: 1px solid #b5dbdc;
  color: #009aaf;
  text-decoration: none;
}
#calendar .event-desc {
  color: #666;
  margin: 3px 0 7px 0;
  text-decoration: none;
}
#calendar .other-month {
  background: #f5f5f5;
  color: #666;
}
@media (max-width: 768px) {
  #calendar .weekdays, #calendar .other-month {
    display: none;
  }
  #calendar li {
    height: auto !important;
    border: 1px solid #ededed;
    width: 100%;
    padding: 10px;
    margin-bottom: -1px;
  }
  #calendar .date {
    float: none;
  }
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
  max-width: 300px;
  height:750px;
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

<br>

<div class="text-center">
<h1>일정</h1>
</div>

<hr>


<div class="container-fluid text-center">    
  <div class="row content">
    <div class="col-sm-3" style="margin-top:20px">
    <div>
    <h4>팀별 일정</h4>
    <br>
    </div>
    <div id="formContent">
    <br>
    <div>
    <div>
    <button type="button" onclick="date_ars()" class="btn btn-xs btn-link">
          <img class="badge-image badge-image--50 js-badge-image" src="https://resources.premierleague.com/premierleague/badges/50/t3.png" srcset="https://resources.premierleague.com/premierleague/badges/50/t3@x2.png 2x"/>
  		  <p>Arsenal<p>
  	</button>
  	<Script>
  	function date_ars() {
  		$('.event').hide();
  		$('.아스날').show();
  		$('.tt').hide();
  	}
  	</Script>
  
  <button type="button" onclick="date_ast()" class="btn btn-xs btn-link" style="margin-right:20px; margin-left:20px">
         <img class="badge-image badge-image--50 js-badge-image" src="https://resources.premierleague.com/premierleague/badges/50/t7.png" srcset="https://resources.premierleague.com/premierleague/badges/50/t7@x2.png 2x" />
  		<p>Aston villa<p>
  </button>
  	<Script>
  	function date_ast() {
  		$('.event').hide();
  		$('.아스톤').show();
  		$('.tt').hide();
  	}
  	</Script>
  	  
   <button type="button" onclick="date_bri()" class="btn btn-xs btn-link">
          <img class="badge-image badge-image--50 js-badge-image" src="https://resources.premierleague.com/premierleague/badges/50/t36.png" srcset="https://resources.premierleague.com/premierleague/badges/50/t36@x2.png 2x" />
  		<p>Brighton<p>
  </button>
  </div>
  	<Script>
  	function date_bri() {
  		$('.event').hide();
  		$('.브라이튼').show();
  		$('.tt').hide();
  	}
  	</Script>
  
  <br>
  
  <div>
   <button type="button" onclick="date_bur()" class="btn btn-xs btn-link">
          <img class="badge-image badge-image--50 js-badge-image" src="https://resources.premierleague.com/premierleague/badges/50/t90.png" srcset="https://resources.premierleague.com/premierleague/badges/50/t90@x2.png 2x" />
  <p>Burnley<p>
  </button>
  	<Script>
  	function date_bur() {
  		$('.event').hide();
  		$('.번리').show();
  		$('.tt').hide();
  	}
  	</Script>
  	    
  <button type="button" onclick="date_che()" class="btn btn-xs btn-link" style="margin-right:20px; margin-left:20px">
          <img class="badge-image badge-image--50 js-badge-image" src="https://resources.premierleague.com/premierleague/badges/50/t8.png" srcset="https://resources.premierleague.com/premierleague/badges/50/t8@x2.png 2x" />
  <p>chelsea<p>
  </button>
  	<Script>
  	function date_che() {
  		$('.event').hide();
  		$('.첼시').show();
  		$('.tt').hide();
  	}
  	</Script>  
   <button type="button" onclick="date_cp()" class="btn btn-xs btn-link">
          <img class="badge-image badge-image--50 js-badge-image" src="https://resources.premierleague.com/premierleague/badges/50/t31.png" srcset="https://resources.premierleague.com/premierleague/badges/50/t31@x2.png 2x" />
 <p>cp fc<p>
  </button>
  	<Script>
  	function date_cp() {
  		$('.event').hide();
  		$('.팰리스').show();
  		$('.tt').hide();
  	}
  	</Script>  
  </div>
  
  <br>
  
  <div>
   <button type="button" onclick="date_eve()" class="btn btn-xs  btn-link">
          <img class="badge-image badge-image--50 js-badge-image" src="https://resources.premierleague.com/premierleague/badges/50/t11.png" srcset="https://resources.premierleague.com/premierleague/badges/50/t11@x2.png 2x" />
   <p>Everton<p>
  </button>
  	<Script>
  	function date_eve() {
  		$('.event').hide();
  		$('.에버튼').show();
  		$('.tt').hide();
  	}
  	</Script>  
   <button type="button" onclick="date_ful()" class="btn btn-xs btn-link" style="margin-right:20px; margin-left:20px">
          <img class="badge-image badge-image--50 js-badge-image" src="https://resources.premierleague.com/premierleague/badges/50/t54.png" srcset="https://resources.premierleague.com/premierleague/badges/50/t54@x2.png 2x" />
   <p>Fulfam<p>
  </button>
  	<Script>
  	function date_ful() {
  		$('.event').hide();
  		$('.풀럼').show();
  		$('.tt').hide();
  	}
  	</Script>  
  
   <button type="button" onclick="date_lee()" class="btn btn-xs  btn-link">
          <img class="badge-image badge-image--50 js-badge-image" src="https://resources.premierleague.com/premierleague/badges/50/t2.png" srcset="https://resources.premierleague.com/premierleague/badges/50/t2@x2.png 2x" />
   <p>leeds<p>
  </button>
  	<Script>
  	function date_lee() {
  		$('.event').hide();
  		$('.리즈').show();
  		$('.tt').hide();
  	}
  	</Script>  
  </div>
  
  <br>
  
   <div>
  <button type="button" onclick="date_lei()" class="btn btn-xs  btn-link">
          <img class="badge-image badge-image--50 js-badge-image" src="https://resources.premierleague.com/premierleague/badges/50/t13.png" srcset="https://resources.premierleague.com/premierleague/badges/50/t13@x2.png 2x" />
  <p>leicester<p>
  </button>
  	<Script>
  	function date_lei() {
  		$('.event').hide();
  		$('.레스터').show();
  		$('.tt').hide();
  	}
  	</Script>  
 
   <button type="button" onclick="date_liv()" class="btn btn-xs btn-link" style="margin-right:20px; margin-left:20px">
          <img class="badge-image badge-image--50 js-badge-image" src="https://resources.premierleague.com/premierleague/badges/50/t14.png" srcset="https://resources.premierleague.com/premierleague/badges/50/t14@x2.png 2x" />
  <p>Liverpool<p>
  </button>
  	<Script>
  	function date_liv() {
  		$('.event').hide();
  		$('.리버풀').show();
  		$('.tt').hide();
  	}
  	</Script>  
   <button type="button" onclick="date_man()" class="btn btn-xs  btn-link">
          <img class="badge-image badge-image--50 js-badge-image" src="https://resources.premierleague.com/premierleague/badges/50/t43.png" srcset="https://resources.premierleague.com/premierleague/badges/50/t43@x2.png 2x" />
  <p>Man.city<p>
  </button>
  	<Script>
  	function date_man() {
  		$('.event').hide();
  		$('.맨시티').show();
  		$('.tt').hide();
  	}
  	</Script>  
   </div>
   
   <br>
  
   <div>
  <button type="button" onclick="date_manu()" class="btn btn-xs  btn-link">
          <img class="badge-image badge-image--50 js-badge-image" src="https://resources.premierleague.com/premierleague/badges/50/t1.png" srcset="https://resources.premierleague.com/premierleague/badges/50/t1@x2.png 2x" />
  <p>Man.utd<p>
  </button>
  	<Script>
  	function date_manu() {
  		$('.event').hide();
  		$('.맨유').show();
  		$('.tt').hide();
  	}
  	</Script>  
   <button type="button" onclick="date_nu()" class="btn btn-xs btn-link" style="margin-right:20px; margin-left:20px">
          <img class="badge-image badge-image--50 js-badge-image" src="https://resources.premierleague.com/premierleague/badges/50/t4.png" srcset="https://resources.premierleague.com/premierleague/badges/50/t4@x2.png 2x" />
  <p>Nu fc<p>
  </button>
  	<Script>
  	function date_nu() {
  		$('.event').hide();
  		$('.뉴캐슬').show();
  		$('.tt').hide();
  	}
  	</Script>  
  
   <button type="button" onclick="date_she()" class="btn btn-xs  btn-link">
          <img class="badge-image badge-image--50 js-badge-image" src="https://resources.premierleague.com/premierleague/badges/50/t49.png" srcset="https://resources.premierleague.com/premierleague/badges/50/t49@x2.png 2x" />
    <p>Sheffield<p>
  </button>
   </div>
   	<Script>
  	function date_she() {
  		$('.event').hide();
  		$('.셰필드').show();
  		$('.tt').hide();
  	}
  	</Script>  
  	
   	
   
   <br>
  
   <div>
   <button type="button" onclick="date_sh()" class="btn btn-xs  btn-link">
          <img class="badge-image badge-image--50 js-badge-image" src="https://resources.premierleague.com/premierleague/badges/50/t20.png" srcset="https://resources.premierleague.com/premierleague/badges/50/t20@x2.png 2x" />
   <p>sh fc<p>
  </button>
   	<Script>
  	function date_sh() {
  		$('.event').hide();
  		$('.사우샘프턴').show();
  		$('.tt').hide();
  	}
  	</Script> 
  
  <button type="button" onclick="date_tot()" class="btn btn-xs btn-link" style="margin-right:20px; margin-left:20px">
          <img class="badge-image badge-image--50 js-badge-image" src="https://resources.premierleague.com/premierleague/badges/50/t6.png" srcset="https://resources.premierleague.com/premierleague/badges/50/t6@x2.png 2x" />
   <p>Tottenham<p>
  </button>
  	<Script>
  	function date_tot() {
  		$('.event').hide();
  		$('.토트넘').show();
  		$('.tt').hide();
  	}
  	</Script>  
   <button type="button" onclick="date_wba()" class="btn btn-xs  btn-link">
          <img class="badge-image badge-image--50 js-badge-image" src="https://resources.premierleague.com/premierleague/badges/50/t35.png" srcset="https://resources.premierleague.com/premierleague/badges/50/t35@x2.png 2x" />
   <p>Wba<p>
  </button>
   </div>
  	<Script>
  	function date_wba() {
  		$('.event').hide();
  		$('.웨스트브롬').show();
  		$('.tt').hide();
  	}
  	</Script>
  	   
   
   <br>
  
   <div>
   <button type="button" onclick="date_wes()" class="btn btn-xs  btn-link">
          <img class="badge-image badge-image--50 js-badge-image" src="https://resources.premierleague.com/premierleague/badges/50/t21.png" srcset="https://resources.premierleague.com/premierleague/badges/50/t21@x2.png 2x" />
  <p>Westham<p>
  </button>
  	<Script>
  	function date_wes() {
  		$('.event').hide();
  		$('.웨스트햄').show();
  		$('.tt').hide();
  	}
  	</Script>  
   <button type="button" onclick="date_wol()" class="btn btn-xs  btn-link" style="margin-right:20px; margin-left:20px">
          <img class="badge-image badge-image--50 js-badge-image" src="https://resources.premierleague.com/premierleague/badges/50/t39.png" srcset="https://resources.premierleague.com/premierleague/badges/50/t39@x2.png 2x" />
  <p>Wolves<p>
  </button>
  	<Script>
  	function date_wol() {
  		$('.event').hide();
  		$('.울버햄튼').show();
  		$('.tt').hide();
  	}
  	</Script>
   <button type="button" onclick="date_All()" class="btn btn-xs  btn-link">
          <img class="badge-image badge-image--50 js-badge-image" src="https://resources.premierleague.com/premierleague/badges/50/t49.png" srcset="https://resources.premierleague.com/premierleague/badges/50/t49@x2.png 2x" />
    <p>All<p>
  </button>
   </div>
   	<Script>
  	function date_All() {
  		$('.event').hide();
  		$('.tt').show();
  	}
  	</Script>   	  
  </div>
   </div>
  </div>
  
    </div>
    <div class="col-sm-9 text-center"> 
      <div id="calendar-wrap">
            <header>
                <h1>2020년 12월</h1>
            </header>
            <div id="calendar">
                <ul class="weekdays">
                    <li>Sunday</li>
                    <li>Monday</li>
                    <li>Tuesday</li>
                    <li>Wednesday</li>
                    <li>Thursday</li>
                    <li>Friday</li>
                    <li>Saturday</li>
                </ul>
                <ul class="days">
                    <li class="day other-month" style="background: #f2f2f2">
                        <div class="date">29</div>                     
                    </li>
                    <li class="day other-month" style="background: #f2f2f2">
                        <div class="date">30</div>                  
                    </li>
                    <li class="day">
                        <div class="date" >1</div>      
                        <div class="tt">
                            <button style="background-color:#e4f2f2; border: 1px solid #e4f2f2" onclick="func()">
                            	<h3>2 Game</h3>
                            </button>
                            <script>
  
                            </script>
                        </div>  
                        <div class="레스터 풀럼 event day1" style="display:none;">
                            <div class="event-desc text-center">
                                <img class="badge-image badge-image--50 js-badge-image" src="https://resources.premierleague.com/premierleague/badges/50/t13.png" 
                                srcset="https://resources.premierleague.com/premierleague/badges/50/t13@x2.png 2x" 
                                width="25px" height="auto"/>
                            	<span class="visuallyHidden">vs</span>
                            	<img class="badge-image badge-image--50 js-badge-image" src="https://resources.premierleague.com/premierleague/badges/50/t54.png" 
                            	srcset="https://resources.premierleague.com/premierleague/badges/50/t54@x2.png 2x"
                            	 width="25px" height="auto"/>
                            	 <div class="event-time">
                                2:30am 4:30am                            
                            </div>
                            </div>
                        </div> 
                        <div class="웨스트햄 아스톤 event day1" style="display:none;">
                            <div class="event-desc text-center">
                                <img class="badge-image badge-image--50 js-badge-image" src="https://resources.premierleague.com/premierleague/badges/50/t21.png" 
                                srcset="https://resources.premierleague.com/premierleague/badges/50/t13@x2.png 2x" 
                                width="25px" height="auto"/>
                            	<span class="visuallyHidden">vs</span>
                            	<img class="badge-image badge-image--50 js-badge-image" src="https://resources.premierleague.com/premierleague/badges/50/t7.png" 
                            	srcset="https://resources.premierleague.com/premierleague/badges/50/t54@x2.png 2x"
                            	 width="25px" height="auto"/>
                            	 <div class="event-time">
                                5:00am 7:00am                            
                            </div>
                            </div>
                        </div>                                       
                    </li>
                    <li class="day">
                        <div class="date">2</div>                     
                    </li>
                    <li class="day">
                        <div class="date">3</div>                     
                    </li>
                    <li class="day">
                        <div class="date">4</div>                      
                    </li>
                    <li class="day">
                        <div class="date">5</div>
                    </li>
                </ul>
                <ul class="days">
                    <li class="day">
                        <div class="date">6</div>   
                                 <div class="tt">
                            <button style="background-color:#e4f2f2; border: 1px solid #e4f2f2">
                            	<h3>10 Game</h3>
                            </button>
                        </div>
                        <div class="ark" >
                         <div class="웨스트햄 맨유 event day6" style="display:none;">
                            <div class="event-desc text-center">
                                <img class="badge-image badge-image--50 js-badge-image" src="https://resources.premierleague.com/premierleague/badges/50/t21.png" 
                                srcset="https://resources.premierleague.com/premierleague/badges/50/t13@x2.png 2x" 
                                width="25px" height="auto"/>
                            	<span class="visuallyHidden">vs</span>
                            	<img class="badge-image badge-image--50 js-badge-image" src="https://resources.premierleague.com/premierleague/badges/50/t1.png" 
                            	srcset="https://resources.premierleague.com/premierleague/badges/50/t54@x2.png 2x"
                            	 width="25px" height="auto"/>
                            	 <div class="event-time">
                                0:00am 2:00am                            
                            </div>
                            </div>
                        </div>                        
                         <div class="웨스트브롬 팰리스 event day6" style="display:none;">
                            <div class="event-desc text-center">
                                <img class="badge-image badge-image--50 js-badge-image" src="https://resources.premierleague.com/premierleague/badges/50/t35.png" 
                                srcset="https://resources.premierleague.com/premierleague/badges/50/t13@x2.png 2x" 
                                width="25px" height="auto"/>
                            	<span class="visuallyHidden">vs</span>
                            	<img class="badge-image badge-image--50 js-badge-image" src="https://resources.premierleague.com/premierleague/badges/50/t31.png" 
                            	srcset="https://resources.premierleague.com/premierleague/badges/50/t54@x2.png 2x"
                            	 width="25px" height="auto"/>
                            	 <div class="event-time">
                                0:00am 2:00am                            
                            </div>
                            </div>
                        </div>
                         <div class="맨시티 풀럼 event day6" style="display:none;">
                            <div class="event-desc text-center">
                                <img class="badge-image badge-image--50 js-badge-image" src="https://resources.premierleague.com/premierleague/badges/50/t43.png" 
                                srcset="https://resources.premierleague.com/premierleague/badges/50/t13@x2.png 2x" 
                                width="25px" height="auto"/>
                            	<span class="visuallyHidden">vs</span>
                            	<img class="badge-image badge-image--50 js-badge-image" src="https://resources.premierleague.com/premierleague/badges/50/t54.png" 
                            	srcset="https://resources.premierleague.com/premierleague/badges/50/t54@x2.png 2x"
                            	 width="25px" height="auto"/>
                            	 <div class="event-time">
                                0:00am 2:00am                            
                            </div>
                            </div>
                        </div>
                         <div class="리버품 울버햄튼 event day6" style="display:none;">
                            <div class="event-desc text-center">
                                <img class="badge-image badge-image--50 js-badge-image" src="https://resources.premierleague.com/premierleague/badges/50/t14.png" 
                                srcset="https://resources.premierleague.com/premierleague/badges/50/t13@x2.png 2x" 
                                width="25px" height="auto"/>
                            	<span class="visuallyHidden">vs</span>
                            	<img class="badge-image badge-image--50 js-badge-image" src="https://resources.premierleague.com/premierleague/badges/50/t39.png" 
                            	srcset="https://resources.premierleague.com/premierleague/badges/50/t54@x2.png 2x"
                            	 width="25px" height="auto"/>
                            	 <div class="event-time">
                                0:00am 2:00am                            
                            </div>
                            </div>
                        </div>
                         <div class="첼시 리즈 event day6" style="display:none;">
                            <div class="event-desc text-center">
                                <img class="badge-image badge-image--50 js-badge-image" src="https://resources.premierleague.com/premierleague/badges/50/t8.png" 
                                srcset="https://resources.premierleague.com/premierleague/badges/50/t13@x2.png 2x" 
                                width="25px" height="auto"/>
                            	<span class="visuallyHidden">vs</span>
                            	<img class="badge-image badge-image--50 js-badge-image" src="https://resources.premierleague.com/premierleague/badges/50/t2.png" 
                            	srcset="https://resources.premierleague.com/premierleague/badges/50/t54@x2.png 2x"
                            	 width="25px" height="auto"/>
                            	 <div class="event-time">
                                0:00am 2:00am                            
                            </div>
                            </div>
                        </div>
                         <div class="번리 에버튼 event" style="display:none;">
                            <div class="event-desc text-center">
                                <img class="badge-image badge-image--50 js-badge-image" src="https://resources.premierleague.com/premierleague/badges/50/t90.png" 
                                srcset="https://resources.premierleague.com/premierleague/badges/50/t13@x2.png 2x" 
                                width="25px" height="auto"/>
                            	<span class="visuallyHidden">vs</span>
                            	<img class="badge-image badge-image--50 js-badge-image" src="https://resources.premierleague.com/premierleague/badges/50/t11.png" 
                            	srcset="https://resources.premierleague.com/premierleague/badges/50/t54@x2.png 2x"
                            	 width="25px" height="auto"/>
                            	 <div class="event-time">
                                0:00am 2:00am                            
                            </div>
                            </div>
                        </div>
                         <div class="브라이튼 사우샘프턴 event day6" style="display:none;">
                            <div class="event-desc text-center">
                                <img class="badge-image badge-image--50 js-badge-image" src="https://resources.premierleague.com/premierleague/badges/50/t36.png" 
                                srcset="https://resources.premierleague.com/premierleague/badges/50/t13@x2.png 2x" 
                                width="25px" height="auto"/>
                            	<span class="visuallyHidden">vs</span>
                            	<img class="badge-image badge-image--50 js-badge-image" src="https://resources.premierleague.com/premierleague/badges/50/t20.png" 
                            	srcset="https://resources.premierleague.com/premierleague/badges/50/t54@x2.png 2x"
                            	 width="25px" height="auto"/>
                            	 <div class="event-time">
                                0:00am 2:00am                            
                            </div>
                            </div>
                        </div>
                         <div class="아스톤 뉴캔슬 event day6" style="display:none;">
                            <div class="event-desc text-center">
                                <img class="badge-image badge-image--50 js-badge-image" src="https://resources.premierleague.com/premierleague/badges/50/t7.png" 
                                srcset="https://resources.premierleague.com/premierleague/badges/50/t13@x2.png 2x" 
                                width="25px" height="auto"/>
                            	<span class="visuallyHidden">vs</span>
                            	<img class="badge-image badge-image--50 js-badge-image" src="https://resources.premierleague.com/premierleague/badges/50/t4.png" 
                            	srcset="https://resources.premierleague.com/premierleague/badges/50/t54@x2.png 2x"
                            	 width="25px" height="auto"/>
                            	 <div class="event-time">
                                0:00am 2:00am                            
                            </div>
                            </div>
                        </div>
                         <div class="토트넘 아스날 event day6" style="display:none;">
                            <div class="event-desc text-center">
                                <img class="badge-image badge-image--50 js-badge-image" src="https://resources.premierleague.com/premierleague/badges/50/t6.png" 
                                srcset="https://resources.premierleague.com/premierleague/badges/50/t13@x2.png 2x" 
                                width="25px" height="auto"/>
                            	<span class="visuallyHidden">vs</span>
                            	<img class="badge-image badge-image--50 js-badge-image" src="https://resources.premierleague.com/premierleague/badges/50/t3.png" 
                            	srcset="https://resources.premierleague.com/premierleague/badges/50/t54@x2.png 2x"
                            	 width="25px" height="auto"/>
                            	 <div class="event-time">
                                1:00am 3:00am                            
                            </div>
                            </div>
                        </div>                  
                         <div class="셰필드 레스터 event day6" style="display:none;">
                            <div class="event-desc text-center">
                                <img class="badge-image badge-image--50 js-badge-image" src="https://resources.premierleague.com/premierleague/badges/50/t49.png" 
                                srcset="https://resources.premierleague.com/premierleague/badges/50/t13@x2.png 2x" 
                                width="25px" height="auto"/>
                            	<span class="visuallyHidden">vs</span>
                            	<img class="badge-image badge-image--50 js-badge-image" src="https://resources.premierleague.com/premierleague/badges/50/t13.png" 
                            	srcset="https://resources.premierleague.com/premierleague/badges/50/t54@x2.png 2x"
                            	 width="25px" height="auto"/>
                            	 <div class="event-time">
                                1:00am 3:00am                            
                            </div>
                            </div>
                        </div>
                      </div>
                    </li>
                    <li class="day">
                        <div class="date">7</div>                      
                    </li>
                    <li class="day">
                        <div class="date">8</div>                      
                    </li>
                    <li class="day">
                        <div class="date">9</div>                      
                    </li>
                    <li class="day">
                        <div class="date">10</div>
                    </li>
                    <li class="day">
                        <div class="date">11</div>                      
                    </li>
                    <li class="day">
                        <div class="date">12</div>                      
                    </li>
                </ul>
                <ul class="days">
                    <li class="day">
                        <div class="date">13</div>   
                         <div class="tt">
                            <button style="background-color:#e4f2f2; border: 1px solid #e4f2f2">
                            	<h3>8 Game</h3>
                            </button>
                        </div>
                         <div class="울버햄튼 아스톤 event day13" style="display:none;">
                            <div class="event-desc text-center">
                                <img class="badge-image badge-image--50 js-badge-image" src="https://resources.premierleague.com/premierleague/badges/50/t39.png" 
                                srcset="https://resources.premierleague.com/premierleague/badges/50/t13@x2.png 2x" 
                                width="25px" height="auto"/>
                            	<span class="visuallyHidden">vs</span>
                            	<img class="badge-image badge-image--50 js-badge-image" src="https://resources.premierleague.com/premierleague/badges/50/t7.png" 
                            	srcset="https://resources.premierleague.com/premierleague/badges/50/t54@x2.png 2x"
                            	 width="25px" height="auto"/>
                            	 <div class="event-time">
                                1:00am 3:00am                            
                            </div>
                            </div>
                        </div>
                         <div class="사우샘프턴 셰필드 event day13" style="display:none;">
                            <div class="event-desc text-center">
                                <img class="badge-image badge-image--50 js-badge-image" src="https://resources.premierleague.com/premierleague/badges/50/t20.png" 
                                srcset="https://resources.premierleague.com/premierleague/badges/50/t13@x2.png 2x" 
                                width="25px" height="auto"/>
                            	<span class="visuallyHidden">vs</span>
                            	<img class="badge-image badge-image--50 js-badge-image" src="https://resources.premierleague.com/premierleague/badges/50/t49.png" 
                            	srcset="https://resources.premierleague.com/premierleague/badges/50/t54@x2.png 2x"
                            	 width="25px" height="auto"/>
                            	 <div class="event-time">
                                1:00am 3:00am                            
                            </div>
                            </div>
                        </div>
                          <div class="뉴캐슬 웨스트브롬 event day13" style="display:none;">
                            <div class="event-desc text-center">
                                <img class="badge-image badge-image--50 js-badge-image" src="https://resources.premierleague.com/premierleague/badges/50/t4.png" 
                                srcset="https://resources.premierleague.com/premierleague/badges/50/t13@x2.png 2x" 
                                width="25px" height="auto"/>
                            	<span class="visuallyHidden">vs</span>
                            	<img class="badge-image badge-image--50 js-badge-image" src="https://resources.premierleague.com/premierleague/badges/50/t35.png" 
                            	srcset="https://resources.premierleague.com/premierleague/badges/50/t54@x2.png 2x"
                            	 width="25px" height="auto"/>
                            	 <div class="event-time">
                                1:00am 3:00am                            
                            </div>
                            </div>
                        </div>
                         <div class="맨유 맨시티 event day13" style="display:none;">
                            <div class="event-desc text-center">
                                <img class="badge-image badge-image--50 js-badge-image" src="https://resources.premierleague.com/premierleague/badges/50/t1.png" 
                                srcset="https://resources.premierleague.com/premierleague/badges/50/t13@x2.png 2x" 
                                width="25px" height="auto"/>
                            	<span class="visuallyHidden">vs</span>
                            	<img class="badge-image badge-image--50 js-badge-image" src="https://resources.premierleague.com/premierleague/badges/50/t43.png" 
                            	srcset="https://resources.premierleague.com/premierleague/badges/50/t54@x2.png 2x"
                            	 width="25px" height="auto"/>
                            	 <div class="event-time">
                                1:00am 3:00am                            
                            </div>
                            </div>
                        </div>
                         <div class="리즈 웨스트햄 event day13" style="display:none;">
                            <div class="event-desc text-center">
                                <img class="badge-image badge-image--50 js-badge-image" src="https://resources.premierleague.com/premierleague/badges/50/t2.png" 
                                srcset="https://resources.premierleague.com/premierleague/badges/50/t13@x2.png 2x" 
                                width="25px" height="auto"/>
                            	<span class="visuallyHidden">vs</span>
                            	<img class="badge-image badge-image--50 js-badge-image" src="https://resources.premierleague.com/premierleague/badges/50/t21.png" 
                            	srcset="https://resources.premierleague.com/premierleague/badges/50/t54@x2.png 2x"
                            	 width="25px" height="auto"/>
                            	 <div class="event-time">
                                1:00am 3:00am                            
                            </div>
                            </div>
                        </div>
                         <div class="풀럼 리버풀 event day13" style="display:none;">
                            <div class="event-desc text-center">
                                <img class="badge-image badge-image--50 js-badge-image" src="https://resources.premierleague.com/premierleague/badges/50/t54.png" 
                                srcset="https://resources.premierleague.com/premierleague/badges/50/t13@x2.png 2x" 
                                width="25px" height="auto"/>
                            	<span class="visuallyHidden">vs</span>
                            	<img class="badge-image badge-image--50 js-badge-image" src="https://resources.premierleague.com/premierleague/badges/50/t14.png" 
                            	srcset="https://resources.premierleague.com/premierleague/badges/50/t54@x2.png 2x"
                            	 width="25px" height="auto"/>
                            	 <div class="event-time">
                                1:00am 3:00am                            
                            </div>
                            </div>
                        </div>
                         <div class="에버튼 첼시 event day13" style="display:none;">
                            <div class="event-desc text-center">
                                <img class="badge-image badge-image--50 js-badge-image" src="https://resources.premierleague.com/premierleague/badges/50/t11.png" 
                                srcset="https://resources.premierleague.com/premierleague/badges/50/t13@x2.png 2x" 
                                width="25px" height="auto"/>
                            	<span class="visuallyHidden">vs</span>
                            	<img class="badge-image badge-image--50 js-badge-image" src="https://resources.premierleague.com/premierleague/badges/50/t8.png" 
                            	srcset="https://resources.premierleague.com/premierleague/badges/50/t54@x2.png 2x"
                            	 width="25px" height="auto"/>
                            	 <div class="event-time">
                                1:00am 3:00am                            
                            </div>
                            </div>
                        </div>
                         <div class="팰리스 토트넘 event day13" style="display:none;">
                            <div class="event-desc text-center">
                                <img class="badge-image badge-image--50 js-badge-image" src="https://resources.premierleague.com/premierleague/badges/50/t31.png" 
                                srcset="https://resources.premierleague.com/premierleague/badges/50/t13@x2.png 2x" 
                                width="25px" height="auto"/>
                            	<span class="visuallyHidden">vs</span>
                            	<img class="badge-image badge-image--50 js-badge-image" src="https://resources.premierleague.com/premierleague/badges/50/t6.png" 
                            	srcset="https://resources.premierleague.com/premierleague/badges/50/t54@x2.png 2x"
                            	 width="25px" height="auto"/>
                            	 <div class="event-time">
                                1:00am 3:00am                            
                            </div>
                            </div>
                        </div>                                                                                                                                                                                            
                    </li>
                    <li class="day">
                        <div class="date">14</div>  
                         <div class="tt">
                            <button style="background-color:#e4f2f2; border: 1px solid #e4f2f2">
                            	<h3>2 Game</h3>
                            </button>
                        </div>
                         <div class="레스터 브라이튼 event day14" style="display:none;">
                            <div class="event-desc text-center">
                                <img class="badge-image badge-image--50 js-badge-image" src="https://resources.premierleague.com/premierleague/badges/50/t13.png" 
                                srcset="https://resources.premierleague.com/premierleague/badges/50/t13@x2.png 2x" 
                                width="25px" height="auto"/>
                            	<span class="visuallyHidden">vs</span>
                            	<img class="badge-image badge-image--50 js-badge-image" src="https://resources.premierleague.com/premierleague/badges/50/t36.png" 
                            	srcset="https://resources.premierleague.com/premierleague/badges/50/t54@x2.png 2x"
                            	 width="25px" height="auto"/>
                            	 <div class="event-time">
                                1:00am 3:00am                            
                            </div>
                            </div>
                        </div>
                         <div class="아스날 번리 event day14" style="display:none;">
                            <div class="event-desc text-center">
                                <img class="badge-image badge-image--50 js-badge-image" src="https://resources.premierleague.com/premierleague/badges/50/t3.png" 
                                srcset="https://resources.premierleague.com/premierleague/badges/50/t13@x2.png 2x" 
                                width="25px" height="auto"/>
                            	<span class="visuallyHidden">vs</span>
                            	<img class="badge-image badge-image--50 js-badge-image" src="https://resources.premierleague.com/premierleague/badges/50/t90.png" 
                            	srcset="https://resources.premierleague.com/premierleague/badges/50/t54@x2.png 2x"
                            	 width="25px" height="auto"/>
                            	 <div class="event-time">
                                1:00am 3:00am                            
                            </div>
                            </div>
                        </div>                                                  
                    </li>
                    <li class="day">
                        <div class="date">15</div>                     
                    </li>
                    <li class="day">
                        <div class="date">16</div>  
                         <div class="tt">
                            <button style="background-color:#e4f2f2; border: 1px solid #e4f2f2">
                            	<h3>8 Game</h3>
                            </button>
                        </div>
                         <div class="울버햄튼 첼시 event day16" style="display:none;">
                            <div class="event-desc text-center">
                                <img class="badge-image badge-image--50 js-badge-image" src="https://resources.premierleague.com/premierleague/badges/50/t39.png" 
                                srcset="https://resources.premierleague.com/premierleague/badges/50/t13@x2.png 2x" 
                                width="25px" height="auto"/>
                            	<span class="visuallyHidden">vs</span>
                            	<img class="badge-image badge-image--50 js-badge-image" src="https://resources.premierleague.com/premierleague/badges/50/t8.png" 
                            	srcset="https://resources.premierleague.com/premierleague/badges/50/t54@x2.png 2x"
                            	 width="25px" height="auto"/>
                            	 <div class="event-time">
                                4:45am 6:45am                            
                            </div>
                            </div>
                        </div>
                         <div class="웨스트햄 팰리스 event day16" style="display:none;">
                            <div class="event-desc text-center">
                                <img class="badge-image badge-image--50 js-badge-image" src="https://resources.premierleague.com/premierleague/badges/50/t21.png" 
                                srcset="https://resources.premierleague.com/premierleague/badges/50/t13@x2.png 2x" 
                                width="25px" height="auto"/>
                            	<span class="visuallyHidden">vs</span>
                            	<img class="badge-image badge-image--50 js-badge-image" src="https://resources.premierleague.com/premierleague/badges/50/t31.png" 
                            	srcset="https://resources.premierleague.com/premierleague/badges/50/t54@x2.png 2x"
                            	 width="25px" height="auto"/>
                            	 <div class="event-time">
                                4:45am 6:45am                            
                            </div>
                            </div>
                        </div>
                         <div class="셰필드 맨유 event day16" style="display:none;">
                            <div class="event-desc text-center">
                                <img class="badge-image badge-image--50 js-badge-image" src="https://resources.premierleague.com/premierleague/badges/50/t49.png" 
                                srcset="https://resources.premierleague.com/premierleague/badges/50/t13@x2.png 2x" 
                                width="25px" height="auto"/>
                            	<span class="visuallyHidden">vs</span>
                            	<img class="badge-image badge-image--50 js-badge-image" src="https://resources.premierleague.com/premierleague/badges/50/t1.png" 
                            	srcset="https://resources.premierleague.com/premierleague/badges/50/t54@x2.png 2x"
                            	 width="25px" height="auto"/>
                            	 <div class="event-time">
                                4:45am 6:45am                            
                            </div>
                            </div>
                        </div>
                         <div class="레스터 에버튼 event day16" style="display:none;">
                            <div class="event-desc text-center">
                                <img class="badge-image badge-image--50 js-badge-image" src="https://resources.premierleague.com/premierleague/badges/50/t13.png" 
                                srcset="https://resources.premierleague.com/premierleague/badges/50/t13@x2.png 2x" 
                                width="25px" height="auto"/>
                            	<span class="visuallyHidden">vs</span>
                            	<img class="badge-image badge-image--50 js-badge-image" src="https://resources.premierleague.com/premierleague/badges/50/t11.png" 
                            	srcset="https://resources.premierleague.com/premierleague/badges/50/t54@x2.png 2x"
                            	 width="25px" height="auto"/>
                            	 <div class="event-time">
                                4:45am 6:45am                            
                            </div>
                            </div>
                        </div>
                         <div class="리즈 뉴캐슬 event day16" style="display:none;">
                            <div class="event-desc text-center">
                                <img class="badge-image badge-image--50 js-badge-image" src="https://resources.premierleague.com/premierleague/badges/50/t2.png" 
                                srcset="https://resources.premierleague.com/premierleague/badges/50/t13@x2.png 2x" 
                                width="25px" height="auto"/>
                            	<span class="visuallyHidden">vs</span>
                            	<img class="badge-image badge-image--50 js-badge-image" src="https://resources.premierleague.com/premierleague/badges/50/t4.png" 
                            	srcset="https://resources.premierleague.com/premierleague/badges/50/t54@x2.png 2x"
                            	 width="25px" height="auto"/>
                            	 <div class="event-time">
                                4:45am 6:45am                            
                            </div>
                            </div>
                        </div>
                         <div class="풀럼 브라이튼 event day16" style="display:none;">
                            <div class="event-desc text-center">
                                <img class="badge-image badge-image--50 js-badge-image" src="https://resources.premierleague.com/premierleague/badges/50/t54.png" 
                                srcset="https://resources.premierleague.com/premierleague/badges/50/t13@x2.png 2x" 
                                width="25px" height="auto"/>
                            	<span class="visuallyHidden">vs</span>
                            	<img class="badge-image badge-image--50 js-badge-image" src="https://resources.premierleague.com/premierleague/badges/50/t36.png" 
                            	srcset="https://resources.premierleague.com/premierleague/badges/50/t54@x2.png 2x"
                            	 width="25px" height="auto"/>
                            	 <div class="event-time">
                                4:45am 6:45am                            
                            </div>
                            </div>
                        </div>
                         <div class="아스톤 번리 event day16" style="display:none;">
                            <div class="event-desc text-center">
                                <img class="badge-image badge-image--50 js-badge-image" src="https://resources.premierleague.com/premierleague/badges/50/t7.png" 
                                srcset="https://resources.premierleague.com/premierleague/badges/50/t13@x2.png 2x" 
                                width="25px" height="auto"/>
                            	<span class="visuallyHidden">vs</span>
                            	<img class="badge-image badge-image--50 js-badge-image" src="https://resources.premierleague.com/premierleague/badges/50/t90.png" 
                            	srcset="https://resources.premierleague.com/premierleague/badges/50/t54@x2.png 2x"
                            	 width="25px" height="auto"/>
                            	 <div class="event-time">
                                4:45am 6:45am                            
                            </div>
                            </div>
                        </div>
                         <div class="아스널 사우샘프턴 event day16" style="display:none;">
                            <div class="event-desc text-center">
                                <img class="badge-image badge-image--50 js-badge-image" src="https://resources.premierleague.com/premierleague/badges/50/t3.png" 
                                srcset="https://resources.premierleague.com/premierleague/badges/50/t13@x2.png 2x" 
                                width="25px" height="auto"/>
                            	<span class="visuallyHidden">vs</span>
                            	<img class="badge-image badge-image--50 js-badge-image" src="https://resources.premierleague.com/premierleague/badges/50/t20.png" 
                            	srcset="https://resources.premierleague.com/premierleague/badges/50/t54@x2.png 2x"
                            	 width="25px" height="auto"/>
                            	 <div class="event-time">
                                4:45am 6:45am                            
                            </div>
                            </div>
                        </div>                                                                                                                                                                                                  
                    </li>
                    <li class="day">
                        <div class="date">17</div>     
                         <div class="tt">
                            <button style="background-color:#e4f2f2; border: 1px solid #e4f2f2">
                            	<h3>2 Game</h3>
                            </button>
                        </div>
                         <div class="맨시티 웨스트브롬 event day17" style="display:none;">
                            <div class="event-desc text-center">
                                <img class="badge-image badge-image--50 js-badge-image" src="https://resources.premierleague.com/premierleague/badges/50/t43.png" 
                                srcset="https://resources.premierleague.com/premierleague/badges/50/t13@x2.png 2x" 
                                width="25px" height="auto"/>
                            	<span class="visuallyHidden">vs</span>
                            	<img class="badge-image badge-image--50 js-badge-image" src="https://resources.premierleague.com/premierleague/badges/50/t35.png" 
                            	srcset="https://resources.premierleague.com/premierleague/badges/50/t54@x2.png 2x"
                            	 width="25px" height="auto"/>
                            	 <div class="event-time">
                                5:00am 7:00am                            
                            </div>
                            </div>
                        </div>
                         <div class="리버풀 토트넘 event day17" style="display:none;">
                            <div class="event-desc text-center">
                                <img class="badge-image badge-image--50 js-badge-image" src="https://resources.premierleague.com/premierleague/badges/50/t14.png" 
                                srcset="https://resources.premierleague.com/premierleague/badges/50/t13@x2.png 2x" 
                                width="25px" height="auto"/>
                            	<span class="visuallyHidden">vs</span>
                            	<img class="badge-image badge-image--50 js-badge-image" src="https://resources.premierleague.com/premierleague/badges/50/t6.png" 
                            	srcset="https://resources.premierleague.com/premierleague/badges/50/t54@x2.png 2x"
                            	 width="25px" height="auto"/>
                            	 <div class="event-time">
                                5:00am 7:00am                            
                            </div>
                            </div>
                        </div>                                                       
                    </li>
                    <li class="day">
                        <div class="date">18</div>                     
                    </li>
                    <li class="day">
                        <div class="date">19</div>                     
                    </li>
                </ul>
                <ul class="days">
                    <li class="day">
                        <div class="date">20</div> 
                        <div class="tt">
                            <button style="background-color:#e4f2f2; border: 1px solid #e4f2f2">
                            	<h3>10 Game</h3>
                            </button>
                        </div>
                         <div class="웨스트브롬 아스톤 event day20" style="display:none;">
                            <div class="event-desc text-center">
                                <img class="badge-image badge-image--50 js-badge-image" src="https://resources.premierleague.com/premierleague/badges/50/t35.png" 
                                srcset="https://resources.premierleague.com/premierleague/badges/50/t13@x2.png 2x" 
                                width="25px" height="auto"/>
                            	<span class="visuallyHidden">vs</span>
                            	<img class="badge-image badge-image--50 js-badge-image" src="https://resources.premierleague.com/premierleague/badges/50/t7.png" 
                            	srcset="https://resources.premierleague.com/premierleague/badges/50/t54@x2.png 2x"
                            	 width="25px" height="auto"/>
                            	 <div class="event-time">
                                1:00am 3:00am                            
                            </div>
                            </div>
                        </div>
                         <div class="토트넘 레스터 event day20" style="display:none;">
                            <div class="event-desc text-center">
                                <img class="badge-image badge-image--50 js-badge-image" src="https://resources.premierleague.com/premierleague/badges/50/t6.png" 
                                srcset="https://resources.premierleague.com/premierleague/badges/50/t13@x2.png 2x" 
                                width="25px" height="auto"/>
                            	<span class="visuallyHidden">vs</span>
                            	<img class="badge-image badge-image--50 js-badge-image" src="https://resources.premierleague.com/premierleague/badges/50/t13.png" 
                            	srcset="https://resources.premierleague.com/premierleague/badges/50/t54@x2.png 2x"
                            	 width="25px" height="auto"/>
                            	 <div class="event-time">
                                1:00am 3:00am                            
                            </div>
                            </div>
                        </div>
                         <div class="사우샘프턴 맨시티 event day20" style="display:none;">
                            <div class="event-desc text-center">
                                <img class="badge-image badge-image--50 js-badge-image" src="https://resources.premierleague.com/premierleague/badges/50/t20.png" 
                                srcset="https://resources.premierleague.com/premierleague/badges/50/t13@x2.png 2x" 
                                width="25px" height="auto"/>
                            	<span class="visuallyHidden">vs</span>
                            	<img class="badge-image badge-image--50 js-badge-image" src="https://resources.premierleague.com/premierleague/badges/50/t43.png" 
                            	srcset="https://resources.premierleague.com/premierleague/badges/50/t54@x2.png 2x"
                            	 width="25px" height="auto"/>
                            	 <div class="event-time">
                                1:00am 3:00am                            
                            </div>
                            </div>
                        </div>
                         <div class="뉴캐슬 풀럼 event day20" style="display:none;">
                            <div class="event-desc text-center">
                                <img class="badge-image badge-image--50 js-badge-image" src="https://resources.premierleague.com/premierleague/badges/50/t4.png" 
                                srcset="https://resources.premierleague.com/premierleague/badges/50/t13@x2.png 2x" 
                                width="25px" height="auto"/>
                            	<span class="visuallyHidden">vs</span>
                            	<img class="badge-image badge-image--50 js-badge-image" src="https://resources.premierleague.com/premierleague/badges/50/t54.png" 
                            	srcset="https://resources.premierleague.com/premierleague/badges/50/t54@x2.png 2x"
                            	 width="25px" height="auto"/>
                            	 <div class="event-time">
                                1:00am 3:00am                            
                            </div>
                            </div>
                        </div>
                         <div class="맨유 리즈 event day20" style="display:none;">
                            <div class="event-desc text-center">
                                <img class="badge-image badge-image--50 js-badge-image" src="https://resources.premierleague.com/premierleague/badges/50/t1.png" 
                                srcset="https://resources.premierleague.com/premierleague/badges/50/t13@x2.png 2x" 
                                width="25px" height="auto"/>
                            	<span class="visuallyHidden">vs</span>
                            	<img class="badge-image badge-image--50 js-badge-image" src="https://resources.premierleague.com/premierleague/badges/50/t2.png" 
                            	srcset="https://resources.premierleague.com/premierleague/badges/50/t54@x2.png 2x"
                            	 width="25px" height="auto"/>
                            	 <div class="event-time">
                                1:00am 3:00am                            
                            </div>
                            </div>
                        </div>
                         <div class="에버튼 아스날 event day20" style="display:none;">
                            <div class="event-desc text-center">
                                <img class="badge-image badge-image--50 js-badge-image" src="https://resources.premierleague.com/premierleague/badges/50/t11.png" 
                                srcset="https://resources.premierleague.com/premierleague/badges/50/t13@x2.png 2x" 
                                width="25px" height="auto"/>
                            	<span class="visuallyHidden">vs</span>
                            	<img class="badge-image badge-image--50 js-badge-image" src="https://resources.premierleague.com/premierleague/badges/50/t3.png" 
                            	srcset="https://resources.premierleague.com/premierleague/badges/50/t54@x2.png 2x"
                            	 width="25px" height="auto"/>
                            	 <div class="event-time">
                                1:00am 3:00am                            
                            </div>
                            </div>
                        </div>
                         <div class="팰리스 리버풀 event day20" style="display:none;">
                            <div class="event-desc text-center">
                                <img class="badge-image badge-image--50 js-badge-image" src="https://resources.premierleague.com/premierleague/badges/50/t31.png" 
                                srcset="https://resources.premierleague.com/premierleague/badges/50/t13@x2.png 2x" 
                                width="25px" height="auto"/>
                            	<span class="visuallyHidden">vs</span>
                            	<img class="badge-image badge-image--50 js-badge-image" src="https://resources.premierleague.com/premierleague/badges/50/t14.png" 
                            	srcset="https://resources.premierleague.com/premierleague/badges/50/t54@x2.png 2x"
                            	 width="25px" height="auto"/>
                            	 <div class="event-time">
                                1:00am 3:00am                            
                            </div>
                            </div>
                        </div>
                         <div class="첼시 웨스트햄 event day20" style="display:none;">
                            <div class="event-desc text-center">
                                <img class="badge-image badge-image--50 js-badge-image" src="https://resources.premierleague.com/premierleague/badges/50/t8.png" 
                                srcset="https://resources.premierleague.com/premierleague/badges/50/t13@x2.png 2x" 
                                width="25px" height="auto"/>
                            	<span class="visuallyHidden">vs</span>
                            	<img class="badge-image badge-image--50 js-badge-image" src="https://resources.premierleague.com/premierleague/badges/50/t21.png" 
                            	srcset="https://resources.premierleague.com/premierleague/badges/50/t54@x2.png 2x"
                            	 width="25px" height="auto"/>
                            	 <div class="event-time">
                                1:00am 3:00am                            
                            </div>
                            </div>
                        </div>
                         <div class="번리 울버햄튼 event day20" style="display:none;">
                            <div class="event-desc text-center">
                                <img class="badge-image badge-image--50 js-badge-image" src="https://resources.premierleague.com/premierleague/badges/50/t2.png" 
                                srcset="https://resources.premierleague.com/premierleague/badges/50/t13@x2.png 2x" 
                                width="25px" height="auto"/>
                            	<span class="visuallyHidden">vs</span>
                            	<img class="badge-image badge-image--50 js-badge-image" src="https://resources.premierleague.com/premierleague/badges/50/t39.png" 
                            	srcset="https://resources.premierleague.com/premierleague/badges/50/t54@x2.png 2x"
                            	 width="25px" height="auto"/>
                            	 <div class="event-time">
                                1:00am 3:00am                            
                            </div>
                            </div>
                        </div>
                         <div class="브라이튼 셰필드 event day20" style="display:none;">
                            <div class="event-desc text-center">
                                <img class="badge-image badge-image--50 js-badge-image" src="https://resources.premierleague.com/premierleague/badges/50/t36.png" 
                                srcset="https://resources.premierleague.com/premierleague/badges/50/t13@x2.png 2x" 
                                width="25px" height="auto"/>
                            	<span class="visuallyHidden">vs</span>
                            	<img class="badge-image badge-image--50 js-badge-image" src="https://resources.premierleague.com/premierleague/badges/50/t49.png" 
                            	srcset="https://resources.premierleague.com/premierleague/badges/50/t54@x2.png 2x"
                            	 width="25px" height="auto"/>
                            	 <div class="event-time">
                                1:00am 3:00am                            
                            </div>
                            </div>
                        </div>                                                                                                                                                                                                                                                          
                    </li>
                    <li class="day">
                        <div class="date">21</div>                     
                    </li>
                    <li class="day">
                        <div class="date">22</div>                     
                    </li>
                    <li class="day">
                        <div class="date">23</div>                     
                    </li>
                    <li class="day">
                        <div class="date">24</div>                     
                    </li>
                    <li class="day">
                        <div class="date">25</div>
                    </li>
                    <li class="day">
                        <div class="date">26</div>                     
                    </li>
                </ul>
                <ul class="days">
                    <li class="day">
                        <div class="date">27</div>   
                        <div class="tt">
                            <button style="background-color:#e4f2f2; border: 1px solid #e4f2f2">
                            	<h3>10 Game</h3>
                            </button>                             
                        </div>
                         <div class="울버햄튼 토트넘 event day27" style="display:none;">
                            <div class="event-desc text-center">
                                <img class="badge-image badge-image--50 js-badge-image" src="https://resources.premierleague.com/premierleague/badges/50/t39.png" 
                                srcset="https://resources.premierleague.com/premierleague/badges/50/t13@x2.png 2x" 
                                width="25px" height="auto"/>
                            	<span class="visuallyHidden">vs</span>
                            	<img class="badge-image badge-image--50 js-badge-image" src="https://resources.premierleague.com/premierleague/badges/50/t6.png" 
                            	srcset="https://resources.premierleague.com/premierleague/badges/50/t54@x2.png 2x"
                            	 width="25px" height="auto"/>
                            	 <div class="event-time">
                                1:00am 3:00am                            
                            </div>
                            </div>
                        </div>
                         <div class="웨스트햄 브라이튼 event day27" style="display:none;">
                            <div class="event-desc text-center">
                                <img class="badge-image badge-image--50 js-badge-image" src="https://resources.premierleague.com/premierleague/badges/50/t21.png" 
                                srcset="https://resources.premierleague.com/premierleague/badges/50/t13@x2.png 2x" 
                                width="25px" height="auto"/>
                            	<span class="visuallyHidden">vs</span>
                            	<img class="badge-image badge-image--50 js-badge-image" src="https://resources.premierleague.com/premierleague/badges/50/t36.png" 
                            	srcset="https://resources.premierleague.com/premierleague/badges/50/t54@x2.png 2x"
                            	 width="25px" height="auto"/>
                            	 <div class="event-time">
                                1:00am 3:00am                            
                            </div>
                            </div>
                        </div>
                         <div class="셰필드 에버튼 event day27" style="display:none;">
                            <div class="event-desc text-center">
                                <img class="badge-image badge-image--50 js-badge-image" src="https://resources.premierleague.com/premierleague/badges/50/t49.png" 
                                srcset="https://resources.premierleague.com/premierleague/badges/50/t13@x2.png 2x" 
                                width="25px" height="auto"/>
                            	<span class="visuallyHidden">vs</span>
                            	<img class="badge-image badge-image--50 js-badge-image" src="https://resources.premierleague.com/premierleague/badges/50/t11.png" 
                            	srcset="https://resources.premierleague.com/premierleague/badges/50/t54@x2.png 2x"
                            	 width="25px" height="auto"/>
                            	 <div class="event-time">
                                1:00am 3:00am                            
                            </div>
                            </div>
                        </div>
                         <div class="맨시티 뉴캐슬 event day27" style="display:none;">
                            <div class="event-desc text-center">
                                <img class="badge-image badge-image--50 js-badge-image" src="https://resources.premierleague.com/premierleague/badges/50/t43.png" 
                                srcset="https://resources.premierleague.com/premierleague/badges/50/t13@x2.png 2x" 
                                width="25px" height="auto"/>
                            	<span class="visuallyHidden">vs</span>
                            	<img class="badge-image badge-image--50 js-badge-image" src="https://resources.premierleague.com/premierleague/badges/50/t4.png" 
                            	srcset="https://resources.premierleague.com/premierleague/badges/50/t54@x2.png 2x"
                            	 width="25px" height="auto"/>
                            	 <div class="event-time">
                                1:00am 3:00am                            
                            </div>
                            </div>
                        </div>
                         <div class="리버풀 웨스트브롬 event day27" style="display:none;">
                            <div class="event-desc text-center">
                                <img class="badge-image badge-image--50 js-badge-image" src="https://resources.premierleague.com/premierleague/badges/50/t14.png" 
                                srcset="https://resources.premierleague.com/premierleague/badges/50/t13@x2.png 2x" 
                                width="25px" height="auto"/>
                            	<span class="visuallyHidden">vs</span>
                            	<img class="badge-image badge-image--50 js-badge-image" src="https://resources.premierleague.com/premierleague/badges/50/t35.png" 
                            	srcset="https://resources.premierleague.com/premierleague/badges/50/t54@x2.png 2x"
                            	 width="25px" height="auto"/>
                            	 <div class="event-time">
                                1:00am 3:00am                            
                            </div>
                            </div>
                        </div>
                         <div class="레스터 맨유 event day27" style="display:none;">
                            <div class="event-desc text-center">
                                <img class="badge-image badge-image--50 js-badge-image" src="https://resources.premierleague.com/premierleague/badges/50/t13.png" 
                                srcset="https://resources.premierleague.com/premierleague/badges/50/t13@x2.png 2x" 
                                width="25px" height="auto"/>
                            	<span class="visuallyHidden">vs</span>
                            	<img class="badge-image badge-image--50 js-badge-image" src="https://resources.premierleague.com/premierleague/badges/50/t1.png" 
                            	srcset="https://resources.premierleague.com/premierleague/badges/50/t54@x2.png 2x"
                            	 width="25px" height="auto"/>
                            	 <div class="event-time">
                                1:00am 3:00am                            
                            </div>
                            </div>
                        </div> 
                         <div class="리즈 번리 event day27" style="display:none;">
                            <div class="event-desc text-center">
                                <img class="badge-image badge-image--50 js-badge-image" src="https://resources.premierleague.com/premierleague/badges/50/t2.png" 
                                srcset="https://resources.premierleague.com/premierleague/badges/50/t13@x2.png 2x" 
                                width="25px" height="auto"/>
                            	<span class="visuallyHidden">vs</span>
                            	<img class="badge-image badge-image--50 js-badge-image" src="https://resources.premierleague.com/premierleague/badges/50/t90.png" 
                            	srcset="https://resources.premierleague.com/premierleague/badges/50/t54@x2.png 2x"
                            	 width="25px" height="auto"/>
                            	 <div class="event-time">
                                1:00am 3:00am                            
                            </div>
                            </div>
                        </div>
                         <div class="풀럼 사우샘프턴 event day27" style="display:none;">
                            <div class="event-desc text-center">
                                <img class="badge-image badge-image--50 js-badge-image" src="https://resources.premierleague.com/premierleague/badges/50/t54.png" 
                                srcset="https://resources.premierleague.com/premierleague/badges/50/t13@x2.png 2x" 
                                width="25px" height="auto"/>
                            	<span class="visuallyHidden">vs</span>
                            	<img class="badge-image badge-image--50 js-badge-image" src="https://resources.premierleague.com/premierleague/badges/50/t20.png" 
                            	srcset="https://resources.premierleague.com/premierleague/badges/50/t54@x2.png 2x"
                            	 width="25px" height="auto"/>
                            	 <div class="event-time">
                                1:00am 3:00am                            
                            </div>
                            </div>
                        </div>
                          <div class="아스톤 팰리스 event day27" style="display:none;">
                            <div class="event-desc text-center">
                                <img class="badge-image badge-image--50 js-badge-image" src="https://resources.premierleague.com/premierleague/badges/50/t7.png" 
                                srcset="https://resources.premierleague.com/premierleague/badges/50/t13@x2.png 2x" 
                                width="25px" height="auto"/>
                            	<span class="visuallyHidden">vs</span>
                            	<img class="badge-image badge-image--50 js-badge-image" src="https://resources.premierleague.com/premierleague/badges/50/t31.png" 
                            	srcset="https://resources.premierleague.com/premierleague/badges/50/t54@x2.png 2x"
                            	 width="25px" height="auto"/>
                            	 <div class="event-time">
                                1:00am 3:00am                            
                            </div>
                            </div>
                        </div>
                         <div class="아스날 첼시 event day27" style="display:none;">
                            <div class="event-desc text-center">
                                <img class="badge-image badge-image--50 js-badge-image" src="https://resources.premierleague.com/premierleague/badges/50/t3.png" 
                                srcset="https://resources.premierleague.com/premierleague/badges/50/t13@x2.png 2x" 
                                width="25px" height="auto"/>
                            	<span class="visuallyHidden">vs</span>
                            	<img class="badge-image badge-image--50 js-badge-image" src="https://resources.premierleague.com/premierleague/badges/50/t8.png" 
                            	srcset="https://resources.premierleague.com/premierleague/badges/50/t54@x2.png 2x"
                            	 width="25px" height="auto"/>
                            	 <div class="event-time">
                                1:00am 3:00am                            
                            </div>
                            </div>
                        </div>                                                                                                                                                                                                                                                                            
                    </li>
                    <li class="day">
                        <div class="date">28</div>
                    </li>
                    <li class="day">
                        <div class="date">29</div>  
                            <div class="tt">
                            <button style="background-color:#e4f2f2; border: 1px solid #e4f2f2">
                            	<h3>10 Game</h3>
                            </button>                        
                        </div>
                         <div class="웨스트브롬 리즈 event day29" style="display:none;">
                            <div class="event-desc text-center">
                                <img class="badge-image badge-image--50 js-badge-image" src="https://resources.premierleague.com/premierleague/badges/50/t35.png" 
                                srcset="https://resources.premierleague.com/premierleague/badges/50/t13@x2.png 2x" 
                                width="25px" height="auto"/>
                            	<span class="visuallyHidden">vs</span>
                            	<img class="badge-image badge-image--50 js-badge-image" src="https://resources.premierleague.com/premierleague/badges/50/t2.png" 
                            	srcset="https://resources.premierleague.com/premierleague/badges/50/t54@x2.png 2x"
                            	 width="25px" height="auto"/>
                            	 <div class="event-time">
                                1:00am 3:00am                            
                            </div>
                            </div>
                        </div>
                         <div class="토트넘 풀럼 event day29" style="display:none;">
                            <div class="event-desc text-center">
                                <img class="badge-image badge-image--50 js-badge-image" src="https://resources.premierleague.com/premierleague/badges/50/t6.png" 
                                srcset="https://resources.premierleague.com/premierleague/badges/50/t13@x2.png 2x" 
                                width="25px" height="auto"/>
                            	<span class="visuallyHidden">vs</span>
                            	<img class="badge-image badge-image--50 js-badge-image" src="https://resources.premierleague.com/premierleague/badges/50/t54.png" 
                            	srcset="https://resources.premierleague.com/premierleague/badges/50/t54@x2.png 2x"
                            	 width="25px" height="auto"/>
                            	 <div class="event-time">
                                1:00am 3:00am                            
                            </div>
                            </div>
                        </div>
                           <div class="사우샘프턴 웨스트햄 event day29" style="display:none;">
                            <div class="event-desc text-center">
                                <img class="badge-image badge-image--50 js-badge-image" src="https://resources.premierleague.com/premierleague/badges/50/t20.png" 
                                srcset="https://resources.premierleague.com/premierleague/badges/50/t13@x2.png 2x" 
                                width="25px" height="auto"/>
                            	<span class="visuallyHidden">vs</span>
                            	<img class="badge-image badge-image--50 js-badge-image" src="https://resources.premierleague.com/premierleague/badges/50/t21.png" 
                            	srcset="https://resources.premierleague.com/premierleague/badges/50/t54@x2.png 2x"
                            	 width="25px" height="auto"/>
                            	 <div class="event-time">
                                1:00am 3:00am                            
                            </div>
                            </div>
                        </div>
                         <div class="뉴캐슬 리버풀 event day29" style="display:none;">
                            <div class="event-desc text-center">
                                <img class="badge-image badge-image--50 js-badge-image" src="https://resources.premierleague.com/premierleague/badges/50/t4.png" 
                                srcset="https://resources.premierleague.com/premierleague/badges/50/t13@x2.png 2x" 
                                width="25px" height="auto"/>
                            	<span class="visuallyHidden">vs</span>
                            	<img class="badge-image badge-image--50 js-badge-image" src="https://resources.premierleague.com/premierleague/badges/50/t14.png" 
                            	srcset="https://resources.premierleague.com/premierleague/badges/50/t54@x2.png 2x"
                            	 width="25px" height="auto"/>
                            	 <div class="event-time">
                                1:00am 3:00am                            
                            </div>
                            </div>
                        </div>
                         <div class="맨유 울버햄튼 event day29" style="display:none;">
                            <div class="event-desc text-center">
                                <img class="badge-image badge-image--50 js-badge-image" src="https://resources.premierleague.com/premierleague/badges/50/t1.png" 
                                srcset="https://resources.premierleague.com/premierleague/badges/50/t13@x2.png 2x" 
                                width="25px" height="auto"/>
                            	<span class="visuallyHidden">vs</span>
                            	<img class="badge-image badge-image--50 js-badge-image" src="https://resources.premierleague.com/premierleague/badges/50/t39.png" 
                            	srcset="https://resources.premierleague.com/premierleague/badges/50/t54@x2.png 2x"
                            	 width="25px" height="auto"/>
                            	 <div class="event-time">
                                1:00am 3:00am                            
                            </div>
                            </div>
                        </div>
                         <div class="에버튼 맨시티 event day29" style="display:none;">
                            <div class="event-desc text-center">
                                <img class="badge-image badge-image--50 js-badge-image" src="https://resources.premierleague.com/premierleague/badges/50/t11.png" 
                                srcset="https://resources.premierleague.com/premierleague/badges/50/t13@x2.png 2x" 
                                width="25px" height="auto"/>
                            	<span class="visuallyHidden">vs</span>
                            	<img class="badge-image badge-image--50 js-badge-image" src="https://resources.premierleague.com/premierleague/badges/50/t43.png" 
                            	srcset="https://resources.premierleague.com/premierleague/badges/50/t54@x2.png 2x"
                            	 width="25px" height="auto"/>
                            	 <div class="event-time">
                                1:00am 3:00am                            
                            </div>
                            </div>
                        </div>
                         <div class="팰리스 레스터 event day29" style="display:none;">
                            <div class="event-desc text-center">
                                <img class="badge-image badge-image--50 js-badge-image" src="https://resources.premierleague.com/premierleague/badges/50/t31.png" 
                                srcset="https://resources.premierleague.com/premierleague/badges/50/t13@x2.png 2x" 
                                width="25px" height="auto"/>
                            	<span class="visuallyHidden">vs</span>
                            	<img class="badge-image badge-image--50 js-badge-image" src="https://resources.premierleague.com/premierleague/badges/50/t13.png" 
                            	srcset="https://resources.premierleague.com/premierleague/badges/50/t54@x2.png 2x"
                            	 width="25px" height="auto"/>
                            	 <div class="event-time">
                                1:00am 3:00am                            
                            </div>
                            </div>
                        </div>
                         <div class="첼시 아스톤 event day29" style="display:none;">
                            <div class="event-desc text-center">
                                <img class="badge-image badge-image--50 js-badge-image" src="https://resources.premierleague.com/premierleague/badges/50/t8.png" 
                                srcset="https://resources.premierleague.com/premierleague/badges/50/t13@x2.png 2x" 
                                width="25px" height="auto"/>
                            	<span class="visuallyHidden">vs</span>
                            	<img class="badge-image badge-image--50 js-badge-image" src="https://resources.premierleague.com/premierleague/badges/50/t7.png" 
                            	srcset="https://resources.premierleague.com/premierleague/badges/50/t54@x2.png 2x"
                            	 width="25px" height="auto"/>
                            	 <div class="event-time">
                                1:00am 3:00am                            
                            </div>
                            </div>
                        </div>
                         <div class="번리 셰필드 event day29" style="display:none;">
                            <div class="event-desc text-center">
                                <img class="badge-image badge-image--50 js-badge-image" src="https://resources.premierleague.com/premierleague/badges/50/t90.png" 
                                srcset="https://resources.premierleague.com/premierleague/badges/50/t13@x2.png 2x" 
                                width="25px" height="auto"/>
                            	<span class="visuallyHidden">vs</span>
                            	<img class="badge-image badge-image--50 js-badge-image" src="https://resources.premierleague.com/premierleague/badges/50/t49.png" 
                            	srcset="https://resources.premierleague.com/premierleague/badges/50/t54@x2.png 2x"
                            	 width="25px" height="auto"/>
                            	 <div class="event-time">
                                1:00am 3:00am                            
                            </div>
                            </div>
                        </div>
                         <div class="브라이튼 아스날 event day29" style="display:none;">
                            <div class="event-desc text-center">
                                <img class="badge-image badge-image--50 js-badge-image" src="https://resources.premierleague.com/premierleague/badges/50/t36.png" 
                                srcset="https://resources.premierleague.com/premierleague/badges/50/t13@x2.png 2x" 
                                width="25px" height="auto"/>
                            	<span class="visuallyHidden">vs</span>
                            	<img class="badge-image badge-image--50 js-badge-image" src="https://resources.premierleague.com/premierleague/badges/50/t3.png" 
                            	srcset="https://resources.premierleague.com/premierleague/badges/50/t54@x2.png 2x"
                            	 width="25px" height="auto"/>
                            	 <div class="event-time">
                                1:00am 3:00am                            
                            </div>
                            </div>
                        </div>                                                                                                                                                                                                                                                                 
                    </li>
                    <li class="day">
                        <div class="date">30</div>                     
                    </li>
                    <li class="day">
                        <div class="date">31</div>                     
                    </li>
                    <li class="day other-month" style="background: #f2f2f2">
                        <div class="date">1</div>                     
                    </li>
                    <li class="day other-month" style="background: #f2f2f2">
                        <div class="date">2</div>                     
                    </li>
                </ul>
                <ul class="days">
                    <li class="day other-month" style="background: #f2f2f2">
                        <div class="date">3</div>                     
                    </li>
                    <li class="day other-month" style="background: #f2f2f2">
                        <div class="date">4</div>                   
                    </li>
                    <li class="day other-month" style="background: #f2f2f2">
                        <div class="date">5</div>                      
                    </li>
                    <li class="day other-month" style="background: #f2f2f2">
                        <div class="date">6</div>                      
                    </li>
                    <li class="day other-month" style="background: #f2f2f2">
                        <div class="date">7</div>                      
                    </li>
                    <li class="day other-month" style="background: #f2f2f2">
                        <div class="date">8</div>                      
                    </li>
                    <li class="day other-month" style="background: #f2f2f2">
                        <div class="date">9</div>                      
                    </li>
                </ul>
            </div>
        </div>
    </div>
    </div>
  </div>
</div>


<footer class="container-fluid text-center">
  <p>copyright ⓒ비상하는 독수리 Corp. All Rights Reserved.</p>
</footer>

</body>
</html>