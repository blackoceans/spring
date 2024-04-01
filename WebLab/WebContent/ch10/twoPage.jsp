<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h1>두번째 페이지</h1>
	<%
		String requestId = (String)request.getAttribute("id");
		String sessionId = (String)session.getAttribute("id");
		String applicationId = (String)application.getAttribute("id");
	%>
	request : <%= requestId %><br/>
	session : <%= sessionId %><br/>
	application : <%= applicationId %><br/>
</body>
</html>