<%@page import="java.sql.ResultSet"%>
<%@page import="com.test.common.MysqlService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	// DB 연결
	MysqlService ms = MysqlService.getInstance();
	ms.connect();
	
	// `seller`, `used_goods` join select
	String selectQuery = "select A.*, B.* from seller AS A join used_goods AS B on A.id = B.sellerId";
	ResultSet res = ms.select(selectQuery);
	while (res.next()) {
%>
		<div class="d-inline-flex flex-wrap border border-warning p-3">
			<div>
				<img src="<%= res.getString("picture") %>" alt="사진" width="500" height="500">
				<div><%= res.getString("title") %></div>
				<div><%= res.getInt("price") %></div>
				<div><%= res.getString("nickname") %></div>
			</div>
		</div>	
<%
	}
	// DB 연결 해제
	ms.disconnect();
%>