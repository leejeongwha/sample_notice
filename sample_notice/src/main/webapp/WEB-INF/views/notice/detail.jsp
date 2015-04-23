<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<div>
	<form name="frmNotice" method="post" action="/notice/save">
		<c:if test="${not empty notice}">
			<input type="hidden" name="seq" value="${notice.seq}" />
		</c:if>
		
		<table> 
			<tr>
				<td>제목</td>
				<td><input type="text" name="title" value="${notice.title}" /></td>
			</tr>
			<tr>
				<td>내용</td>
				<td><textarea name="content">${notice.content}</textarea></td>
			</tr>
		</table>
		
		<button type="submit">저장</button>
	</form>
</div>
</body>
</html>