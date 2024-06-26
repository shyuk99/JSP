<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   
<%

	// 세션은 한번 저장해 놓으면, 만료되기 전 or 브라우저를 끄기 전까지 아무곳에서나 사용할 수 있음.
	
	String user_id = (String)session.getAttribute("user_id");
	String user_name = (String)session.getAttribute("user_name");

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	세션에 저장된 id: <%= user_id %><br>
	세션에 저장된 name: <%= user_name %><br>
	
</body>
</html>