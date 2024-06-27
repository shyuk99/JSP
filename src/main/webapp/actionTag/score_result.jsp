<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	/*
	앞에서 넘어온 폼값을 받아서 평균을 구합니다.
	평균이 60점 이상이면 score_ok으로 이동해서
		~~님 평균은 xx점 합격입니다 를 출력
	평균이 60점 이하라면 score_no으로 이동해서
		~~님 평균은 xx점 불합격입니다 를 출력
		
	조건: 세션을 사용하지 않습니다.		
	*/
	
	String name = request.getParameter("name"); 
	int korean = Integer.parseInt(request.getParameter("korean"));
	int english = Integer.parseInt(request.getParameter("english"));
	int math = Integer.parseInt(request.getParameter("math"));
	
	int total = (korean + english + math) / 3;
	request.setAttribute("total", total);
	
	if(total >= 60) {

		request.getRequestDispatcher("score_ok.jsp").forward(request, response);
		
	} else if(total < 60) {
		
		request.getRequestDispatcher("score_no.jsp").forward(request, response);
	}
	
%>

	

