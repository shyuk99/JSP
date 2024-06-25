<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	String name = request.getParameter("name");
	int height = Integer.parseInt(request.getParameter("height"));
	int weight = Integer.parseInt(request.getParameter("weight"));
	
	double BMI = (double)weight / ((double)height/100 * (double)height/100);
	
	
	String result = "";
	
	if(BMI >= 25) {
		result = "과체중";
	} else if(BMI <= 18) {
		result = "저체중";
	} else {
		result = "정상체중";
	}
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	이름:<%= name %><br>
	키:<%= height %><br>
	몸무게:<%= weight %><br>
	BMI:<%= result %><br>

</body>
</html>