<%@ page language="java" contentType="text/html; charset=UTF-8" %>
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