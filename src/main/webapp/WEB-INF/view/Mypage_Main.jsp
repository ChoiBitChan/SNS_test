<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
 	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
	<div class="container">
		<div class="col-lg-2 col-sm-2"></div>
		<div class="col-lg-10 col-sm-10"><h2>마이 페이지</h2></div>
		<div id="menuList" class="col-lg-2 col-sm-2">
			<div class="row"><br/></div>
			<div class="row">
				<div id="button1" class="col-lg-2 col-sm-2">
				<button type="button" class="btn btn-default btn-lg" OnClick="window.location='/test/Mypage_Reserve.do'">예약현황</button>
				</div>
			</div>
			<div class="row"><br/></div>
			<div class="row">
				<div id="button2" class="col-lg-2 col-sm-2">
				<button type="button" class="btn btn-default btn-lg" OnClick="window.location='/test/Mypage_UserInfo.do'">정보수정</button>
				</div>
			</div>
			<div class="row"><br/></div>
			<div class="row">
			<div id="button3" class="col-lg-2 col-sm-2">
				<button type="button" class="btn btn-default btn-lg" OnClick="window.location='/test/Mypage_Review.do'">후기목록</button>
			</div>
			</div>    
		</div>
	</div>
	
</body>
</html>