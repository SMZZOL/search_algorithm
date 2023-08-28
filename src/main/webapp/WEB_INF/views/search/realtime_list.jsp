
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
<%int i =0;%>
<jsp:include page="/WEB_INF/views/main/header.jsp"/>
    <div class="container mt-3">
        </form>    
        <table class="table table-hover">
            <thead class="table-success">
                <tr>
                	<th>순위</th>
                    <th>검색어</th>
                    <th>카테고리num</th>
                </tr>
            </thead>
            <tbody>
			<c:forEach var="dto" items="${list }">
                <tr>
                	<td><% i++; %><%=i %>   </td>
                    <td><a href="searchList?cat_keyvalue=${dto.cat_keyvalue }">${dto.cat_keyvalue }</a></td>
                    <td>${dto.c_uid }</td>
                </tr>
			</c:forEach>
            </tbody>
        </table>
    </div>

</body>

</html>




























    