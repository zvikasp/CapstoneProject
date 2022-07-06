<%@ page import="java.sql.*" import="databaseconnection.*"%>

<%!int i = 0;%>
<%
String tname = request.getParameter("tname");
String email = request.getParameter("email");
String contact = request.getParameter("contact");
String type = request.getParameter("type");
String city = request.getParameter("city");
String address = request.getParameter("address");
String location = request.getParameter("loc");
int screens = Integer.parseInt(request.getParameter("screens"));

try {
	Connection con = Databasecon.getconnection();
	Statement st = con.createStatement();
	ResultSet rs = st.executeQuery("select count(*) from theater_tab ");
	if (rs.next()) {
		i = rs.getInt(1);
	}
} catch (Exception e) {
	System.out.println("Exception Occured");
}
%>
<%
try {
	Connection con = Databasecon.getconnection();
	Statement st = con.createStatement();
	for (int j = 1; screens >= j; j++) {
		st.executeUpdate("insert into theater_tab values('" + (++i) + "','" + tname + "','Screen" + j + "', '" + type
		+ "' ,'" + city + "','" + address + "','" + email + "', '" + contact + "','" + location + "')");
	}
	response.sendRedirect("addtheater?id=succ");

} catch (Exception e) {
	out.print(e);
}
%>
