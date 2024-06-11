<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <!-- 
    	[1] jsp:include 액션 태그
    	
    	* flush : jsp페이지는 기본적으로 페이지의 내용을 버퍼에 저장한다.
    			  저장한 내용이 8kb가 넘어가면 그때서야 버퍼의 내용을 웹브라우저에게 전송한다.
    			   
    	
    	1. "실행 시에" 현재 페이지에서 다른 페이지를 포함시킨다.
    		다른 페이지에 내용이 수정될 경우 수정 된 사항이 즉시 반영된다.
    		
    	2. flush="false"
    	   현재 페이지에서 제어를 second.jsp페이지로 이동하기 전에 부모의 html이 버퍼에 쌓이게 되는데
    	   이 때 이 내용을 웹브라우저에게 전송하고 자식페이지로 가는 게 아니라 버퍼에 그대로 쌓아둔 채
    	   자식페이지로 제어가 이동된다. 자식의 내용이 모두 처리가 되면 자식의 html 내용도 버퍼에 저장한다.
    	   그리고 제어가 부모에게로 돌아온다.
    	   돌아와서, 부모의 나머지 부분을 처리하고 그 부분도 버퍼에 쌓아둔다. 최종적으로 부모와 자식의 html이
    	   모두 버퍼에 쌓이면 그 때 flush한다. (부모와 자식 페이지가 한번에 보이게됨. 실무에서는 속도때문에 조정함)    
    	   
    	[2] @ include file="포함할 파일" : include 디렉티브 (지시자)
    	
    	1. 다른 페이지를 포함하는데 컴파일 타임에 포함될 자식 페이지의 내용을 부모에게 포함시킨다.
	   	2. 컴파일 타임에 자식의 내용이 들어오기 때문에 자식이 변경되어도 그 부분이 반영되지 않는다. 	
     -->
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>first</title>
	<style>
		.container {
			display: flex;
			flex-direction: column;
		}
		.first {
			padding: 60px;
			text-align: left;
			background: #1abc9c;
			color: white;
			font-size: 1em;
		}
	</style>
</head>
<body>
	<h2>jsp:include 액션 태그 예제</h2>
	<div class="container">
		<div class="first">
			<h3>여기는 포함하는 부모 페이지입니다.</h3>
		</div>
		
		<div>
			<jsp:include page="second.jsp" flush="false"></jsp:include>
		</div>
		
		<div class="first">
			<h3>여기는 포함하는 부모 페이지입니다.</h3>
		</div>
	</div>
</body>
</html>