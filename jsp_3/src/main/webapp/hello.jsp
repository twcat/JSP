<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="BIG5">
<title>Insert title here</title>
</head>
<body>
<%request.setCharacterEncoding("Big5"); %>
<%
 String strName;
 strName = request.getParameter("txtName");
 out.println("Hello " + strName + ", �w��ϥ�JSP����!");
%>
</body>
</html>