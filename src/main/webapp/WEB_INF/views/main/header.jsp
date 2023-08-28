<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE html>
<html lang="ko">

<head>
<title>NavBar</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
</head>

<body>

	<nav class="navbar navbar-expand-sm navbar-dark bg-dark">
		<div class="container-fluid">
			
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#mynavbar">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="mynavbar">
				<ul class="navbar-nav me-auto">

					<!-- 누구에게나 보이는 메뉴 -->
					<li class="nav-item" TODO=""><a class="nav-link"
						href="../search/list?user_uid=1">개인별 리스트</a></li>
					<li class="nav-item" TODO=""><a class="nav-link"
						href="/search/trendlist">트렌드 리스트</a>
					</li>
					<li class="nav-item" TODO=""><a class="nav-link"
						href="/search/realtime_list">실시간 검색어</a>
					</li>
				</ul>


				<c:choose>
					<c:when test="${empty sessionScope.PRINCIPAL }">
						<!-- 로그인 안했을때는 로그인 form 보여주기 -->
						<a class="btn btn-primary" type="submit"
							href="/login/login">Login</a>
					</c:when>
					<c:otherwise>
						<!-- 로그인 했을때는 마이페이지 / 로그아웃 form 보여주기 -->
						<a class="btn btn-primary" type="submit"
							href="${pageContext.request.contextPath }/mypage/mypage?user_idx=${sessionScope.PRINCIPAL.user_idx}">마이페이지</a>
						<form action="${pageContext.request.contextPath }/user/logout"
							method="POST" TODO="">
							<!--TODO : 로그아웃후 다시 돌아오기 -->
							<span class="d-flex"> <span class="text-light p-2"><span
									TODO="">${sessionScope.PRINCIPAL.user_id }(${sessionScope.PRINCIPAL.user_name })</span>
									님 환영합니다</span> <span><button class="btn btn-danger"
										type="submit">Logout</button></span>
							</span>
						</form>
					</c:otherwise>
				</c:choose>


			</div>
		</div>
	</nav>
</body>

</html>

