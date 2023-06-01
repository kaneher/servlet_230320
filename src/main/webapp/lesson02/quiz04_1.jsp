<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>길이 변환</title>

<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>
</head>
<body>
	<%
		int cm = Integer.parseInt(request.getParameter("cm"));
		String[] convertArr = request.getParameterValues("convert"); // checkbox같은 여러 값을 가져올 때
		double inch = cm / 2.54;
		double yard = cm / 91.44;
		double feet = cm / 30.48;
		double meter = cm / 100.0;
		if (convertArr != null) {
			for (int i = 0; i < convertArr.length; i++) {
				if (convertArr[i].equals("inch")) {
					convertArr[i] = inch + " in";
				} else if (convertArr[i].equals("yard")) {
					convertArr[i] = yard + " yd";
				} else if (convertArr[i].equals("feet")) {
					convertArr[i] = feet + " ft";
				} else if (convertArr[i].equals("meter")) {
					convertArr[i] = meter + " m";
				}
			}
		}
	%>
	
	<div class="container">
		<div class="display-4 mb-2">길이 변환 결과</div>
		<div class="display-4"><%= cm %>cm</div>
		<hr>
		<div class="display-4 mt-3">
			<%
			if (convertArr != null) {
				for (int i = 0; i < convertArr.length; i++) {
					out.print(convertArr[i]);%><br>
				<%}
			}%>
		</div>
	</div>
</body>
</html>