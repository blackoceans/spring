<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%--���� �ּ� , ������ ���� �±׶�� ��--%>
    <%@ page import="java.util.Date" %>
    <%@ page session="false" %>

<%!
/** �����(��������)�ȿ���(%!������) �ּ� �� �� ; *�� �տ� 2����� �� ����*/
	Date date;
	String name;
	String email;
%>    
<%!
	/** �����(��� �޼ҵ�:�Լ� ����) �ȿ���(%!������) �ּ� �� ��*/
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
	<h1>��ũ��Ʈ �±� �׽�Ʈ</h1>
	<%
		/* ��ũ��Ʈ �±� �ȿ����� ������ �ּ�; *�� �Ѱ� ���� */
		date = new Date();
	%>
	
	<%-- JSP �ּ� : %=�� ��¹�(println��������); html���� �ȿ��� �� ��  --%>
	���� ��¥: <%=date.toLocaleString() /*�ּ�*/ %>
	<br/>
	<%@ include file="head.jsp" %>
	<%
		name = request.getParameter("name"); //��ũ��Ʈ �±� �ȿ��� �ּ��� //
		email = request.getParameter("email");
	%>
	name : <%=name %> <br/>
	email : <%=email %> <br/>
	<%=date.getDate() %>�� �Դϴ�. �̸����� ���̴� <%=getLength() %>�Դϴ�.
</body>
</html>