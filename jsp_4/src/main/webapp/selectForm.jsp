<%@ page import="java.sql.*"%>
<%@page contentType="text/html; charset=BIG5"%>
<%@page pageEncoding="BIG5"%>
<%@page import="java.sql.*"%>
<html>
	<head>
	<title>成績查詢主畫面</title>
	<meta charset="BIG5">
	</head>
<body>
	<form action="resultForm.jsp" method="post">
	
	<%
	Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");
	Connection con=DriverManager.getConnection("jdbc:ucanaccess://C:\\Users\\User\\Documents\\GitHub\\JSP\\jsp_3\\src\\main\\webapp\\Health care.accdb;");
	Statement smt= con.createStatement();
	String sql = "SELECT Name FROM grades";
	ResultSet rs = smt.executeQuery(sql);
	
	%>
	<select name="name">
           <%while(rs.next()){ %>
              <option value="<%=rs.getString("Name")%>"><%=rs.getString("Name") %></option>
          <%}con.close();%>   
 	</select>

	<br>
	請輸入查詢姓名關鍵字<input type="text" name="keywords">
	<input type="submit" value="查詢成績">
	</form>
</body>
</html>