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
		int i;
		for(i=1;i<=200;i++){
			if((i%3==0)&&(i%7==0))
				out.println(i+"是3和7的公倍數<BR>");
		}
	%>
</body>
</html>