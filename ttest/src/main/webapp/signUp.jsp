<%@page contentType="text/html"%>
<%@page pageEncoding="BIG5"%>
<%@page import="java.sql.*"%>

<html>
<body>
	<%
	Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");
	Connection con=DriverManager.getConnection("jdbc:ucanaccess://C:\\Program Files\\Apache Software Foundation\\Tomcat 9.0\\webapps\\ttest\\src\\main\\webapp\\member.accdb;");
	//資料庫一定要放在webapp裡面
	//DB問題:壓縮-資料庫工具/壓縮及修復資料庫、改舊版-檔案/選項/新的資料庫排序/選「一般舊檔」、資料庫路徑是否正確、資料庫一定要放在project的檔案
	
	Statement smt= con.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE,ResultSet.CONCUR_READ_ONLY);
	String memberid =request.getParameter("memberid");
	String memberpwd =request.getParameter("memberpwd");
	//String sql;
	//sql="INSERT INTO member VALUES('"+memberid+"','"+memberpwd+"')";
	smt.execute("INSERT INTO member (memberid, memberpwd) VALUES('"+memberid+"','"+memberpwd+"')");
	con.close();
	response.sendRedirect("logina.jsp");
	%>
</body>
</html>
