<%@ page import="java.sql.*" import="databaseconnection.*"%>
<%
String a = request.getParameter("uid");
String b = request.getParameter("pwd");
String name = null, u = null, test2 = null;

try {
	Connection con1 = Databasecon.getconnection();
	Statement st1 = con1.createStatement();

	String sss1 = "select * from register_tab where email_ct='" + a + "' && pwd_ct='" + b + "' ";

	ResultSet rs1 = st1.executeQuery(sss1);
	if (rs1.next()) {

		//
		name = rs1.getString("name_ct");
		session.setAttribute("uname", name);
		session.setAttribute("uemail", a);
		response.sendRedirect("userHome");
	} else {
		response.sendRedirect("user?id=fail");

	}
}

catch (Exception e1) {
	out.println(e1.getMessage());
}
%>