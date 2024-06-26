<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	// 사용자가 아이디기억하기를 예전에 체크했다면, 쿠키가 있음
	
	Cookie[] arr = request.getCookies();
	
	String str = "";

	for(Cookie c : arr) {
		// id쿠키를 찾음
		if(c.getName().equals("id")) {
			str = c.getValue();
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
	
	<!-- input태그에 미리 값을 가지려면 value속성을 쓰면 됨 -->
	
	<h3>쿠키 활용해보기</h3>

	<form action = "cookie_ex01_result.jsp" method = "post">
		아이디:<input type = "text" name = "id" value = "<%= str %>">
		비밀번호:<input type = "password" name = "pw">
		<input type = "submit" name = "확인">
		<input type = "checkbox" value = "y" name = "remember">아이디기억하기
	</form>	
	
</body>
</html>