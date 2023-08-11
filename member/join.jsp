<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html><html><head><meta charset="UTF-8">
<title>Insert title here</title></head><body>
	
<c:if test="${result == -1 }">		
	<script type="text/javascript">
		alert("아이디 중복인데 왜 입력해 혹시 바보 !!!");
		history.back();
	</script>
</c:if>
<c:if test="${result > 0}">	
<script type="text/javascript">
	alert("입력 성공 ㅋㅋ");
	location.href="loginForm.si";
</script>
</c:if>
<c:if test="${result == 0}">	
<script type="text/javascript">
	alert("에효 ㅠㅠ");
	history.go(-1);
</script>
</c:if>
</body>
</html>