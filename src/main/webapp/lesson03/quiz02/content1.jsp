<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
	Map<String, Object> artistInfo = new HashMap<>();
	artistInfo.put("name", "아이유");
	artistInfo.put("debut", 2008);
	artistInfo.put("agency", "EDAM엔터테인먼트");
	artistInfo.put("photo", "http://image.genie.co.kr/Y/IMAGE/IMG_ALBUM/081/867/444/81867444_1616662460652_1_600x600.JPG");
%>

<img src="<%=artistInfo.get("photo")%>" alt="IU" width="200" height="200" class="mr-4">
<div>
	<h2 class="font-weight-bold mb-3"><%=artistInfo.get("name")%></h2>
	<h4><%=artistInfo.get("agency")%></h4>
	<h4><%=artistInfo.get("debut")%> 데뷔</h4>
</div>