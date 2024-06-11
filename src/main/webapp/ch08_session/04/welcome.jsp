<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page session="true" %>

	<%
		//새션에서 사용자 ID 조회하기
		HttpSession ses = request.getSession(false);
		String userId = "";
		if(ses != null){
			userId = (String)ses.getAttribute("userId");
		}
	%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>welcome.jsp</title>
</head>
<body>
	<%
		if(userId != null){
	%>
		<h3>환영합니다.<%= userId %> 님</h3>
		<button type="button" id="btnLogout">로그아웃</button>
	<%
		}
	%>
	
	<script>
		const btnId = document.querySelector("#btnLogout");
		btnId.addEventListener("click", function(){
			window.location.href="logout.jsp";
		})
	</script>
</body>
</html>