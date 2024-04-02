<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
	request.setAttribute("attr", "Hello world");
%>
<%= request.getAttribute("attr") %><br/>

${requestScope["attr"] }<br/>
${requestScope.attr}<br/>

<%
	Map<String, String> map = new HashMap<>();
	map.put("one", "Hello");
	map.put("two", "world");
	pageContext.setAttribute("map", map);
%>

${map.get("one") }, ${map["one"] }, ${map.one }<br/>

${(10*10) != 100 }<br/>
${3 / 4 }<br/>
${empty param.Add }<br/> <%--비어있으면 true, 값이 있으면 false --%>
${pageContext.request.contextPath }<br/>
${header["host"]}
</body>
</html>