<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="ch13.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<c:out value="${param.name }" default="no name parameter"/><br/>
	<c:set var="variableName" value="setting value" scope="session"/> <%-- value값을 scope로 전달 --%>
	${variableName }<br/> <%--이렇게 보단 --%>
	<c:out value="${variableName }" default="no variableName value..."/><br/> <%--이렇게 쓰는게 보안에 좋다 --%>
	<%
		User user = new User();
	%>
	<c:set target="<%=user %>" property="name" value="gildong"/> <%--property:user클래스에 name에다가 value:길동값을 넣어라  --%>
	<%=user.getName() %><br/>
	<c:set var="user2" value="<%=user %>"/>
	<c:set target="${user2 }" property="name" value="gildong2"/><br/>
	<c:catch var="e">
		<%
			String name=null;
			name.indexOf(0);
		%>
	</c:catch>
	<c:if test="${e !=null }">
		error...${e }
	</c:if>
	<%
		int[] values = {1,2,3,34,56,79};
	%>
	<c:set var="intValues" value="<%=values %>" scope="page"/>
	<c:forEach items="${intValues }" var="val">
		value = <c:out value="${val }" /><br/>
	</c:forEach>		
	
</body>
</html>