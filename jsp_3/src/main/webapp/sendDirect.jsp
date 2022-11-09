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
	String view = request.getParameter("view");
	if(view.equals("rabbit"))
		response.sendRedirect("https://zh.wikipedia.org/zh-tw/%E5%85%94#/media/File:Oryctolagus_cuniculus_Rcdo.jpg");
	else if(view.equals("dog"))
		response.sendRedirect("https://cdn.hk01.com/di/media/images/1748908/org/9ab92913858a9777ad41b22d5106e1b1.jpg/3Sr8HAlz0PniqgXVD3-Zwm68ETQnL6F-4vUMs-L1DLM?v=w1920");
	else if(view.equals("cat"))
		response.sendRedirect("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQalUr6qq3oj5QhwHVoM3TgpmUnfZzbYsrrVPbp4a4ok0bdYicioLnaPqZ5ANOZgJLleT8&usqp=CAU");
%>
</body>
</html>