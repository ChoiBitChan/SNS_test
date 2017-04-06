<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>  
<!DOCTYPE html>
<html>
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
    <link href="vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href='https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Merriweather:400,300,300italic,400italic,700,700italic,900,900italic' rel='stylesheet' type='text/css'>

    <!-- Plugin CSS -->
   <link href="vendor/magnific-popup/magnific-popup.css" rel="stylesheet">
 
    <!-- Theme CSS -->
    <link href="css/creative.min.css" rel="stylesheet">
    
    <!-- Table -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
 	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body id="page-top">
	<!-- 네이게이션 바 시작 -->
    <nav id="mainNav" class="navbar navbar-default navbar-fixed-top">
        <div class="container-fluid">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span> Menu <i class="fa fa-bars"></i>
                </button>
                <a class="navbar-brand page-scroll" href="#page-top">S.N.S</a>
            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav navbar-right">
                    <li>
                         <input type="button" class="page-scroll btn btn-info btn-lg" data-toggle="modal" data-target="#Login" value="Login">
                    </li>
                    <li>
                         <input type="button" id="myPage" class="page-scroll btn btn-info btn-lg" value="MyPage">
                    </li>
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container-fluid -->
    </nav>
    
	<!-- 네이게이션 바 끝 -->
	    
	<!-- 헤더 시작 -->    
    <header>
    	
    	<!-- 헤더 첫번째 row 시작-->
        <div class="header-content row">
            
         <!-- 첫번째 row의 col-md-4 시작 -->   
            <div class="header-content-inner col-md-4" >
               <h1 id="homeHeading">S.N.S<br/><small>Stop no Show<br> 레스토랑 예약 프로그램!!</small></h1>
            </div>
             <!-- 첫번째 row의 col-md-4 끝 -->   
            <!-- 첫번째 row의 col-md-8 시작 -->   
            <div class="col-md-8">
            <br/><br/><br/><br/>
            <form class="form-inline">          
               <select class="form-control">
                <option value="">지역선택</option>
                <option value="서울">서울</option>
                <option value="경기">경기</option>
                <option value="인천">인천</option>
                </select>
                <select class="form-control">
                <option value="">인원선택</option>
                <option value="2">2명</option>
                <option value="3">3명</option>
                <option value="4">4명</option>
                 <option value="5">5명</option>
                </select> 
                <select class="form-control">
                <option value="">요일선택</option>
                <option value="월">월</option>
                <option value="화">화</option>
                <option value="수">수</option>
                <option value="목">목</option>
                <option value="금">금</option>
                <option value="토">토</option>
                <option value="일">일</option>
                </select><br/><br/>
                <input type="text" class="form-control" id="type" placeholder="요리 타입을 입력해주세요.">
                <input type="text" class="form-control" id="company" placeholder="업체명을 입력해주세요.">&emsp;<a style="color:blue;font-size: 20px">search</a>
               </form>
            </div>
           <!-- 첫번째 row의 col-md-8 끝-->   
        </div><!-- 헤더 첫번째 row 끝-->
    </header>
    
    
    
    <section id="reviewSection" style="height: 800px ">
    	<div class="container">
		<div class="col-lg-2 col-sm-2"></div>
		<div class="col-lg-10 col-sm-10"><h2>후기목록</h2></div>
		
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
  		
  		<div id="table" class="col-lg-10 col-sm-10">
  		
		  		<table class="table">
					<thead>
						<tr>
					        <th>작성일자</th>
					        <th>평점</th>
					        <th>업체명</th>
					        <th>후기글</th>
					        <th>수정</th>
					        <th>삭제</th>
				      	</tr>
				    </thead>
				    <tbody>
				        <c:forEach var="reviewList" items="${reviewList}">
							<tr>
								<td>
									<fmt:formatDate value="${reviewList.write_date}" var="write_date" type="both" pattern="yyyy-MM-dd"/>
									${write_date}
								</td>
								<td>${reviewList.ranking}</td>
								<td>${reviewList.e_name}</td>
								<td>${reviewList.comments}</td>
								<td>
									<input type="button" id="btn_modify" class="btn btn-info btn-sm" value="Modify">
								</td>
								<td>
									<input type="button" id="btn_delete" class="btn btn-info btn-sm" value="Delete" OnClick="window.location='/test/Review_Delete.do?comments=${reviewList.comments}&&userid=${reviewList.userid}&&write_date=${write_date}'">
								</td>
							</tr>
						</c:forEach>
				    </tbody>
			 	</table>
		 	</div>
		</div>
	</section>
	
	
	
	
	
	<aside class="bg-dark">
        <div class="container text-center">
            <div class="call-to-action">
                <a href="" class="btn btn-info btn-xl sr-button"><h1>업체 신청 Click!!</h1></a>
            </div>
        </div>
    </aside>

    <section id="contact">
        <div class="container">
            <div class="row">
                <div class="col-lg-8 col-lg-offset-2 text-center">
                    <h2 class="section-heading">문의사항</h2>
                    <hr class="primary">
                    <p>궁금하신 사항이 있으시면 전화나 이메일을 이용해주세요.</p>
                </div>
                <div class="col-lg-4 col-lg-offset-2 text-center">
                    <i class="fa fa-phone fa-3x sr-contact"></i>
                    <p>123-456-6789</p>
                </div>
                <div class="col-lg-4 text-center">
                    <i class="fa fa-envelope-o fa-3x sr-contact"></i>
                    <p><a href="mailto:your-email@your-domain.com">feedback@startbootstrap.com</a></p>
                </div>
            </div>
        </div>
    </section>
    <!-- footer 추가 -->	
	<%@include file="footer.jsp"%>
	
	
</body>
</html>