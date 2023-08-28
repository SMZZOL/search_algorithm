<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%-- JSTL 을 사용하니 import 의 번잡함도 사라지고 JAVA 변수, JAVA코드도 사라진다! --%>
<c:choose>
	<c:when test="${empty list || fn:length(list) == 0 }">
		<script>
			alert("해당 정보가 삭제되거나 없습니다");
			history.back();
		</script>
	</c:when>

	<c:otherwise>
		<c:set var="dto" value="${list[0] }"/>

<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.bundle.min.js"></script>

    <title>조회 - ${dto.subject }</title>
</head>

<script>
function chkDelete(){
	var answer = confirm("삭제하시겠습니까?");
	if(answer){
		document.forms['frmDelete'].submit();
	}
}

</script>

<body>
    <div class="container mt-3">
        <h2>조회 - ${dto.subject }</h2>
        <hr>
        <div class="mb-3 mt-3 clearfix">
            <span class="float-start me-2">uid: ${dto.uid }</span>
            <span class="float-end ms-4">작성일: ${dto.regDateTime }</span>
            <span class="float-end">조회수: ${dto.viewCnt }</span>
        </div>

        <section>
        	<form name="frmDelete" action="deleteOK" method="POST">
        		<input type="hidden" name="uid" value="${dto.uid }">
        	</form>
            <div class="mb-3">
                <label for="name">작성자:</label>
                <div class="border bg-light rounded p-2" >${dto.name }</div>
            </div>    
            <div class="mb-3 mt-3">
                <label for="subject">제목:</label>
                <div class="border bg-light rounded p-2" >${dto.subject }</div>
            </div>    
            <div class="mb-3 mt-3">
                <label for="content">내용:</label>
                <div class="border bg-light rounded p-2" >${dto.content }</div>
            </div>    

            <a class="btn btn-outline-dark" href="update?uid=${dto.uid }">수정</a>
            <a class="btn btn-outline-dark" href="list">목록</a>
            <button type="button" class="btn btn-outline-dark" onclick="chkDelete()">삭제</button>
            <a class="btn btn-outline-dark" href="write">작성</a>

        </section>
    </div>
</body>

</html>

	</c:otherwise>
</c:choose>



























