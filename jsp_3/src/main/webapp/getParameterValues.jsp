<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5" import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="BIG5">
<title>Insert title here</title>
</head>
<body>
<%
	String select[] = request.getParameterValues("ln");
	int count = 0;
	
	try {
		count = select.length;
	}catch(Exception e){
		response.sendRedirect("getParameterValues.htm");
	}
	
	out.print("<font color='red'>�z���w���{���y�����G</font><br>");
	for (int i = 0; i < count ; i++)
		out.print(select[i]+"<br>");
%>
</body>
</html>