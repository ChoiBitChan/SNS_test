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
    <link href="vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href='https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Merriweather:400,300,300italic,400italic,700,700italic,900,900italic' rel='stylesheet' type='text/css'>

    <!-- Plugin CSS -->
   <link href="vendor/magnific-popup/magnific-popup.css" rel="stylesheet">
 
    <!-- Theme CSS -->
    <link href="css/creative.min.css" rel="stylesheet">
    
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
        </div>
        <!-- 헤더 첫번째 row 끝-->
        
    </header>

    
	<!-- 레스토랑 표시부분 시작 -->
    <section class="no-padding" id="portfolio">
        <div class="container-fluid">
            <div class="row no-gutter popup-gallery">
                <div id="restaurant1" class="col-lg-4 col-sm-6">
                    <div class="portfolio-box">
                        <img src="img/portfolio/thumbnails/1.jpg" class="img-responsive" alt="">
                        <div class="portfolio-box-caption">
                            <div class="portfolio-box-caption-content">
                                <div class="project-category text-faded">
                                    Category
                                </div>
                                <div class="project-name">
                                    Project Name
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-sm-6">
                    <a href="img/portfolio/fullsize/2.jpg" class="portfolio-box">
                        <img src="img/portfolio/thumbnails/2.jpg" class="img-responsive" alt="">
                        <div class="portfolio-box-caption">
                            <div class="portfolio-box-caption-content">
                                <div class="project-category text-faded">
                                    Category
                                </div>
                                <div class="project-name">
                                    Project Name
                                </div>
                            </div>
                        </div>
                    </a>
                </div>
                <div class="col-lg-4 col-sm-6">
                    <a href="img/portfolio/fullsize/2.jpg" class="portfolio-box">
                        <img src="img/portfolio/thumbnails/2.jpg" class="img-responsive" alt="">
                        <div class="portfolio-box-caption">
                            <div class="portfolio-box-caption-content">
                                <div class="project-category text-faded">
                                    Category
                                </div>
                                <div class="project-name">
                                    Project Name
                                </div>
                            </div>
                        </div>
                    </a>
                </div>
                <div class="col-lg-4 col-sm-6">
                    <a href="img/portfolio/fullsize/4.jpg" class="portfolio-box">
                        <img src="img/portfolio/thumbnails/4.jpg" class="img-responsive" alt="">
                        <div class="portfolio-box-caption">
                            <div class="portfolio-box-caption-content">
                                <div class="project-category text-faded">
                                    Category
                                </div>
                                <div class="project-name">
                                    Project Name
                                </div>
                            </div>
                        </div>
                    </a>
                </div>
                <div class="col-lg-4 col-sm-6">
                    <a href="img/portfolio/fullsize/5.jpg" class="portfolio-box">
                        <img src="img/portfolio/thumbnails/5.jpg" class="img-responsive" alt="">
                        <div class="portfolio-box-caption">
                            <div class="portfolio-box-caption-content">
                                <div class="project-category text-faded">
                                    Category
                                </div>
                                <div class="project-name">
                                    Project Name
                                </div>
                            </div>
                        </div>
                    </a>
                </div>
                <div class="col-lg-4 col-sm-6">
                    <a href="img/portfolio/fullsize/6.jpg" class="portfolio-box">
                        <img src="img/portfolio/thumbnails/6.jpg" class="img-responsive" alt="">
                        <div class="portfolio-box-caption">
                            <div class="portfolio-box-caption-content">
                                <div class="project-category text-faded">
                                    Category
                                </div>
                                <div class="project-name">
                                    Project Name
                                </div>
                            </div>
                        </div>
                    </a>
                </div>
            </div>
        </div>
    </section>
    
  <!-- 레스토랑 표시부분 끝 -->  
   
    <!-- 더보기 표시부분 (조건 : 보여줄 레스토랑이 6개 이상인 경우)-->
    <div id="moreBtn" class="container-fluid">
     <div class="col-md-5"></div>
     <div id="more" class="btn btn-info btn-lg col-md-2">
          <span class="glyphicon glyphicon-chevron-down"></span> 더보기
     </div>
     <div class="col-md-5"></div>
     </div>
     
    <br/><br/><br/>  
  	
  	 <!-- 더미 레스토랑 파일들 시작 -->
  
  <!-- 더미 레스토랑 파일들 끝 -->
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
   
   
    <!-- 모달 로그인 시작 -->
	<div class="modal fade" id="Login" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	  <div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
				<h4 class="modal-title" id="myModalLabel">로그인</h4>
			</div>
			<div class="modal-body">
			<form accept-charset="UTF-8" role="form" method="post" action="">
				<div class="form-group">
					<label for="username">아이디</label>
					<input name="user_id" value='' id="username" placeholder="UserID" type="text" class="form-control" required autofocus/>
				</div>
				<div class="form-group">
					<label for="password">비밀번호</label>
					<input name="password" id="password" value='' placeholder="Password" type="password" class="form-control" required />
				</div>
				<div class="form-group">
					<input type="submit" class="btn btn-lg btn-primary btn-block" value="Login" />
				</div>
					<input type="button" class="btn btn-lg btn-primary btn-block" value="비밀번호 찾기" />
				<hr />
				<div class="form-group">
					<a href="sign_up.html" class="btn btn-default btn-block m-t-md"> 회원가입</a>
				</div>
			</form>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
			</div>
		</div>
	  </div>
	</div>
	<!-- 모달 로그인 끝 -->	
    
	
	
    <!-- jQuery -->
    <link rel="stylesheet" href="http://code.jquery.com/ui/1.12.1/themes/smoothness/jquery-ui.css" type="text/css">
    <script src="vendor/jquery/jquery.min.js"></script>
	<script type="text/javascript" src="http://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
    <!-- Bootstrap Core JavaScript -->
    <script src="vendor/bootstrap/js/bootstrap.min.js"></script>

    <!-- Plugin JavaScript -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.3/jquery.easing.min.js"></script>
    <script src="vendor/scrollreveal/scrollreveal.min.js"></script>
    <script src="vendor/magnific-popup/jquery.magnific-popup.min.js"></script>

    <!-- Theme JavaScript -->
    <script src="js/creative.min.js"></script>
	
	
	
	
	
	
