<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Quiz01</title>
</head>
<body>
	<%!
		public static int getNSum(int n) {
			int sum = 0;
			for (int i = 1; i <= n; i++) {
				sum += i;
			}
			return sum;
		}
	%>

	<h1>1부터 50까지의 합은 <%= getNSum(50) %>입니다.</h1>
	
	<%
		int[] scores = {80, 90, 100, 95, 80};
		int sum = 0;
		for (int i = 0; i < scores.length; i++) {
			sum += scores[i];
		}
		double avg = (double)sum / scores.length;
	%>
	
	<h1>평균 점수는 <%= avg %>점 입니다.</h1>
	
	<%
		List<String> scoreList = Arrays.asList(new String[]{"X", "O", "O", "O", "X", "O", "O", "O", "X", "O"});
		int answer = 0;
		Iterator<String> iter = scoreList.iterator();
		while(iter.hasNext()) {
			String arr = iter.next();
			if (arr.equals("O")) {
				answer++;
			}
		}
		int score = answer * 10;
	%>
	
	<h1>채점 결과는 <%= score %>점 입니다.</h1>
	
	<%
		String birthDay = "20010820";
		String year = birthDay.substring(0, 4);
		int age = 2023 - Integer.parseInt(year) + 1;
	%>
	
	<h1>20010820의 나이는 <%= age %>세 입니다.</h1>
</body>
</html>