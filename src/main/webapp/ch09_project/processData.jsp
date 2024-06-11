<%@ page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="com.javalab.vo.*" %>    
    
    <%
    // infoType 파라미터 추출
    String infoType = request.getParameter("infoType");
    String nextPage = "";
    
	//request 객체에 infoType 값 저장
	request.setAttribute("infoType", infoType);
	
    if("movie".equals(infoType)){
    	nextPage = "movieList.jsp";
    	
    	//영화 목록 생성
    	List<Movie> movieList = new ArrayList<>();
    	movieList.add(new Movie("영화1", "제작자1", 2020));
    	movieList.add(new Movie("영화2", "제작자2", 2021));
    	movieList.add(new Movie("영화3", "제작자3", 2022));
    	movieList.add(new Movie("영화4", "제작자4", 2023));
    	movieList.add(new Movie("영화5", "제작자5", 2024));
    	
    	request.setAttribute("movieList", movieList);
    	
    }else if("book".equals(infoType)){
    	nextPage = "bookList.jsp";
    	
    	List<Book> bookList = new ArrayList<>();
    	bookList.add(new Book("도서1", "작가1", 2020));
    	bookList.add(new Book("도서2", "작가2", 2021));
    	bookList.add(new Book("도서3", "작가3", 2022));
    	bookList.add(new Book("도서4", "작가4", 2023));
    	bookList.add(new Book("도서5", "작가5", 2024));
    	
    	request.setAttribute("bookList", bookList);
    	
    }else{
    	nextPage = "albumList.jsp";
    	
    	List<Album> albumList = new ArrayList<>();
    	albumList.add(new Album("엘범1", "제곡가1", 2020));
    	albumList.add(new Album("엘범2", "제곡가2", 2021));
    	albumList.add(new Album("엘범3", "제곡가3", 2022));
    	albumList.add(new Album("엘범4", "제곡가4", 2023));
    	albumList.add(new Album("엘범5", "제곡가5", 2024));
    	
    	request.setAttribute("albumList", albumList);
    }
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>processData.jsp</title>
</head>
<body>
	<jsp:forward page="<%=nextPage %>" />
</body>
</html>