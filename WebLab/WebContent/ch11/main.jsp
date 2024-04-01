<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%
		request.setAttribute("name", "ashram");
	%>
	<jsp:include page="include.jsp" flush="true"> <%--이건 보통 데이터 전달용 include --%>
		<jsp:param name="data" value="hello"/>
	</jsp:include>
</body>
</html>