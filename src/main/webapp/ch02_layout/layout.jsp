<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>layout.jsp</title>
	<style>
		.container {
			display:flex; /* 플렉스 컨테이너 */
			flex-direction: column; /* 주축: 세로방향 */
			height: 100vh; /* 디바이스의 높이를 100% 모두 차지*/
			margin: 3px;
		}	
		.header, .footer, .sidebar, .main-content {
			margin: 3px;
		}
		.header {
			flex: 0 1 auto; /* 부모로부터 차지할 높이 */
			padding: 10px;
			text-align: center;
			background: #1abc9c;
			color: white;
		}
		.content{
			flex: 1 1 80%;
			display: flex;
		}
		.sidebar{
			flex: 0 1 20%; /* content 전체 넓이 중에서 20%만큼 차지 */
			/* flex: 1 1 auto; */
			padding: 10px;
			background: #3498db;
			color: white;
		}
		.main-content{
			flex: 0 1 80%; /* content 전체 넓이 중에서 80%만큼 차지 */
			/* flex: 4 1 auto;  - 이렇게 줘도 같은 너비 비율이 됨*/
			padding: 10px;
			background: #e74c3c;
			color: white;
		}
		.footer {
			flex: 0 1 auto; /* 0 - 한줄 */
			display: flex;
			padding: 10px;
			text-align: center;
			background: #f1c40f;
			color: black;
			justify-content: center;
			align-item: center;
		}
		.footer > a {
			margin: 0 10px;
			color: black;
			text-decoration: none;
		}
			
		
	</style>
</head>
<body>
	<div class="container">
		<jsp:include page="./include/header.jsp" /> <!-- 닫는태그'/'가 필요함 -->
		<div class="content">
			<jsp:include page="./include/sidebar.jsp" />
			<jsp:include page="./include/main.jsp" />
		</div>
		<jsp:include page="./include/footer.jsp" />
	</div>
</body>
</html>