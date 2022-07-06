

<%@include file="aheader.jsp"%>
<%@page import="java.sql.*"%>
<%@page import="databaseconnection.*"%>
<%
String tid = request.getParameter("tid");
String tname = request.getParameter("tname");
String mname = request.getParameter("mname");
String screen = request.getParameter("screen");
String image = request.getParameter("image");
String start = request.getParameter("start");
String end = request.getParameter("end");
%>

<%!String[] shows;%>
<%
shows = request.getParameterValues("show");
int q = 0;
try {

	Connection con = Databasecon.getconnection();
	Statement st = con.createStatement();
	Statement st1 = con.createStatement();
	String[] tmp = new String[2];

	for (String s : shows) {
		System.out.println(s);
		tmp = s.split("@");

		q = st.executeUpdate("insert into movies_tab values('" + tid + "','" + tname + "','" + screen + "','" + mname
		+ "','" + tmp[0] + "','" + tmp[1] + "','" + start + "','" + end + "','" + image + "')");

		String sss1 = "select * from subscribe_tab ";

		ResultSet rs1 = st1.executeQuery(sss1);
		}
	//movieadd
	response.sendRedirect("movieadd?id=succ");

} catch (Exception e) {
	e.printStackTrace();
}
%>





<%@ include file="footer.jsp"%>