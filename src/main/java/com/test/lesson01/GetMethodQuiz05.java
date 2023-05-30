package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/lesson01/quiz05")
public class GetMethodQuiz05 extends HttpServlet {
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		
		int number = Integer.parseInt(request.getParameter("number"));
		PrintWriter out = response.getWriter();
		
		out.print("<html><head><title>구구단 링크</title></head><body>");
		out.print("<ul>");
		for (int j = 1; j <= 9; j++) {
			out.print("<li>" + number + " X " + j + " = " + (number * j) + "</li>");
		}
		out.print("</ul>");
	}
}
