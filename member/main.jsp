<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="sessionChk.jsp" %>
<!DOCTYPE html><html><head><meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css"> @import url("common.css"); </style>
<script type="text/javascript">
	function del() {
		let ch = confirm("정말로 탈퇴하시겠습니까 ?");
		if (ch) location.href="delete.si";
		else alert("삭제가 취소 되었습니다");
	}
	function chk() {
		//목록은 관리자 볼 수 있다
		/* javascript에서 자바변수를 사용할 때는 큰 따움표로 묶어야 한다 */
		let id = "${member.id}";
		if(id !='master') {
			alert('리스트를 볼 권한이 없습니다');
			return;
		}else location.href = "list.si";
		
		
	}
	
</script>
</head><body>
<table><caption>${member.name }님 회원관리</caption>
	<tr><th><button onclick="location.href='updateForm.si'">
		회원정보 수정</button></th></tr>
	<tr><th><button onclick="del()">회원탈퇴</button></th></tr>
	<tr><th><button onclick="chk()">회원목록</button></th></tr>
	<tr><th><button onclick="location.href='logout.si'">
		로그 아웃</button></th></tr>
</table>
</body>
</html>