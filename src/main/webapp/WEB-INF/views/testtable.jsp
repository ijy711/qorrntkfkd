<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String test = request.getParameter("location");
	System.out.println(test);
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="ko">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>test</title>
</head>
<body>
The String is = <%=test %>;
<div class="result">
	<table class="resultTable">
		<tr>
			<th>NAME</th>
			<th>안마기</th>
			<th>냉장고</th>
			<th>TV</th>
			<th>오디오</th>
			<th>전화기</th>
			<th>에어컨</th>
			<th>전자렌지</th>
			<th>카메라</th>
			<th>김치냉장고</th>
			<th>세탁기</th>
			<th>TOT</th>
		</tr>
		<c:forEach var="table" items="${list}">
		<tr>
			<td>${table.nm}</td>
			<td>${table.col1}</td>
			<td>${table.col2}</td>
			<td>${table.col3}</td>
			<td>${table.col4}</td>
			<td>${table.col5}</td>
			<td>${table.col6}</td>
			<td>${table.col7}</td>
			<td>${table.col8}</td>
			<td>${table.col9}</td>
			<td>${table.col10}</td>
			<td>${table.tot}</td>
		</tr>
		</c:forEach>
	</table>
</div>
</body>
</html>