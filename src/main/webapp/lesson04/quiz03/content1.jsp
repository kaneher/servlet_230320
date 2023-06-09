<%@page import="com.test.common.MysqlService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	// DB 연결
	MysqlService ms = MysqlService.getInstance();
	ms.connect();
	
	// `seller`, `used_goods` join select
	String selectQuery = "";
	
	// DB 연결 해제
	ms.disconnect();
%>