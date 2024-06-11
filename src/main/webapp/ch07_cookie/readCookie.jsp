<%@page import="java.net.URLDecoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%
    	//request 기본 객체로부터 쿠키 얻어오기
    	Cookie[] cookies = request.getCookies();
    	String userName = "없음";
    	
    	if(cookies != null){
    		// 쿠키가 여러개 있을 수 있기 때문에 반복문으로 쿠키를 하나씩 돌려봄
    		for(Cookie cookie: cookies) {
    			if(cookie.getName().equals("userName")){ //쿠키 이름이 'userName'인 것을 찾음
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
	<h3>쿠키에 저장된 사용자 이름 : <%= userName %></h3>
</body>
</html>