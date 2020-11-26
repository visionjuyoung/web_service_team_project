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
		width: auto;
	}
	.navbar-brand{
		background: url(https://upload.wikimedia.org/wikipedia/ko/7/73/%ED%94%84%EB%A6%AC%EB%AF%B8%EC%96%B4%EB%A6%AC%EA%B7%B8_%EB%A1%9C%EA%B3%A0.png)center / contain no-repeat;
		width: 100px;
		margin-right: 10px;
		margin-top: 10px;
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
    footer {
      background-color: #6699FF;
      padding: 25px;
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

#formFooter {
  background-color: #f6f6f6;
  border-top: 1px solid #dce8f1;
  padding: 25px;
  text-align: center;
  -webkit-border-radius: 0 0 10px 10px;
  border-radius: 0 0 10px 10px;
}

  </style>
</head>
<body>

<!-- header -->
<%@ include file="header.jsp" %>

<div class="container-fluid text-center">    
  <div class="row content">
    <div class="col-sm-1 sidenav">
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

  <!-- Left and right controls -->
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
    <div class="col-sm-1 sidenav">
    </div>
  </div>
</div>

<hr>

<div class="container-fluid" style="margin-left:30px">
  <div class="row content">
    <div class="col-sm-4 sidenav">
    <div class="text-center">
    <h1>순위</h1>
    </div>
     <table class="styled-table">
    <thead>
        <tr>
            <th>등수</th>
            <th>팀</th>
            <th>경기수</th>
            <th>승</th>
            <th>무</th>
            <th>패</th>
            <th>승점</th>
        </tr>
    </thead>
    <tbody>
        <tr class="active-row">
            <td>1</td>
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
            <td>1</td>
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
            <td>1</td>
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
            <td>1</td>
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
            <td>1</td>
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
            <td>1</td>
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
            <td>1</td>
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
            <td>1</td>
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
            <td>1</td>
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
            <td>1</td>
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
            <td>1</td>
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
            <td>1</td>
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
            <td>1</td>
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
            <td>1</td>
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
            <td>1</td>
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
            <td>1</td>
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
            <td>1</td>
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
            <td>1</td>
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
            <td>1</td>
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
            <td>1</td>
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

    <div class="col-sm-8">
    <div class="text-center">
    <h1>뉴스</h1>
    </div>
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

<br>

<hr>

<div class="container-fluid bg-3 text-center">    
<h3>주간 EPL 사진</h3>
<br>

  <div class="row" style="background-color:white; padding:20px; -webkit-border-radius: 10px 10px 10px 10px; margin-left:10px; margin-left:10px">
    <div class="col-sm-3">
      <p>현지도 인정한 손케 듀오!</p>
      <img src="https://imgnews.pstatic.net/image/413/2020/11/15/0000108603_001_20201115181038337.jpg?type=w647" class="img-responsive" style="width:100%" alt="Image">
    </div>
    <div class="col-sm-3"> 
      <p>알리의 미래는 오리무중</p>
      <img src="https://imgnews.pstatic.net/image/413/2020/11/15/0000108598_001_20201115170608107.jpg?type=w647" class="img-responsive" style="width:100%" alt="Image">
    </div>
    <div class="col-sm-3"> 
      <p>네빌이 생각하는 우승후보 '리버풀'</p>
      <img src="https://imgnews.pstatic.net/image/413/2020/11/15/0000108601_001_20201115174535927.jpg?type=w647" class="img-responsive" style="width:100%" alt="Image">
    </div>
    <div class="col-sm-3">
      <p>페르난데스 맨유온 이유 '우승'</p>
      <img src="https://imgnews.pstatic.net/image/450/2020/11/15/0000068811_001_20201115171329779.png?type=w647" class="img-responsive" style="width:100%" alt="Image">
    </div>
  </div>
</div>

<hr>
<br><br>

<div class="container-fluid bg-3 text-center">    
  <h3>주간 EPL 영상</h3><br>
</div><br>

<hr>

<div class="container-fluid bg-3 text-center" style="background-color:white; padding:20px; -webkit-border-radius: 10px 10px 10px 10px; margin-left:10px; margin-left:10px">    
  <div class="row">
    <div class="col-sm-3">
      <p>[EPL역대 최고의 솔로골 투표]</p>
      <iframe width="100%" height="300"
		src="https://www.youtube.com/embed/n6hk4Ke25D8">
	</iframe>
    </div>
    <div class="col-sm-3"> 
      <p>[영국언론이 직접 발표한 EPL 최고의 선수]</p>
     <iframe width="100%" height="300"
		src="https://www.youtube.com/embed/7oN9p-VeqWc">
	</iframe>
    </div>
    <div class="col-sm-3"> 
      <p>[음바페vs볼란트]</p>
      <iframe width="100%" height="300"
		src="https://www.youtube.com/embed/2p_ILYkO91Q">
	</iframe>
    </div>
    <div class="col-sm-3">
      <p>[2020 EPL최악의 영입]</p>
     <iframe width="100%" height="300"
		src="https://www.youtube.com/embed/0OETsbjPNOg">
	</iframe>
    </div>
  </div>
</div><br><br>
<hr>

<!-- footer -->
<%@ include file="footer.jsp" %>

</body>
</html>
