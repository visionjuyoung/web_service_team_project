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
		width: 190px;
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
    .row.content {height: 200px}
    
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
    .imageContainer {
          width:70px; 
          height:70px; 
    }
    footer {
      background-color: #6699FF;
      padding: 25px;
    }
  </style>
  
</head>
<script>
function allowDrop(ev) {
	  ev.preventDefault();
	}

	function drag(ev) {
	  ev.dataTransfer.setData("text", ev.target.id);
	}

	function drop(ev) {
	  ev.preventDefault();
	  var data = ev.dataTransfer.getData("text");
	  ev.target.appendChild(document.getElementById(data));
	}
</script>
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
  <div class="col content">
    <div class="col-sm-2 sidenav text-center">
      <h4>커뮤니티</h4>
      <ul class="nav nav-pills nav-stacked">
        <li><a href="news.jsp">뉴스</a></li>
        <li><a href="community.jsp">응원</a></li>
        <li class="active"><a href="my_squad.jsp">나만의 스쿼드</a></li>
      </ul><br>
    </div>
    
    </div>

    <div class="col-sm-8" style="background-image:url(https://img1.daumcdn.net/thumb/R800x0/?scode=mtistory2&fname=https%3A%2F%2Ft1.daumcdn.net%2Fcfile%2Ftistory%2F1212930D4C170FBF96); background-repeat:no-repeat ; background-size:contain; height:760px;">
   		<div class="col-sm-3">
   		<div id="div1" ondrop="drop(event)" ondragover="allowDrop(event)" style="margin-left: 150px; margin-top: 100px; width:70px; height:70px; background-color:#ffffff;" ></div>
		<div id="div1" ondrop="drop(event)" ondragover="allowDrop(event)" style="margin-left: 150px; margin-top: 90px; width:70px; height:70px; background-color:#ffffff;" ></div>
		<div id="div1" ondrop="drop(event)" ondragover="allowDrop(event)" style="margin-left: 150px; margin-top: 100px; width:70px; height:70px; background-color:#ffffff;" ></div>
		<div id="div1" ondrop="drop(event)" ondragover="allowDrop(event)" style="margin-left: 150px; margin-top: 100px; width:70px; height:70px; background-color:#ffffff;" ></div>
   		</div>
   		<div class="col-sm-3">
   		<div id="div1" ondrop="drop(event)" ondragover="allowDrop(event)" style="margin-left: 180px; margin-top: 140px; width:70px; height:70px; background-color:#ffffff;" ></div>
		<div id="div1" ondrop="drop(event)" ondragover="allowDrop(event)" style="margin-left: 180px; margin-top: 130px; width:70px; height:70px; background-color:#ffffff;" ></div>
		<div id="div1" ondrop="drop(event)" ondragover="allowDrop(event)" style="margin-left: 180px; margin-top: 140px; width:70px; height:70px; background-color:#ffffff;" ></div>
   		</div>
		<div class="col-sm-2">
   		<div id="div1" ondrop="drop(event)" ondragover="allowDrop(event)" style="margin-left: 200px; margin-top: 140px; width:70px; height:70px; background-color:#ffffff;" ></div>
		<div id="div1" ondrop="drop(event)" ondragover="allowDrop(event)" style="margin-left: 200px; margin-top: 130px; width:70px; height:70px; background-color:#ffffff;" ></div>
		<div id="div1" ondrop="drop(event)" ondragover="allowDrop(event)" style="margin-left: 200px; margin-top: 140px; width:70px; height:70px; background-color:#ffffff;" ></div>
   		</div>
		
		
		
    	
    </div>
    <div class="col-sm-2 sidenav text-center">
      
      <img class="imageContainer row-content" id="drag1" src="src/harrykane.png" draggable="true" ondragstart="drag(event)" width="50" height="100">
    
 
    </div>
  </div>
</div>

<br>



<!-- footer -->
<%@ include file="footer.jsp" %>

</body>
</html>
