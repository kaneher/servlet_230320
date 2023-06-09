package com.test.lesson04;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.common.MysqlService;

@WebServlet("/lesson04/quiz02_delete")
public class Quiz02Delete extends HttpServlet {
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// id 받아오기
		int id = Integer.parseInt(request.getParameter("id"));
		
		// DB 연결
		MysqlService ms = MysqlService.getInstance();
		ms.connect();
		
		// `site` delete
		String deleteQuery = "delete from `sites` where `id`=" + id;
		try {
			ms.update(deleteQuery);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		// DB 연결 해제
		ms.disconnect();
		
		// redirect to siteList
		response.sendRedirect("/lesson04/quiz02/siteList.jsp");
	}
}
