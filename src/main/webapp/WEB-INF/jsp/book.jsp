<%@ include file="uheader.jsp"%>
<%@ page import="java.sql.*" import="databaseconnection.*"%>

<%
	String tid = request.getParameter("tid");
	session.setAttribute("tid", tid);
	String tname = request.getParameter("tname");
	session.setAttribute("tname", tname);
	String screen = request.getParameter("screen");
	session.setAttribute("screen", screen);
	String movie = request.getParameter("movie");
	session.setAttribute("movie", movie);
	String date = request.getParameter("date");
	session.setAttribute("date", date);
	String temp1 = request.getParameter("show");
	String[] temp2 = temp1.split("@");
	String show = temp2[0];
	session.setAttribute("show", show);
	String time = temp2[1];
	session.setAttribute("time", time);
	temp1 = request.getParameter("cat");
	temp2 = temp1.split("@");
	String cat = temp2[0];
	session.setAttribute("cat", cat);
	float cost = Float.parseFloat(temp2[1]);
	session.setAttribute("cost", cost);
	int avail = Integer.parseInt(temp2[2]);
	int tsize = Integer.parseInt(request.getParameter("count"));
	session.setAttribute("tsize", tsize);
%>

<%
Connection con1 = Databasecon.getconnection();
Statement st1 = con1.createStatement();
ResultSet rs = st1.executeQuery("select count(*) from tickets_tab where tid_ct='" + tid + "' and date_ct='" + date
		+ "' and show_ct='" + show + "' ");
rs.next();
int pen = rs.getInt(1);
if ((avail - pen) >= tsize) {
%>
<br>
<br>
<table align="center">
	<tr>
		<td><h2>
				Available Tickets:
				<%=avail - pen%></h2>
			<h2>
				Number of Tickets:
				<%=tsize%></h2>
			<h2>
				Cost per each ticket (Rs.):
				<%=cost%>/-
			</h2>
			<h2>
				Total Cost (Rs.):
				<%=cost * tsize%>/- 
			</h2></td>
	</tr>
	<tr>
		<td><a href="payment">Payment</a></td></table>
<%
}
%>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<%@ include file="footer.jsp"%>
