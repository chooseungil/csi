<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="sessionChk.jsp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html><html><head><meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="common.css">
</head><body>

<table><caption>회원 목록</caption>
	<tr><th>아이디</th><th>이름</th><th>주소</th>
		<th>전화번호</th><th>가입일</th><th>탈퇴여부</th></tr>
<c:if test="${empty list }">
	<tr><th colspan="6">데이터가 없습니다</th></tr>
</c:if>
<c:if test="${not empty list }">
	<c:forEach var="member" items="${list }">
		<tr><td>${member.id }</td><td>${member.name}</td>
			<td>${member.address}</td><td>${member.tel}</td>
			<td>${member.reg_date}</td><td>${member.del}</td></tr>
	</c:forEach>
</c:if>
</table>
<div align="center">
<!-- 앞에 보여줄께 있어 -->
<c:if test="${startPage > PAGE_PER_BLOCK }">
	<button onclick="location.href='list.si?pageNum=${startPage-1}'">이전</button>
</c:if>
<c:forEach var="i" begin="${startPage}" end="${endPage}">
	<button onclick="location.href='list.si?pageNum=${i}'">${i}</button>
</c:forEach>
<!-- 아직 보여줄께 남아있다 -->
<c:if test="${endPage < totalPage}">
		<button onclick="location.href='list.si?pageNum=${endPage+1}'">다음</button>
</c:if>
</div>
</body>
</html>