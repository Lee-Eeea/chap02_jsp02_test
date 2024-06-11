<%@page import="java.net.URLDecoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
	<%
		// 쿠키 읽어서 userName 되어있는 쿠키를찾고 그 쿠키의 이름을 가지고 온다.
		
		// request 객체로부터 쿠키 전부 얻어오기
		Cookie[] cookies = request.getCookies();
		String userName = "손님";
		
		if(cookies != null) {
			//여러 쿠키 중에서 알맞는 쿠키 찾기
			for(Cookie cookie: cookies) {
				if(cookie.getName().equals("userName")){
					userName = URLDecoder.decode(cookie.getValue(), "utf-8"); // 인코딩한 방식 그대로 디코딩해서 가져옴
    				break;
				}
			}
		}
	%>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%-- <h3>환영합니다. <%= id %></h3> --%>
	<h3><%= userName %>님 여기는 메인 페이지입니다.</h3> <!-- userName에 쿠키 값이 들어가잇음 -->
	<br>
	
	<%
		// userName쿠키가 있는 경우, 손님이 아닌 경우
		if(!userName.equals("손님")){
	%>
	<button id="btnLogout">로그아웃</button>
	<%
		} else {
	%>
	<button id="btnLogin">로그인</button>
	<%
		}
	%>
	
	
	<script>
		// 로그인 버튼 클릭시 로그인폼으로 이동하는 자바스크립트 추가 	
		const id = document.querySelector("#btnLogin");		
		id.addEventListener("click", function() {
			// window 객체는 브라우저의 창이나 프레임과 관련된 정보를 제공하는 객체
			// location 객체는 현재 창에 대한 정보
			// href 속성은 이동해 갈 페이지의 url 설정
			// [요약] 해당 페이지로 이동
			window.location.href = "loginForm.jsp";
		});
	</script>
</body>
</html>