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

Object id=session.getAttribute("idvalue");
Object sex=session.getAttribute("sex");
Object hobby=session.getAttribute("hobby");
if(id!=null){
	out.println("�m�W�G"+id.toString()+"<br>");
	out.println("�ʧO�G"+sex.toString()+"<br>");
	out.println("����G"+hobby.toString()+"<br>");
}else{
	out.println("�Lsession���");
}

%>
</body>
</html>