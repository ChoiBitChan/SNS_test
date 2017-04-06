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

</head>
<body id="page-top">

	<!-- tiles -->
	<%@include file="./tiles/navbar.jsp"%>
	<%@include file="./tiles/header.jsp"%>
	    
    <section id="reserveSection">
	<jsp:useBean id="toDay" class="java.util.Date"/>
		<div class="container">
			<div class="col-lg-2 col-sm-2"></div>
			<div class="col-lg-10 col-sm-10"><h2>예약 현황</h2></div>
			
			<div id="menuList" class="col-lg-2 col-sm-2">
				<div class="row"><br/></div>
				<div class="row">
					<div id="button1" class="col-lg-2 col-sm-2">
						<button type="button" class="btn btn-default btn-lg">
							<a href="Mypage_Reserve.do">예약현황</a>
						</button>
					</div>
				</div>
				<div class="row"><br/></div>
				<div class="row">
					<div id="button2" class="col-lg-2 col-sm-2">
						<button type="button" class="btn btn-default btn-lg">
							<a href="Mypage_UserInfo.do">정보수정</a>
						</button>
					</div>
				</div>
				<div class="row"><br/></div>
				<div class="row">
					<div id="button3" class="col-lg-2 col-sm-2">
						<button type="button" class="btn btn-default btn-lg">
							<a href="Mypage_Review.do">후기목록</a>
						</button>
					</div>
				</div>
			</div>
	  		
	  		<div id="table" class="col-lg-10 col-sm-10">
	  		
			  	<table class="table">
					<thead>
						<tr>
					        <th>예약일자</th>
					        <th>업체명</th>
					        <th>상태창</th>
					        <th>예약취소</th>
					        <th>후기</th>
				      	</tr>
				    </thead>
				    <tbody id="tbody">
				        <c:forEach var="reserveList" items="${reserveList}">
							<tr>
								<td>
									<fmt:formatDate value="${reserveList.reserve_date}" var="reserve_date" type="both" pattern="yyyy-MM-dd HH:mm"/>
									${reserve_date}
								</td>
								<td>${reserveList.e_name}</td>
								<td>
									<c:if test="${reserveList.r_state==1}">
										승인대기
									</c:if>
									<c:if test="${reserveList.r_state==2}">
										예약완료
									</c:if>
									<c:if test="${reserveList.r_state==3}">
										취소요청
									</c:if>
									<c:if test="${reserveList.r_state==4}">
										이용완료
									</c:if>
									<c:if test="${reserveList.r_state==5}">
										취소완료
									</c:if>
										
								</td>
								<td>
									<fmt:parseDate value="${reserve_date}" var="reDay" pattern="yyyy-MM-dd HH:mm"/>
									<c:if test="${reDay.time - toDay.time > 0}">
										<c:if test="${reserveList.r_state==1 or reserveList.r_state==2}">
											<input type="button" id="btn_cancel" class="btn btn-info btn-sm" value="Cancel">
										</c:if>
									</c:if>
								</td>
								<td>
									<fmt:parseDate value="${reserve_date}" var="reDay" pattern="yyyy-MM-dd HH:mm"/>
									<c:if test="${reDay.time - toDay.time < 0}">
										<c:if test="${reDay.time - toDay.time > -3*(1000*60*60*24)}">
											<input type="button" id="btn_write" class="btn btn-info btn-sm" data-toggle="modal" data-target="#write" value="Write">
										</c:if>
									</c:if>
								</td>
							</tr>
						</c:forEach>
				    </tbody>
				 </table>
				 
				 <div id="moreBtn" class="container-fluid">
				     <div class="col-md-5"></div>
				     <div id="more" class="btn btn-info btn-sm col-md-2">
				          <span class="glyphicon glyphicon-chevron-down"></span> 더보기
				     </div>
				     <div class="col-md-5"></div>
				 </div>
				 
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
    
    <!-- 모달 후기글쓰기 시작 -->
	<div class="modal fade" id="write" role="dialog">
		<div class="modal-dialog">
	      	<!-- Modal content-->
	    	<div class="modal-content">
		        <div class="modal-header">
		          	<button type="button" class="close" data-dismiss="modal">&times;</button>
		          	<h4 class="modal-title">후기 글 작성</h4>
		        </div>
		        <div class="modal-body">
		        
		        
		        
		          	<form class="form-horizontal">
					    <div class="form-group">
					    	<div class="col-lg-2 col-sm-2"></div>
						    <div class="col-lg-8 col-sm-8">
						    	<label for="comments">이미지</label>     
						        <input type="file" class="form-control" id="file">
						    </div>
					    </div>
					    
					    <div class="form-group">
					   		<div class="col-lg-2 col-sm-2"></div>
					      	<div class="col-lg-8 col-sm-8">
					      		<label for="comments">코멘트</label>   
					    		<textarea class="form-control" rows="5" id="comments"></textarea>
					      	</div>
					    </div>
					    
					    <div class="form-group">
					   		<div class="col-lg-2 col-sm-2"></div>
					      	<div class="col-lg-8 col-sm-8">
					      		<label for="comments">평점</label><br/> 
					    		<label class="radio-inline">
							      <input type="radio" name="ranking" id="5">5
							    </label>
							    <label class="radio-inline">
							      <input type="radio" name="ranking" id="4">4
							    </label>
							    <label class="radio-inline">
							      <input type="radio" name="ranking" id="3">3
							    </label>
							    <label class="radio-inline">
							      <input type="radio" name="ranking" id="2">2
							    </label>
							    <label class="radio-inline">
							      <input type="radio" name="ranking" id="1">1
							    </label>
					      	</div>
					    </div>
	  				</form>
		          	
		          	
		          	
		        </div>
		        <div class="modal-footer">
		        	<button type="button" class="btn btn-default" data-dismiss="modal">Submit</button>
		          	<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
		        </div>
	      	</div>
	    </div>
  	</div>
	<!-- 모달 후기글쓰기 끝 -->	
	
	
	
	<script type="text/javascript">
	
	var end_rno = 10;
	
	$('#more').on('click',function(){
		var url='More_Reserve.do'
		
		end_rno += 10;
		end_rno.toString();
		console.log(end_rno);
		
		var query = 'end_rno=' + end_rno;
		
		
		$.ajax({
			 type:"GET"
			 ,url:url
			 ,data:query
			 ,dataType:"text"
			 
			 ,success:function(data){
				 
				 $('#tbody').html("");
				 $('#tbody').append(data);
				 
			 }
			 ,error:function(e){
			  console.log(e.responseText);
			 }
			
		})
		
	})
    
    </script>
	
	
    
    <div id="result"></div>
    
	
	<%@include file="./tiles/modal_login.jsp"%>
	<%@include file="./tiles/footer.jsp"%>
	
</body>
</html>