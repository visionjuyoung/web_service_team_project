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
        background: url("https://www.teahub.io/photos/full/52-526081_english-premier-league-stadium.jpg");
        background-size:cover;
        height: 680px;
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
	/* Set height of the grid so .sidenav can be 100% (adjust if needed) */
    .row.content {height: 250px}
    
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
      .row.content {height: auto;} 
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
        <a class="dropdown-toggle" data-toggle="dropdown" href="team.jsp">팀
        <span class="caret"></span></a>
        <ul class="dropdown-menu scrollable-menu">
           <li>
                    <a target="_blank" href="team.jsp" role="menuitem">
                        <div class="badge badge--large badge-image-container" data-widget="club-badge-image" data-size="50">
                            <img class="badge-image badge-image--50 js-badge-image" src="https://resources.premierleague.com/premierleague/badges/50/t3.png" srcset="https://resources.premierleague.com/premierleague/badges/50/t3@x2.png 2x" />
                            <span class="visuallyHidden">아스널 FC</span>
                        </div>
                    </a>
                </li>
                <li>
                    <a target="_blank" href="team.jsp" role="menuitem">
                        <div class="badge badge--large badge-image-container" data-widget="club-badge-image" data-size="50">
                            <img class="badge-image badge-image--50 js-badge-image" src="https://resources.premierleague.com/premierleague/badges/50/t7.png" srcset="https://resources.premierleague.com/premierleague/badges/50/t7@x2.png 2x" />
                            <span class="visuallyHidden">아스톤 빌라 FC</span>
                        </div>
                    </a>
                </li>
                <li>
                    <a target="_blank" href="team.jsp" role="menuitem">
                        <div class="badge badge--large badge-image-container" data-widget="club-badge-image" data-size="50">
                            <img class="badge-image badge-image--50 js-badge-image" src="https://resources.premierleague.com/premierleague/badges/50/t36.png" srcset="https://resources.premierleague.com/premierleague/badges/50/t36@x2.png 2x" />
                            <span class="visuallyHidden">브라이튼 앤 호브 알비온 FC</span>
                        </div>
                    </a>
                </li>
                <li>
                    <a target="_blank" href="team.jsp" role="menuitem">
                        <div class="badge badge--large badge-image-container" data-widget="club-badge-image" data-size="50">
                            <img class="badge-image badge-image--50 js-badge-image" src="https://resources.premierleague.com/premierleague/badges/50/t90.png" srcset="https://resources.premierleague.com/premierleague/badges/50/t90@x2.png 2x" />
                            <span class="visuallyHidden">번리 FC</span>
                        </div>
                    </a>
                </li>
                <li>
                    <a target="_blank" href="team.jsp" role="menuitem">
                        <div class="badge badge--large badge-image-container" data-widget="club-badge-image" data-size="50">
                            <img class="badge-image badge-image--50 js-badge-image" src="https://resources.premierleague.com/premierleague/badges/50/t8.png" srcset="https://resources.premierleague.com/premierleague/badges/50/t8@x2.png 2x" />
                            <span class="visuallyHidden">첼시 FC</span>
                        </div>
                    </a>
                </li>
                <li>
                    <a target="_blank" href="team.jsp" role="menuitem">
                        <div class="badge badge--large badge-image-container" data-widget="club-badge-image" data-size="50">
                            <img class="badge-image badge-image--50 js-badge-image" src="https://resources.premierleague.com/premierleague/badges/50/t31.png" srcset="https://resources.premierleague.com/premierleague/badges/50/t31@x2.png 2x" />
                            <span class="visuallyHidden">크리스탈 팰리스 FC</span>
                        </div>
                    </a>
                </li>
                <li>
                    <a target="_blank" href="team.jsp" role="menuitem">
                        <div class="badge badge--large badge-image-container" data-widget="club-badge-image" data-size="50">
                            <img class="badge-image badge-image--50 js-badge-image" src="https://resources.premierleague.com/premierleague/badges/50/t11.png" srcset="https://resources.premierleague.com/premierleague/badges/50/t11@x2.png 2x" />
                            <span class="visuallyHidden">에버튼 FC</span>
                        </div>
                    </a>
                </li>
                <li>
                    <a target="_blank" href="team.jsp" role="menuitem">
                        <div class="badge badge--large badge-image-container" data-widget="club-badge-image" data-size="50">
                            <img class="badge-image badge-image--50 js-badge-image" src="https://resources.premierleague.com/premierleague/badges/50/t54.png" srcset="https://resources.premierleague.com/premierleague/badges/50/t54@x2.png 2x" />
                            <span class="visuallyHidden">풀럼 FC</span>
                        </div>
                    </a>
                </li>
                <li>
                    <a target="_blank" href="team.jsp" role="menuitem">
                        <div class="badge badge--large badge-image-container" data-widget="club-badge-image" data-size="50">
                            <img class="badge-image badge-image--50 js-badge-image" src="https://resources.premierleague.com/premierleague/badges/50/t2.png" srcset="https://resources.premierleague.com/premierleague/badges/50/t2@x2.png 2x" />
                            <span class="visuallyHidden">리즈 유나이티드 FC</span>
                        </div>
                    </a>
                </li>
                <li>
                    <a target="_blank" href="team.jsp" role="menuitem">
                        <div class="badge badge--large badge-image-container" data-widget="club-badge-image" data-size="50">
                            <img class="badge-image badge-image--50 js-badge-image" src="https://resources.premierleague.com/premierleague/badges/50/t13.png" srcset="https://resources.premierleague.com/premierleague/badges/50/t13@x2.png 2x" />
                            <span class="visuallyHidden">레스터 시티 FC</span>
                        </div>
                    </a>
                </li>
                <li>
                    <a target="_blank" href="team.jsp" role="menuitem">
                        <div class="badge badge--large badge-image-container" data-widget="club-badge-image" data-size="50">
                            <img class="badge-image badge-image--50 js-badge-image" src="https://resources.premierleague.com/premierleague/badges/50/t14.png" srcset="https://resources.premierleague.com/premierleague/badges/50/t14@x2.png 2x" />
                            <span class="visuallyHidden">리버풀 FC</span>
                        </div>
                    </a>
                </li>
                <li>
                    <a target="_blank" href="team.jsp" role="menuitem">
                        <div class="badge badge--large badge-image-container" data-widget="club-badge-image" data-size="50">
                            <img class="badge-image badge-image--50 js-badge-image" src="https://resources.premierleague.com/premierleague/badges/50/t43.png" srcset="https://resources.premierleague.com/premierleague/badges/50/t43@x2.png 2x" />
                            <span class="visuallyHidden">맨체스터 시티 FC</span>
                        </div>
                    </a>
                </li>
                <li>
                    <a target="_blank" href="team.jsp" role="menuitem">
                        <div class="badge badge--large badge-image-container" data-widget="club-badge-image" data-size="50">
                            <img class="badge-image badge-image--50 js-badge-image" src="https://resources.premierleague.com/premierleague/badges/50/t1.png" srcset="https://resources.premierleague.com/premierleague/badges/50/t1@x2.png 2x" />
                            <span class="visuallyHidden">맨체스터 유나이티드 FC</span>
                        </div>
                    </a>
                </li>
                <li>
                    <a target="_blank" href="team.jsp" role="menuitem">
                        <div class="badge badge--large badge-image-container" data-widget="club-badge-image" data-size="50">
                            <img class="badge-image badge-image--50 js-badge-image" src="https://resources.premierleague.com/premierleague/badges/50/t4.png" srcset="https://resources.premierleague.com/premierleague/badges/50/t4@x2.png 2x" />
                            <span class="visuallyHidden">뉴캐슬 유나이티드 FC</span>
                        </div>
                    </a>
                </li>
                <li>
                    <a target="_blank" href="team.jsp" role="menuitem">
                        
                        <div class="badge badge--large badge-image-container" data-widget="club-badge-image" data-size="50">
                            <img class="badge-image badge-image--50 js-badge-image" src="https://resources.premierleague.com/premierleague/badges/50/t49.png" srcset="https://resources.premierleague.com/premierleague/badges/50/t49@x2.png 2x" />
                            <span class="visuallyHidden">셰필드 유나이티드 FC</span>
                        </div>
                    </a>
                </li>
                <li>
                    <a target="_blank" href="team.jsp" role="menuitem">
                        <div class="badge badge--large badge-image-container" data-widget="club-badge-image" data-size="50">
                            <img class="badge-image badge-image--50 js-badge-image" src="https://resources.premierleague.com/premierleague/badges/50/t20.png" srcset="https://resources.premierleague.com/premierleague/badges/50/t20@x2.png 2x" />
                            <span class="visuallyHidden">사우샘프턴 FC</span>
                        </div>
                    </a>
                </li>
                <li>
                    <a target="_blank" href="team.jsp" role="menuitem">
                        <div class="badge badge--large badge-image-container" data-widget="club-badge-image" data-size="50">
                            <img class="badge-image badge-image--50 js-badge-image" src="https://resources.premierleague.com/premierleague/badges/50/t6.png" srcset="https://resources.premierleague.com/premierleague/badges/50/t6@x2.png 2x" />
                            <span class="visuallyHidden">토트넘 홋스퍼 FC</span>
                        </div>
                    </a>
                </li>
                <li>
                    <a target="_blank" href="team.jsp" role="menuitem">
                    <div class="badge badge--large badge-image-container" data-widget="club-badge-image" data-size="50">
                            <img class="badge-image badge-image--50 js-badge-image" src="https://resources.premierleague.com/premierleague/badges/50/t35.png" srcset="https://resources.premierleague.com/premierleague/badges/50/t35@x2.png 2x" />
                            <span class="visuallyHidden">웨스트 브로미치 앨비언</span>
                        </div>
                    </a>
                </li>
                <li>
                    <a target="_blank" href="team.jsp" role="menuitem">
                        <div class="badge badge--large badge-image-container" data-widget="club-badge-image" data-size="50">
                            <img class="badge-image badge-image--50 js-badge-image" src="https://resources.premierleague.com/premierleague/badges/50/t21.png" srcset="https://resources.premierleague.com/premierleague/badges/50/t21@x2.png 2x" />
                            <span class="visuallyHidden">웨스트햄 유나이티드 FC</span>
                        </div>
                    </a>
                </li>
                <li>
                    <a target="_blank" href="team.jsp" role="menuitem">
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

