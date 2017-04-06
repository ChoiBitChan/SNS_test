<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="kr">

<head>

	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="description" content="">
	<meta name="author" content="">
	
	<title>S.N.S</title>
	
	<!-- Bootstrap Core CSS -->
	<link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
	
	<!-- Custom Fonts -->
	<link href="vendor/font-awesome/css/font-awesome.min.css"
		rel="stylesheet" type="text/css">
	<link
		href='https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800'
		rel='stylesheet' type='text/css'>
	<link
		href='https://fonts.googleapis.com/css?family=Merriweather:400,300,300italic,400italic,700,700italic,900,900italic'
		rel='stylesheet' type='text/css'>
	
	<!-- Plugin CSS -->
	<link href="vendor/magnific-popup/magnific-popup.css" rel="stylesheet">
	
	<!-- Theme CSS -->
	<link href="css/creative.min.css" rel="stylesheet">
	
	<!-- jQuery -->
	<link rel="stylesheet"
		href="http://code.jquery.com/ui/1.12.1/themes/smoothness/jquery-ui.css"
		type="text/css">
	<script src="vendor/jquery/jquery.min.js"></script>
	<script type="text/javascript"
		src="http://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	
	<!-- Bootstrap Core JavaScript -->
	<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
	
	<!-- Plugin JavaScript -->
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.3/jquery.easing.min.js"></script>
	<script src="vendor/scrollreveal/scrollreveal.min.js"></script>
	<script src="vendor/magnific-popup/jquery.magnific-popup.min.js"></script>
	
	<!-- Theme JavaScript -->
	<script src="js/creative.min.js"></script>

<!-- 달력 스타일 -->
<style>
.ui-datepicker {
	width: 100%;
	font-size: 30px;
}

.ui-datepicker select.ui-datepicker-month {
	width: 100%;
	font-size: 30px;
}

.ui-datepicker select.ui-datepicker-year {
	width: 100%;
	font-size: 30px;
}
</style>

</head>

<body id="page-top">

	

	<!-- tiles -->
	<%@include file="WEB-INF/view/tiles/navbar.jsp"%>
	<%@include file="WEB-INF/view/tiles/header.jsp"%>
	<%@include file="WEB-INF/view/tiles/body_main.jsp"%>
	<%@include file="WEB-INF/view/tiles/modal_login.jsp"%>
	<%@include file="WEB-INF/view/tiles/footer.jsp"%>


	<!-- 내가 입력한 javascirpt -->
	<script type="text/javascript">
		$('#more').on('click', function() {

			var url = 'more.do'
			var query = 'dum=1';

			$.ajax({
				type : "GET",
				url : url,
				data : query,
				success : function(data) {
					console.log(data);
					$('#portfolio').append(data);

				},
				error : function(e) {
					console.log(e.responseText);
				}

			})

		})

		$('#restaurant1').on('click', function() {
			//alert('asdf');

			//포트폴리오 초기화
			$('#portfolio').html("");

			//포트폴리오에 저장한 레스토랑 이미지를 배경화면으로 쓴다.

			//더 찾기 버튼 없애기
			$('#moreBtn').remove();

			var url = "reserve.do";
			var query = "imgs=as";

			$.ajax({
				type : "GET",
				url : url,
				data : query,
				success : function(data) {

					$('#portfolio').append(data);

				},
				error : function(e) {
					console.log(e.responseText);
				}

			})

		})

		$('#myPage').on('click', function() {

			$('#portfolio').html("");
			$('#moreBtn').remove();

			var url = "Mypage_Main.do"
			var query = "dup=userid";

			$.ajax({
				type : "GET",
				url : url,
				data : query,
				success : function(arg) {

					$('#portfolio').append(arg);

				},
				error : function(e) {
					console.log(e.responseText);
				}

			})

		})
	</script>
</body>
</html>
