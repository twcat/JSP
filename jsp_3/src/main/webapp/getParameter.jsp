<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="BIG5">
<title>Insert title here</title>
</head>
<body>
<%request.setCharacterEncoding("Big5"); // �����ýX %>
<%
 String name = request.getParameter("name");
 String email = request.getParameter("email");
 String tel = request.getParameter("tel");
%>
Hi,<%=name %>�z�n�G<br>
�z��J���Ӹ�p�U�G<br>
�m�W�G<%=name %><br>
E-mail�G<%=email %><br>
�q�ܡG<%=tel %>	
</body>
</html>