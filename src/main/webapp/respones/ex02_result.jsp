<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");

	String name = request.getParameter("name");
	int pw = Integer.parseInt(request.getParameter("pw"));
	
	if(name.equals("abc") && pw == 1234) {
		response.sendRedirect("res_ex02_success.jsp");
	} else {
		response.sendRedirect("res_ex02_fail.jsp");
	}
	
	
	/* 2. 아이디가 abc이고, 비밀번호가 1234라면, 로그인성공이라고 가정하고
	   	  ex02_succes페이지로 리다이렉트
	
	   3. 아이디나 비밀번호가 틀린경우라면 ex02_fail페이지로 리다이렉트 */

	
%>