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
	out.println(" �ܼ� a=10 <BR>");
	
	if (a>10){
		out.println("�ܼ�a>10�����󦡦���!");
	}
	else if(a==10){
		out.println("�ܼ�a==10�����󦡦���!");

	} else{
		out.println("�ܼ�a>10 �άO(|) a<10 �����󦡥�������!");
	}
		out.println("�B�⵲��");
	%>
</body>
</html>