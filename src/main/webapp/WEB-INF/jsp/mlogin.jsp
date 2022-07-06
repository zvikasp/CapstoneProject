<%@ page import="java.sql.*" import="databaseconnection.*"%>
<%
String a = request.getParameter("uid");
String b = request.getParameter("pwd");
String name = null, u = null, test2 = null;

try {
	Connection con1 = Databasecon.getconnection();
	Statement st1 = con1.createStatement();

	String sss1 = "select * from manager_tab where un_ct='" + a + "' && pwd_ct='" + b + "' ";

	ResultSet rs1 = st1.executeQuery(sss1);
	if (rs1.next()) {

		//
		name = rs1.getString("mname_ct");
		session.setAttribute("mname", name);
		session.setAttribute("memail", a);
		response.sendRedirect("mhome");
	} else {
		response.sendRedirect("manager?id=fail");

	}
}

catch (Exception e1) {
	out.println(e1.getMessage());
}
%>