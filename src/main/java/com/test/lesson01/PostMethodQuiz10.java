package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/lesson01/quiz10")
public class PostMethodQuiz10 extends HttpServlet {
	// doPost 메소드 바깥쪽에 위치
	private static final Map<String, String> userMap =  new HashMap<String, String>() {
	    {
	        put("id", "marobiana");
	        put("password", "qwerty1234");
	        put("name", "신보람");
	    }
	};
	
	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setContentType("text/html");
		
		String userId = request.getParameter("userId");
		String password = request.getParameter("password");
		
		PrintWriter out = response.getWriter();
		if (userId.equals(userMap.get("id")) == false) {
			out.print("id가 일치하지 않습니다.");
			return;
		}
		if (password.equals(userMap.get("password")) == false) {
			out.print("password가 일치하지 않습니다.");
			return;
		}
		if (userId.equals(userMap.get("id")) && password.equals(userMap.get("password"))) {
			out.print(userMap.get("name") + "님 환영합니다!");
		}
	}
}
