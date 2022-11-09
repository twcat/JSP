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
	int a = 10 ;
	out.println(" 變數 a=10 <BR>");
	
	if (a>10 | a==9){
		out.println("變數a=10 或是(|) a>10 的條件式成立!");
		out.println("<BR>");
	}
	out.println("運算結束");
	%>
</body>
</html>