<div class="col-sm-12 text-center">
	<h1>뉴스</h1>
	<hr>
</div>

<div class="container-fluid ">
  <div class="row content">
    <div class="col-sm-2 sidenav text-center">
      <h4>커뮤니티</h4>
      <ul class="nav nav-pills nav-stacked">
        <li  class="active"><a href="news.jsp">뉴스</a></li>
        <li><a href="community.jsp">응원</a></li>
        <li><a href="my_squad.jsp">나만의 스쿼드</a></li>
      </ul><br>
    </div>

    <div class="col-sm-10">
       <div class="wrapper fadeInDown">
  <div id="formContent">
<br>
    <form>
    <div class="text-left" style="margin-left:30px">
       <a class="underlineHover" href="https://sports.news.naver.com/news.nhn?oid=413&aid=0000109090">"맨시티가 은퇴 앞둔 메시에 연봉 1억 유로를? 이적 꿈 깨" 西 전문가의 일침</a><br><hr>
       <a class="underlineHover" href="https://sports.news.naver.com/news.nhn?oid=139&aid=0002142594">리버풀은 우파메카노 원하나… 본인 마음은 맨유로</a><br><hr>
       <a class="underlineHover" href="https://sports.news.naver.com/news.nhn?oid=477&aid=0000273966">왓포드 에이스도 인정 "VAR, 빅 클럽 쪽으로 치우쳤어"</a><br><hr>
       <a class="underlineHover" href="https://sports.news.naver.com/news.nhn?oid=216&aid=0000110260">분데스 꼴찌 샬케, 수석코치와 이비셰비치 충돌... 분위기도 ‘최악'</a><br><hr>
       <a class="underlineHover" href="https://sports.news.naver.com/news.nhn?oid=216&aid=0000110259">'24경기 무승' 샬케, 승리하는 법을 잊었다 [김현민의 푸스발 리베로]</a><br><hr>
       <a class="underlineHover" href="https://sports.news.naver.com/news.nhn?oid=108&aid=0002912076">'5분 뛴' 미나미노에 굴욕 신개념(?) 평점 "안녕하세요!" (英매체)</a><br><hr>
       <a class="underlineHover" href="https://sports.news.naver.com/news.nhn?oid=413&aid=0000109093">'IF' 포르투갈에 호날두가 없었더라면? 4회 연속 월드컵-유로 출전과 트로피는 없었다</a><br><hr>
       <a class="underlineHover" href="https://sports.news.naver.com/news.nhn?oid=139&aid=0002142591">피케 부상, 예상보다 심각하다...'수술 시 최대 8개월 결장' (西 매체)</a><br><hr>
       <a class="underlineHover" href="https://sports.news.naver.com/news.nhn?oid=477&aid=0000273950">무리뉴의 주문 "지저분하게 뛰어라"…다이어 "우리가 필요한 마음가짐"</a><br><hr>
       <a class="underlineHover" href="https://sports.news.naver.com/news.nhn?oid=076&aid=0003663172">'쪽박찼다' 코로나19 직격탄 토트넘 19~20시즌 1000억 손실, 무관중 지속땐 2000억 손실전망</a><br><hr>
       <a class="underlineHover" href="https://sports.news.naver.com/news.nhn?oid=139&aid=0002142589">PSG, 음바페 지키기 위해 네이마르 판매한다...'높은 주급 탓'</a><br><hr>
       <a class="underlineHover" href="https://sports.news.naver.com/news.nhn?oid=076&aid=0003663125">'사인할테니, 케인사줘!' 펩 감독 재계약 조건 '케인조항' 있었다</a><br><hr>
       <a class="underlineHover" href="https://sports.news.naver.com/news.nhn?oid=139&aid=0002142587">英 대표 출신, “툭하면 전설이랑 비교하는 거 쓸모없는 짓”</a><br><hr>
       <a class="underlineHover" href="https://sports.news.naver.com/news.nhn?oid=477&aid=0000273942">무리뉴 살생부 정리…산체스 포함 3명 떠난다</a><br><hr>
       <a class="underlineHover" href="https://sports.news.naver.com/news.nhn?oid=139&aid=0002142586">리버풀 살라 돌아온다... 클롭 “음성 판정받았다”</a><br><hr>
       <a class="underlineHover" href="https://sports.news.naver.com/news.nhn?oid=477&aid=0000273938">맨유, 에릭센 노린다…인테르 "프레드와 스왑딜 추진"</a><br><hr>
       <a class="underlineHover" href="https://sports.news.naver.com/news.nhn?oid=413&aid=0000109088">'부활포' 피르미누, 레스터전 MOM 선정...'드리블4+키패스1'</a><br><hr>
       
       
    </div>
    </form>
  </div>
  <br>
</div>
    </div>
  </div>
</div>



<footer class="container-fluid text-center">
  <p>copyright ⓒ비상하는 독수리 Corp. All Rights Reserved.</p>
</footer>

</body>
</html>
