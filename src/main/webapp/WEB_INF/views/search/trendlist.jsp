
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%-- JSTL 버젼으로 바뀌니, import 의 번잡함도 사라진다!  JAVA 변수 선언도 사라진다! --%>
<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.bundle.min.js"></script>

    <title>목록</title>
</head>

<body>
<jsp:include page="/WEB_INF/views/main/header.jsp"/>

    <div class="container mt-3">
        <table class="table table-hover">
            <thead class="table-success">
                <tr>
                    <th>카테고리</th>
                    <th>가중치(카테고리별 합산)</th>
                </tr>
            </thead>
            <tbody>
			<c:forEach var="dto" items="${list }">
                <tr>
                    <td><a href="category?uid=${dto.c_uid }">${dto.c_uid }</a></td>
                    <td>${dto.t_weight }</td>
                </tr>
			</c:forEach>
            </tbody>
        </table>
    </div>

</body>

</html>




























    