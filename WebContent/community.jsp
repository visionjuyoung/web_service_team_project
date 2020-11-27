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
		background: url(src/logo.png)center / contain no-repeat;
		width: 180px;
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
      </ul><br>
    </div>

    <div class="col-sm-10" style="background: #ffffff">
      <hr>
      <h2>손흥민 월클이다</h2>
      <h5><span class="glyphicon glyphicon-time"></span> 2020-11-21 PM 05:15</h5>
      <h5><span class="label label-danger">손흥민</span> <span class="label label-primary">토트넘</span></h5><br>
      <p>손흥민 현재 스텟으로는 월클임. 진심 좆털링 보다 100만배 잘함 골결에서 차이 ㅈ됨</p>
       <details>
    <summary>댓글 달기</summary>
    <form role="form">
        <div class="form-group">
          <textarea class="form-control" rows="3" required></textarea>
        </div>
        <button type="submit" class="btn btn-success">제출</button>
      </form>
		</details>
      <br><br>
      
      <hr>
      <h2>맹구는 맹구했다</h2>
      <h5><span class="glyphicon glyphicon-time"></span> 2020-11-21 PM 05:40</h5>
      <h5><span class="label label-success">맨체스터 유나이티드</span></h5><br>
      <p>옛날 맨유에 비해서 지금 맨유는 겉멋충 폭우바, 댄싱머신 ㅈ가드, 성매매자 그린우드 같은 간신들이 맨유 좀먹고 있음 감독도 빨리 리더쉽있는 사람으로 바뀌지 않는 이상 리즈 꼴날거다</p>
      <br>
      
      <p><span class="badge">2</span> 댓글:</p><br>
      
      <div class="row">
        <div class="col-sm-2 text-center">
          <img src="https://resources.premierleague.com/premierleague/badges/50/t1.png" class="img-circle" height="50" width="50" alt="Avatar">
        </div>
        <div class="col-sm-10">
          <h4>황족 맨유 <small>2020-11-21 PM 05:50</small></h4>
          <p>ㅆㅇㅈ 그립다 옜날이여....</p>
          <br>
        </div>
        <div class="col-sm-2 text-center">
          <img src="https://resources.premierleague.com/premierleague/badges/50/t3.png" class="img-circle" height="50" width="50" alt="Avatar">
        </div>
        <div class="col-sm-10">
          <h4>좆 페르시 <small>2020-11-21 PM 05:53</small></h4>
          <p>배부른 소리하네.. 우리는...</p>
          <br>
        
        </div>
      </div>
      <details>
    <summary>댓글 달기</summary>
    <form role="form">
        <div class="form-group">
          <textarea class="form-control" rows="3" required></textarea>
        </div>
        <button type="submit" class="btn btn-success">제출</button>
      </form>
		</details>
      <hr>
      
      <div class="text-right">
      <button type="button" onclick="location.href='write.jsp' "  style ="width:150px;
    background-color: #6699FF;
    border: none;
    color:#fff;
    padding: 15px 0;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 20px;
    margin: 4px;
    cursor: pointer;
    border-radius:10px;">
    글쓰기
    </button>
    </div>
    <br>
        <br>
    </div>
  </div>
</div>

<br>


<!-- footer -->
<%@ include file="footer.jsp" %>

</body>
</html>
