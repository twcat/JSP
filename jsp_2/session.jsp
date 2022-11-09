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
session.setAttribute("idvalue", "孫合佳");
session.setAttribute("sex", "大學部女同學");
session.setAttribute("hobby", "玩遊戲");
session.removeAttribute("idvalue");
%>
<a href="sessionGet.jsp">顯示已設定之session資料內容</a>
</body>
</html>