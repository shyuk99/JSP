<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<h3>경로 공부하기</h3>
	
	<!-- 1. a태그로 jspTag폴더에 include페이지로 상대경로, 절대경로 -->
	
	<!-- 2. MyServlet 맵핑경로는 /JSPBasic/apple 이다. 여기서 상대경로 이동 -->
	
	<!-- 3. html안에 있는 이미지파일을 img태그를 써서 상대경로, 절대경로 -->
	
	<a href = "../../jspTag/include.jsp">상대경로</a>
	<a href = "/JSPBasic/jspTag/include.jsp">절대경로</a>
	
	<a href = "../../apple">상대경로</a>
	<a href = "/JSPBasic/apple">절대경로</a>
	
	<img alt = "제목" src = "../../html/img/1.jpg">상대경로
	<img alt = "제목" src = "/JSPBasic/html/img/1.jpg">절대경로
	
</body>
</html>