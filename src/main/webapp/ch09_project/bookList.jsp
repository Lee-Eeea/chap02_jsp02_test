<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*, java.net.URLEncoder, com.javalab.vo.*" %>
<%
    //영화 목록 추출하기
    List<Book> bookList = (List<Book>) request.getAttribute("bookList");
    //문화 컨텐츠 차입 추출하기
    String infoType = (String) request.getAttribute("infoType");
%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>bookList.jsp</title>
</head>
<body>
    <h3>책목록</h3>
    <table border="1">
        <tr>
            <th>목록</th>
            <th>저자</th>
            <th>출시년도</th>
        </tr>
        <%
            if (bookList != null) {
                for (Book book : bookList) {
                    String queryString = "title=" + URLEncoder.encode(book.getTitle(), "utf-8") +
                                         "&author=" + URLEncoder.encode(book.getAuthor(), "utf-8") + 
                                         "&publicationYear=" + book.getPublicationYear();
        %>
        <tr>
            <td><a href="bookDetail.jsp?<%= queryString %>"> <%= book.getTitle() %></a></td>
            <td><%= book.getAuthor() %></td>
            <td><%= book.getPublicationYear() %></td>
        </tr>
        <%
                } // end for
            } else {
        %>
        <tr>
            <td colspan="3">책 목록이 없습니다.</td>
        </tr>
        <%
            }
        %>
    </table>

    <button onclick="location.href='selectInfo.jsp?infoType=<%= infoType %>'">컨텐츠 선택</button>
</body>
</html>
