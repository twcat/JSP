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
	out.println("姓名："+id.toString()+"<br>");
	out.println("性別："+sex.toString()+"<br>");
	out.println("興趣："+hobby.toString()+"<br>");
}else{
	out.println("無session資料");
}

%>
</body>
</html>