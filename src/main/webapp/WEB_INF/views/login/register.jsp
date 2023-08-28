<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<head>
	<meta charset="utf-8">
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
	
	<title>회원가입</title>
</head>

<style>
form label em {
	font-size : 15px;
	color: red;
	font-weight: 800;
}
</style>

<body>
<jsp:include page="/WEB_INF/views/main/header.jsp"/>
	<div class="container mt-3">

		<div class="row mt-5">
			<div class="col-12 text-center">
				<h1>회원가입</h1>
			</div>
		</div>
		<div class="row mt-5">
			<div class="col-12 text-danger">
				${REDIRECT_ATTR.error }
			</div>
		</div>
		<div class="row">		
			<form method="POST"action="/joinOk">
				<div class="form-group mt-3">
					<label for="user_id"><em> * </em> 아이디</label> <input type="text"
						class="form-control"name="id"
						placeholder="아이디" required>
				</div>
				<div class="form-group mt-3">
					<label for="user_pw"><em> * </em> 비밀번호</label> <input type="password"
						class="form-control"name="pw"
						placeholder="비밀번호" value="" required>
				</div>
				<div class="form-group mt-3">
					<label for="user_email"><em> * </em> 비밀번호 확인</label> <input type="email"
						class="form-control"name="email" placeholder="비밀번호 확인" required>
				</div>
				<button type="submit" class="w-100 btn btn-lg btn-primary mt-3">회원가입</button>
			</form>
			
		</div>

	</div>
</body>

</html>
