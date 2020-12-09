<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <script type="text/javascript" src="./js/script.js"></script>
<title>선수 등록</title>
</head>

<body>
	<jsp:include page="header.jsp"/>
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">선수 등록</h1>
		</div>
	</div>
	<div class="container">
		<form name="newPlayer" action="./process_add_player.jsp" method="post"
		class="form-horizontal" enctype="multipart/form-data">
		
			<div class="form-group row">
				<label class="col-sm-2">이미지</label>
				<div class="col-sm-5">
					<input type="file" name="productImage" class="form-control">
				</div>
			</div>
		
			<div class="form-group row">
				<label class="col-sm-2">선수 이름</label>
				<div class="col-sm-3">
					<input id="playerName" type="text" name="playerName" class="form-control">
				</div>
			</div>
			
			<div class="form-group row">
				<label class="col-sm-2">팀</label>
				<div class="col-sm-3">
					<select name="team" class="selectpicker">
						<option value=1>아스널 FC</option>
						<option value=2>아스톤 빌라 FC</option>
						<option value=3>브라이튼 앤 호브 알비온 FC</option>
						<option value=4>번리 FC</option>
						<option value=5>첼시 FC</option>
						<option value=6>크리스탈 팰리스 FC</option>
						<option value=7>애버튼 FC</option>
						<option value=8>풀럼 FC</option>
						<option value=9>리즈 유나이티드 FC</option>
						<option value=10>레스터 시티 FC</option>
						<option value=11>리버풀 FC</option>
						<option value=12>멘체스터 시티 FC</option>
						<option value=13>맨체스터 유나이티드 FC</option>
						<option value=14>뉴캐슬 유나이티드 FC</option>
						<option value=15>세필드 유나이티드 FC</option>
						<option value=16>사우샘프턴 FC</option>
						<option value=17>토트넘 홋스퍼 FC</option>
						<option value=18>웨스트 브로미치 앨비언 FC</option>
						<option value=19>웨스트햄 유나이티드 FC</option>
						<option value=20>울버햄튼 원더러스 FC </option>
					</select>
				</div>
			</div>
			
			<div class="form-group row">
				<label class="col-sm-2">등번호</label>
				<div class="col-sm-3">
					<input type="text" id="backNumber" name="backNumber" class="form-control">
				</div>
			</div>
			
			<div class="form-group row">
				<label class="col-sm-2">국가</label>
				<div class="col-sm-3">
					<input type="text" name="country" class="form-control">
				</div>
			</div>
			
			<div class="form-group row">
				<label class="col-sm-2">포지션</label>
				<div class="col-sm-3">
					<select name="position">
						<option value=1>GK</option>
						<option value=2>DF</option>
						<option value=3>MF</option>
						<option value=4>FW</option>
					</select>
				</div>
			</div>
			
			<div class="form-group row">
				<label class="col-sm-2">나이</label>
				<div class="col-sm-3">
					<input type="text" id="age" name="age" class="form-control">
				</div>
			</div>
			
			<div class="form-group row">
				<div class="col-sm-offset-2 col-sm-10">
					<input type="submit" class="btn btn-primary" value="등록">
				</div>
			</div>
		</form>
	</div>
	<jsp:include page="footer.jsp"/>
</body>
</html>