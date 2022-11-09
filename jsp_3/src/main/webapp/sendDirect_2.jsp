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
	if(view.equals("yahoo"))
		response.sendRedirect("https://tw.yahoo.com/");
	else if(view.equals("google"))
		response.sendRedirect("https://www.google.com.tw/");
	else if(view.equals("pchome"))
		response.sendRedirect("https://24h.pchome.com.tw/index/?gclid=EAIaIQobChMI7ci0j8qg-wIV2KuWCh1OtAK1EAAYASAAEgIocfD_BwE");
%>
</body>
</html>