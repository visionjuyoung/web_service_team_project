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
            <th>5</th>
            <th>2</th>
            <th>1</th>
            <th>20</th>
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




<!-- footer -->
<%@ include file="footer.jsp" %>

</body>
</html>
