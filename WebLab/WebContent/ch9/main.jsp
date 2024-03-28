<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%--선언문 주석 , 페이지 지시 태그라고 함--%>
    <%@ page import="java.util.Date" %>
    <%@ page session="false" %>

<%!
/** 선언부(변수선언)안에서(%!붙은거) 주석 쓸 때 ; *이 앞에 2개라는 점 주의*/
	Date date;
	String name;
	String email;
%>    
<%!
	/** 선언부(멤버 메소드:함수 선언) 안에서(%!붙은거) 주석 쓸 때*/
	public int getLength(){
		int len = email.length();
		return len;
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h1>스크립트 태그 테스트</h1>
	<%
		/* 스크립트 태그 안에서의 여러줄 주석; *이 한개 주의 */
		date = new Date();
	%>
	
	<%-- JSP 주석 : %=은 출력문(println같은거임); html구간 안에서 쓸 때  --%>
	현재 날짜: <%=date.toLocaleString() /*주석*/ %>
	<br/>
	<%@ include file="head.jsp" %>
	<%
		name = request.getParameter("name"); //스크립트 태그 안에서 주석은 //
		email = request.getParameter("email");
	%>
	name : <%=name %> <br/>
	email : <%=email %> <br/>
	<%=date.getDate() %>일 입니다. 이메일의 길이는 <%=getLength() %>입니다.
</body>
</html>