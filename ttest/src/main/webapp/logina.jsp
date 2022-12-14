<%@page contentType="text/html"%>
<%@page pageEncoding="BIG5"%>
<%@page import="java.sql.*"%>
<jsp:useBean id='objDBConfig' scope='session' class='hitstd.group.tool.database.DBConfig' />
<%
session.setAttribute("access","n");//access="n"
if(request.getParameter("memberid") !=null &&
	request.getParameter("memberpwd") !=null){
Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");
	Connection con=DriverManager.getConnection("jdbc:ucanaccess://"+objDBConfig.FilePath()+";");
	Statement smt= con.createStatement
			(ResultSet.TYPE_SCROLL_INSENSITIVE,ResultSet.CONCUR_READ_ONLY);
	String getpaperdata = "SELECT * FROM member WHERE memberid='"+
			request.getParameter("memberid")+"' AND memberpwd='" +
			request.getParameter("memberpwd")+"'";
	ResultSet paperrs = smt.executeQuery(getpaperdata);
	if(paperrs.next()){
		session.setAttribute("access","y");//access="y"
		session.setAttribute("accessid",request.getParameter("memberid"));
		session.setMaxInactiveInterval(5);
		response.sendRedirect("accesspagea.jsp");
	}else
		out.println("帳號密碼不符！請重新登入");
}
%>
<html>
<head><title>登入頁面</title></head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
body {font-family: Arial, Helvetica, sans-serif;}
form {border: 3px solid #f1f1f1;}

input[type=text], input[type=password] {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  box-sizing: border-box;
}

button {
  background-color: #4CAF50;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 100%;
}

button:hover {
  opacity: 0.8;
}

.signbtn {
  width: auto;
  padding: 10px 18px;
  background-color: #f44336;
}

.imgcontainer {
  text-align: center;
  margin: 24px 0 12px 0;
}

img.avatar {
  width: 40%;
  border-radius: 50%;
}

.container {
  padding: 16px;
}

span.psw {
  float: right;
  padding-top: 16px;
}

/* Change styles for span and cancel button on extra small screens */
@media screen and (max-width: 300px) {
  span.psw {
     display: block;
     float: none;
  }
  .signbtn {
     width: 100%;
  }
}
</style>
<body>
<h2>Login Form</h2>
<form method="post">
<div class="container">
	<label for="memberid"><b>MemberID</b></label>
    <input type="text" placeholder="Enter Username" name="memberid" required>
	<% if(request.getParameter("memberid")!= null){ %>
		value = '<%=request.getParameter("memberid") %>'
	<%}%>
    <label for="memberpwd"><b>Password</b></label>
    <input type="password" placeholder="Enter Password" name="memberpwd" required>
    <% if(request.getParameter("memberpwd")!= null){ %>
		value = '<%=request.getParameter("memberpwd") %>'
	<%}%>
    <button type="submit" name="loginButton">Login</button>
</div>
<div class="container" style="background-color:#f1f1f1">
	<a href="signUp.html" class="signbtn">Sign</a>
    
  </div>
</form>
</body>
</html>