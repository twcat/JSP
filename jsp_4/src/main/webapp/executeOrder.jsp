<%@ page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5" import="java.sql.*"%>
<!DOCTYPE html>
<html>
	<head><title>排序查詢結果</title></head>
<body>
	<font size="5" color="green">成績排名</font><hr>
	<table border="1">
		<tr><th>名次</th><th>姓名</th><th>國文</th></tr>
		<%
	Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");
		Connection con=DriverManager.getConnection(
		"jdbc:ucanaccess://D:\\Java\\Access\\dataBase.accdb;");
	Statement smt= con.createStatement();
	String sql = "SELECT Name,國文 FROM grades ORDER BY 國文 DESC";
	ResultSet rs = smt.executeQuery(sql);
	int num=1;
	
	while(rs.next()){
		out.println("<tr><td>" + num + "</td><td>" + rs.getString("Name") + "</td><td>" + rs.getString("國文") + "</td></tr>");
		num++;
	}

	%>
</body>
</html>