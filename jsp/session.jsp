<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="BIG5">
<title>Insert title here</title>
</head>
<body>
<%
session.setAttribute("idvalue", "�]�X��");
session.setAttribute("sex", "�j�ǳ��k�P��");
session.setAttribute("hobby", "���C��");
session.removeAttribute("idvalue");
%>
<a href="sessionGet.jsp">��ܤw�]�w��session��Ƥ��e</a>
</body>
</html>