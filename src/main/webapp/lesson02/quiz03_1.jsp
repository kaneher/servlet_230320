<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>BMI 계산</title>
</head>
<body>
	<%
		int height = Integer.parseInt(request.getParameter("height"));
		int weight = Integer.parseInt(request.getParameter("weight"));
		// BMI =  몸무게 / ((키 / 100.0) * (키 / 100.0));
		double bmi = weight / ((height / 100.0) * (height / 100.0));
		if (bmi <= 20) {
			// 저체중
		} else if (bmi <= 25) {
			// 정상
		} else if (bmi <= 30) {
			// 과체중
		} else {
			// 비만
		}
	%>
	
	<div class="display-4">
		BMI 측정 결과
	</div>
	<div>
		당신은 
	</div>
</body>
</html>