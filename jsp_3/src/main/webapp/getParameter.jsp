<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="BIG5">
<title>Insert title here</title>
</head>
<body>
<%request.setCharacterEncoding("Big5"); // 防止中文亂碼 %>
<%
 String name = request.getParameter("name");
 String email = request.getParameter("email");
 String tel = request.getParameter("tel");
%>
Hi,<%=name %>您好：<br>
您輸入的個資如下：<br>
姓名：<%=name %><br>
E-mail：<%=email %><br>
電話：<%=tel %>	
</body>
</html>