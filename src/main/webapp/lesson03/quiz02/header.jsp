<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<h2 class="mr-4"><a href="template1.jsp" class="aTitle text-success">Melong</a></h2>

<form method="post" action="/lesson03/quiz02/template2.jsp">
	<div class="d-flex ml-5">
		<input type="text" class="text form-control" name="search" value="<%= request.getParameter("search") %>">
		<input type="submit" value="검색" class="btn btn-info">
	</div>
</form>