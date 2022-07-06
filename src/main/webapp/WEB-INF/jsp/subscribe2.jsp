<%@ include file="uheader.jsp"%>
<%@ page import="java.sql.*" import="databaseconnection.*"%>
<%@ page import="java.sql.*" import="java.util.Random"
	import="databaseconnection.*"%>

<%
String email = request.getParameter("email");
String sql = "insert into subscribe_tab values('" + session.getAttribute("uname") + "','" + email + "' )";
%>

<%
try {
	Connection con1 = Databasecon.getconnection();
	Statement st1 = con1.createStatement();
	System.out.println(sql);
	st1.executeUpdate(sql);
	response.sendRedirect("subscribe?id=succ");
}
catch (Exception e1) {
	response.sendRedirect("subscribe?id=duplicate");
}
%>