
<%@ page import="java.sql.*"%>


<%@ page import="java.sql.*" import="databaseconnection.*"
	import="javax.swing.JOptionPane"%>



<%!String name, lname, addr, city, state, zip, tele, email, un, pwd;
	int i = 0;%>
<%
try {
	Connection con = Databasecon.getconnection();

	Statement st = con.createStatement();

	city = request.getParameter("city").trim();
	state = request.getParameter("state").trim();
	zip = request.getParameter("zip");
	email = request.getParameter("email");
%>
<%
int q = st.executeUpdate("update register set city='" + city + "', state='" + state + "', zip='" + zip
		+ "' where email='" + email + "' ");

if (q > 0) {
	///	response.sendRedirect("profilepic.jsp?id="+email+"");
	response.sendRedirect("register?id=" + email + "");
} else
	response.sendRedirect("useradd?message=fail");

} catch (Exception e) {
e.printStackTrace();
}
%>


