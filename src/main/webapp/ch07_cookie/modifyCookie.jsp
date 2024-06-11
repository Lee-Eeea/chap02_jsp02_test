<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%
    	// 새로운 사용자
    	String newUserName = "홍 길 동";
    	String encodedName = URLEncoder.encode(newUserName, "utf-8");
    	
    	// 기존 쿠키 이름으로 새로운 쿠키 생성, 하지만 이름은 다르게
    	Cookie userCookie = new Cookie("userName", encodedName);
    	
    	// 쿠키 유효기간
    	userCookie.setMaxAge(3600);
    	
    	// response 기본 객체의 addCookie 메소드를 통해서 쿠키 전송
    	// 응답 헤더의 Set-Cookie 헤더가 추가되어 클라이언트에게 응답으로 세팅되어 전송된다.
    	response.addCookie(userCookie);
    	
    	// 쿠키 확인은 콘솔창 > 애플리케이션 > 쿠키
    %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>modifyCookie</title>
</head>
<body>
	<h3>쿠키 값이 변경되었습니다.</h3>
</body>
</html>