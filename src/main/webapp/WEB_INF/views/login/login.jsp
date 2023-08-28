<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>

    <title>로그인</title>
</head>

<body>
<jsp:include page="/WEB_INF/views/main/header.jsp"/><!-- header -->

    <div class="container mt-3 text-center">
        <div class="row mt-5">
            <div class="col-12 text-danger">
                <!-- 에러 메세지 -->
            </div>
        </div>
        <form action="login" method="POST">
            <h1 class="h3 mb-3 fw-normal">로그인 하세요</h1>
	        <div class="row mt-5">
	            <div class="col-12 text-danger">
	                ${REDIRECT_ATTR.error }
	            </div>
	        </div>
            <div class="form-floating">
                <input type="text" class="form-control" name="name" id="name" value="${REDIRECT_ATTR.user_id }" placeholder="Name" required>
                <label for="name">name</label>
            </div>
            <div class="form-floating mt-1">
                <input type="password" class="form-control" name="pwd" id="pwd" value="" placeholder="Password" required>
                <label for="pwd">pwd</label>
            </div>
            <button class="w-100 btn btn-lg btn-primary my-1" type="submit">로그인</button>
            <a class="w-100 btn btn-lg btn-primary my-1" href="/login/register">회원가입</a>
            <p class="mt-2 mb-3 text-muted">&copy; 2017–2022</p>
        </form>
    </div>

</body>

</html>