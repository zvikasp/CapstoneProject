<%@ include file="uheader.jsp"%>
<%@ page import="java.sql.*" import="databaseconnection.*"%>
<%@ page import="java.sql.*" import="java.util.Random"
	import="databaseconnection.*"%>


<%
String tid = (String) session.getAttribute("tid");
String tname = (String) session.getAttribute("tname");
String screen = (String) session.getAttribute("screen");
String movie = (String) session.getAttribute("movie");
String date = (String) session.getAttribute("date");
String show = (String) session.getAttribute("show");
String time = (String) session.getAttribute("time");

String cat = (String) session.getAttribute("cat");
float cost = (Float) session.getAttribute("cost");
int tsize = (Integer) session.getAttribute("tsize");

int key = new Random().nextInt(10000);

String sql = "insert into tickets_tab values('" + tid + "','" + tname + "','" + screen + "','" + movie + "','" + show
		+ "','" + time + "','" + date + "','" + cat + "','" + cost + "','" + cost * tsize + "','" + tsize + "','"
		+ session.getAttribute("uname") + "','" + session.getAttribute("uemail") + "','T" + key + "')";
%>


<%
Connection con1 = Databasecon.getconnection();
Statement st1 = con1.createStatement();
System.out.println(sql);
st1.executeUpdate(sql);
%>
<br>
<br>
<table align="center" style="border: 1px solid black; border-style: dotted;">
	<tr>
		<td style="padding: 10px">
			<h3>
				<%=tname%>
			</h3>
			<h3>
				Screen: <%=screen%><br>
			</h3>
			<h3>
				Movie: <%=movie%></h3>
			<h3>
				Show: <%=show%>. <%=time%>
			</h3>
			<h3>
				TicketId: T<%=key%>
			</h3>
			<h3>
				Number of Tickets: <%=tsize%>
			</h3>
			<h3>
				Cost per each ticket (Rs.): <%=cost%>/-
			</h3>
			<h3>
				Total Cost (Rs.): <%=cost * tsize%>/-
			</h3>
		</td>
	</tr>
</table>
<br>
<center>
	<button onclick="myFunction()">Print</button>
</center>
<script>
	function myFunction() {
		window.print();
	}
</script>
<%

%>
<br>
<br>
<br>
<br>
<br>
<br>