<style>
.ui-datepicker{ width:100%; font-size: 30px;  }
.ui-datepicker select.ui-datepicker-month{ width:100%;font-size: 30px; }
.ui-datepicker select.ui-datepicker-year{ width:100%; font-size: 30px; }

</style>
	
	
	
	<!-- 내가 입력한 javascirpt -->
	<script type="text/javascript">
	
	$('#more').on('click',function(){
		
		var url='more.do'
		var query='dum=1';
		
		$.ajax({
			 type:"GET"
			 ,url:url
			 ,data:query
			 ,success:function(data){
				console.log(data);
			  $('#portfolio').append(data); 
			  
			 }
			 ,error:function(e){
			  console.log(e.responseText);
			 }
			
		})
		
	})
	
	
	$('#restaurant1').on('click',function(){
		//alert('asdf');
	
		
		
		//포트폴리오 초기화
		$('#portfolio').html("");
		
		//포트폴리오에 저장한 레스토랑 이미지를 배경화면으로 쓴다.
		
		
		
		//더 찾기 버튼 없애기
		$('#moreBtn').remove();
		
		
		var url="reserve.do";
		var query="imgs=as";
		
		$.ajax({
			 type:"GET"
			 ,url:url
			 ,data:query
			 ,success:function(data){
				
			  
			  
			  
			  $('#portfolio').append(data); 
			  
			 }
			 ,error:function(e){
			  console.log(e.responseText);
			 }
			
		})
		
		
	})
	
	
	$('#myPage').on('click',function(){
	
		$('#portfolio').html("");
		$('#moreBtn').remove();
		
		var url="Mypage_Main.do"
		var query="dup=userid";
		
		$.ajax({
			type:"GET"
			,url:url
			,data:query
			,success:function(arg){
				
				$('#portfolio').append(arg);
				
				
			}
		 	,error:function(e){
			  console.log(e.responseText);
			 }
			
			
			
		})
		
		
	})
	
	
	
	
	</script>
	
<!-- footer 추가 -->	
<%@include file="footer.jsp"%>

</body>

</html>
    