<%@page import="dto.Player"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:useBean id="playerDao" class="dao.PlayerDAO" scope="application" />
<%
	String playerId = request.getParameter("playerId");
	int id;
	Player player = null;
	if (playerId != null) {
		id = Integer.parseInt(playerId);
		player = playerDao.getPlayerById(id);
	}
%>

<!DOCTYPE html>
<html lang="en">
<head>
  <title></title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <style>
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
  </style>
  
</head>

<body>
<div class="col-sm-9 text-center"> 
      <div class="wrapper fadeInDown">
      <h3>선수 상세정보</h3>
  <div id="formContent" style=" max-width: 1000px;  height:2300px;">
	<br>
	<form>
    <div class="text-center" style="margin-left:30px; margin-right:30px; border-radius: 10px 10px 10px 10px; height:300px ; border: 4px solid #6699FF">
       <img src="images/players/<%=player.getImgName() %>" style="height:80%; margin-top:30px"></img>
    	
    	
     <table class="styled-table" style="margin-top:50px; min-width:900px;">
    <thead>
        <tr>
            <th style=" text-align:center"><%=player.getName() %></th>
        </tr>
    </thead>
    
    	
	</table>
	
	 <table class="styled-table" style="min-width:900px;">
    
        <tr class="active-row">
            <td style="background-color:#D9E5FF">클럽</td>
            <th style=" text-align:center"><%=player.getTeamName() %></th>
        </tr>
        
        <tr class="active-row">
            <td style="background-color:#D9E5FF">등 번호</td>
            <th style=" text-align:center"><%=player.getBackNumber() %></th>
        </tr>
        
        <tr class="active-row">
            <td style="background-color:#D9E5FF">포지션</td>
            <th style=" text-align:center"><%=player.getPosition() %></th>
        </tr>
        
        <tr class="active-row">
            <td style="background-color:#D9E5FF">국적</td>
            <th style=" text-align:center"><%=player.getCountry() %></th>
        </tr>
        
        <tr class="active-row">
            <td style="background-color:#D9E5FF">나이</td>
            <th style=" text-align:center"><%=player.getAge() %></th>
        </tr>
   
   		<tr class="active-row">
            <td style="background-color:#D9E5FF">득점</td>
            <th style=" text-align:center"><%=player.getGoals() %></th>
        </tr>
        
        
        <tr class="active-row">
            <td style="background-color:#D9E5FF">슈팅</td>
            <th style=" text-align:center">
				<%
        			Integer shots = player.getShots();
		        	if (shots == null) {
        				out.print("정보 없음");
        			} else {
        				out.print(shots);
        			}
        		%>
			</th>
        </tr>
        
        <tr class="active-row">
            <td style="background-color:#D9E5FF">유효슈팅</td>
            <th style=" text-align:center">
				<%
        			Integer shotsInTarget = player.getShotsInTarget();
		        	if (shots == null) {
        				out.print("정보 없음");
        			} else {
        				out.print(shotsInTarget);
        			}
        		%>
			</th>
        </tr>
        
        <tr class="active-row">
            <td style="background-color:#D9E5FF">도움</td>
            <th style=" text-align:center"><%=player.getAssist() %></th>
        </tr>
        
        <tr class="active-row">
            <td style="background-color:#D9E5FF">경기 수</td>
            <th style=" text-align:center"><%=player.getAppearances() %></th>
        </tr>
	</table>
    </div>
    </form>
  </div>
  <br>
</div>
    </div>
</body>
</html>
