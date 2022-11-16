<%@page contentType="text/html; charset=BIG5"%>
<%@page pageEncoding="BIG5"%>
<%@page import="java.sql.*"%>
<html>
	<head><title>Select</title></head>
	<meta charset="BIG5">
<body>
<%
	Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");
	Connection con=DriverManager.getConnection("jdbc:ucanaccess://C:\\Users\\User\\Documents\\GitHub\\JSP\\jsp_3\\src\\main\\webapp\\Health care.accdb;");
	Statement smt= con.createStatement();
	String sql = "SELECT * FROM personData ";
	ResultSet rs = smt.executeQuery(sql);
	%>
	取出資料表資料
	<table border='1'>
	<tr>
	<th>編號</th>
	<th>姓名</th>
	<th>住址</th>
	<th>電話</th>
	</tr>
	<%
	while(rs.next()){%>
	<tr>
		 <td><%=rs.getString("ID")%></td>
		 <td><%=rs.getString("PersonName")%></td>
		 <td><%=rs.getString("Address")%></td>
		 <td><%=rs.getString("Phone")%></td>
	</tr>
	<%}	
	con.close();
	%>
</body>
</html>