<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%

	// 1. 로그인에 활용할 쿠키
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String remember = request.getParameter("remember");
	
	// id, pw가 같으면 로그인성공이라고 가정
	if(id.equals(pw)) {
		
		//1. 로그인에 활용할 쿠키 (로그인 성공하면 쿠키만듬)
		Cookie cookie = new Cookie("uesr_id", id); //이름, 값
		cookie.setMaxAge(1800); //30분
		response.addCookie(cookie); // 쿠키를 reponse에 담아서 보낸다.
		
		// 2. 사용자가 아이디기억하기를 체크했다면(값을 받아야함), 아이디기억하기에 사용할 쿠키를 하나생성하세요.
		// 	  아이디 기억하기 쿠키는 1번 페이지에서 사용합니다.
		//    만약 아이디 기억하기 쿠키가 있다면, input태그에 value값을 찍어주세요
		
		if(remember == null) {
			remember = "n";
		}
		
		if(remember.equals("y")) {
			
			Cookie re = new Cookie("id", id);
			
			re.setMaxAge(1800);
			
			response.addCookie(re);
			
		}
		
		response.sendRedirect("cookie_ex01_welcome.jsp");
	} else {
		response.sendRedirect("cookie_ex01.jsp"); //다시 로그인창으로
	}

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>