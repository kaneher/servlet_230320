package com.test.lesson04;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.common.MysqlService;

@WebServlet("/lesson04/quiz02_insert")
public class Quiz02Insert extends HttpServlet {
	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// 응답 정의 생략 - Redirect 할 것이기 때문
		
		// request parameter 받기
		String name = request.getParameter("name");
		String url = request.getParameter("url");
		
		// DB 연결
		MysqlService ms = MysqlService.getInstance();
		ms.connect();
		
		// `sites` insert
		String insertQuery = "insert into `sites` (`name`, `url`)"
				+ "values"
				+ "('" + name + "', '" + url + "');";
		try {
			ms.update(insertQuery);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		// DB 연결 해제
		ms.disconnect();
		
		// Redirect to siteList
		response.sendRedirect("/lesson04/quiz02/siteList.jsp");
	}
}
