<%@ page import="java.sql.*"%>

<%@ page import="java.sql.*" import="databaseconnection.*"%>



<%!int i = 1;%>
<%
String name = request.getParameter("name");
String email = request.getParameter("email");
String ph = request.getParameter("ph");
String mobile = request.getParameter("mobile");
String pwd = request.getParameter("pwd");
String city = request.getParameter("city");
String street = request.getParameter("street");
String un = request.getParameter("un");

try {
	Connection con = Databasecon.getconnection();

	Statement st = con.createStatement();
	ResultSet rs = st.executeQuery("select count(*) from manager_tab ");
	if (rs.next()) {
		i = rs.getInt(1);
		++i;
	}
} catch (Exception e) {
	System.out.println("Exception Occured");
}
%>
<%
try {
	Connection con = Databasecon.getconnection();
	Statement st = con.createStatement();

	int q = st.executeUpdate("insert into manager_tab values('" + i + "','" + name + "','" + email + "', '" + ph
	+ "', '" + mobile + "','" + street + "','" + city + "','" + un + "','" + pwd + "')");

	if (q > 0) {
		response.sendRedirect("addManager?id=succ");
	} else
		response.sendRedirect("addManager?message=fail");

} catch (Exception e) {
	e.printStackTrace();
}
%>
