<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
       HttpSession ses = request.getSession();
    
       String userId = null;
       
       if(ses != null){
          userId = (String)ses.getAttribute("userId");
       }
    
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>getSession.jsp</title>
</head>
<body>
      <h3>세션 값 확인하기</h3>
      
      <%
         if(userId != null && !userId.isEmpty()){
      %>
         <p>세션에 저장된 사용자ID : <%= userId %></p>
      <%
         }else{
      %>   
         <p>세션이 없거나 세션에 저장된 사용자 정보가 없습니다.</p>
      <%
         }
      %>   
      
         
         
</body>
</html>