<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<link type="text/css" href="http://code.jquery.com/ui/1.10.3/themes/smoothness/jquery-ui.css" rel="stylesheet">
<script type="text/javascript" src="http://code.jquery.com/jquery-1.12.4.min.js"></script>
<script type="text/javascript" src="http://code.jquery.com/ui/1.10.3/jquery-ui.js"></script>

<script type="text/javascript">

var reserveTime= null ;


$(function(){
	  $( "#testDatepicker" ).datepicker({
		 
		  
	  })
	  
	  
	  //시간 입력 단추
	  $('#btn1').on('click',function(){
		  
		  var isHidden = $('#div1').is(":hidden");
			
			if(isHidden){
				$('#div1').show(100); //파라미터는 걸리는 시간.
			}else {
				$('#div1').hide(100);
			}
		  
		  
		  
	  });
	  
	  //시간 입력 단추 중 하나값만 받아오기
	  $('.timeBlock').on('click',function(){
		 
		  $('.timeBlock').css('background', '');
		  
		  $(this).css("background-color","red");
		   reserveTime = $(this).val();
		
	  })
	  
	
	  //sub 단추를 눌렀을 때
	  
	  $('#sub').on('click',function(){
		  
		  checkValue();
	  })
	  
	  
}) 
 
function checkValue(){
	  
	 
	
	 if(reserveTime ==null){
		 alert('시간을 선택해주세요.')
		 return;
	 }
	  
	  if($('#people').val()=='' ){
		 alert('인원을 선택해주세요.')
		 return;
	  }
	  
	
	 $('#reserveData').html('예약 날짜 : '+$( "#testDatepicker" ).val() + '&nbsp;'+ '예약 시간 : '+  reserveTime + '&nbsp;'+' 예약 인원 : ' + $('#people').val()) 
	  
} 

</script>

<br/><br/>
<!-- 예약할 레스토랑 소개 시작 -->
<div class="container-fluid">
<div class="col-md-6"><img alt="" src="img/portfolio/thumbnails/1.jpg"></div>
<div class="col-md-6">
<h1>Osteria Francescana</h1>
<blockquote>
  <p>레스토랑 Osteria Francescana은 미각과 시각을 동시에 충족시킬 수 있는 다양한 이탈리아 요리를 선보이는 곳입니다.</p>
  <p> 어디에서나 맛볼수 없는 이탈리아 정통 가정식을 여러분께 선보입니다. 기업행사, Party, Private Dining, Wedding, Catering 등 다양한 행사를 최상의 서비스로 즐기실 수 있습니다.
  Creative 요리의 대가인 알베르토 총괄 쉐프가 직접 기획하는 Osteria Francescana만의 창의적이고 특별한 메뉴를 경험해 보세요.</p> 
  <p> 특별한 날을 더욱 더 빛나게 하는 Special Menu, 각종 문화공연 및 브랜드와의 Collaboration Menu 등 다양한 행사 및 모임에 적합한 
  Menu를 고객님께 Customized된 서비스로 제공해 드립니다.</p>

</blockquote>
</div>
</div>
<!-- 예약할 레스토랑 소개 끝 -->
<hr>

<form action="" method="GET" onsubmit="checkValue();">
<!-- 예약 정보 컨테이너 시작 -->
<div class="container-fluid">
<div id="testDatepicker" class="col-md-6"></div>


<div class="col-md-6">
<input type="button" id="btn1" class="btn-lg btn-info" value="시간을 입력해주세요"><br/>
<div id="div1"  style= "display : none;">

<h3><mark>Lunch</mark></h3> <input type="button" class="timeBlock btn-lg" value="11:00"><input type="button" class="timeBlock btn-lg" value="12:00"><input type="button" class="timeBlock btn-lg" value="01:00"><input type="button" class="timeBlock btn-lg" value="02:00"><input type="button" class="timeBlock btn-lg" value="03:00"><br>

--------------------------------------------------------<br>

<h3><mark>Dinner</mark></h3> <input type="button" class="timeBlock btn-lg" value="05:00"><input type="button" class="timeBlock btn-lg" value="06:00"><input type="button" class="timeBlock btn-lg" value="07:00"><input type="button" class="timeBlock btn-lg" value="08:00"><br>
<input type="button" class="timeBlock btn-lg" value="09:00"><input type="button" class="timeBlock btn-lg" value="10:00">

</div>

<select id="people" class="form-control">
<option value="">인원을 선택해주세요</option>
<option value="2">2명</option>
<option value="3">3명</option>
<option value="4">4명</option> 
<option value="4">5명</option> 
</select>



<input type="button" id="sub" class="btn-lg btn-info" value="예약"><br>
<div id="reserveData"></div>
</div><!-- col-md-8 -->
</div><!-- 예약 정보 컨테이너 끝 -->

</form>
