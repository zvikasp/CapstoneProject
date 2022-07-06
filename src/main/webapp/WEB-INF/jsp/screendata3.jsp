
<%@ page import="java.sql.*" import="databaseconnection.*"
	import="javax.swing.JOptionPane"%>



<%
String tid = request.getParameter("tid");
String tname = request.getParameter("tname");
String screen = request.getParameter("screen");
String time = request.getParameter("time");
String sname = request.getParameter("sname");
%>
<%
try {

	Connection con = Databasecon.getconnection();
	Statement st = con.createStatement();

	int q = st.executeUpdate("insert into shows_tab values('" + tid + "','" + tname + "','" + screen + "','" + time
	+ "','" + sname + "')");

	if (q > 0) {
		response.sendRedirect("screendata2?1=" + tid + "&&2=" + tname + "&&3=" + screen);
	}

} catch (Exception e) {
	e.printStackTrace();
}
%>
