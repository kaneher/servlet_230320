package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/lesson01/quiz08")
public class GetMethodQuiz08 extends HttpServlet {
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		
		String search = request.getParameter("search");
		PrintWriter out = response.getWriter();
		
		List<String> list = new ArrayList<>(Arrays.asList(
		        "강남역 최고 맛집 소개 합니다.", 
		        "오늘 기분 좋은 일이 있었네요.", 
		        "역시 맛집 데이트가 제일 좋네요.", 
		        "집에 가는 길에 동네 맛집 가서 안주 사갑니다.",
		        "자축 저 오늘 생일 이에요."));
		
		out.print("<html><head><title>검색하기</title></head><body>");
		Iterator<String> iter = list.iterator();
		while (iter.hasNext()) {
			String arr = iter.next(); // next() 호출할 때마다 소비가 되므로 반복문에서 한번만 수행하는 것이 좋다.
			if (arr.contains(search)) {
				// 1) replace "맛집" => "<b>맛집</b>"
				arr = arr.replace(search, "<b>" + search + "</b>");
				out.print(arr + "<br>");
				
				// 2) split("맛집")
//				String[] words = arr.split(search);
//				out.print(words[0] + "<b>" + search + "</b>" + words[1] + "<br>");
			}
		}
		out.print("</body></html>");
	}
}
