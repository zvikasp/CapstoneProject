<%@ include file="uheader.jsp"%>
<%@ page import="java.sql.*" import="databaseconnection.*"
	import="java.util.Date"%>
<%@ page import="java.sql.*" import="java.util.Date"
	import="java.text.*" import="databaseconnection.*"%>
	
<h1 style="text-align: left; padding-top: 30px">
	<font size="+3" color="#cc0066">Search Results</font>
</h1>
	
<%
String key = request.getParameter("search");
Connection con1 = Databasecon.getconnection();
Statement st1 = con1.createStatement();
ResultSet rs = st1.executeQuery("select * from movies_tab where movie_ct like '%" + key + "%' group by tname ");
%>
<div class="main">
	<div class="about_grid1">
		<div class="container">
			<div class="album_1">
				<%
				while (rs.next()) {
				%>
				<div class="col-md-4 album_5">
					<div class="col_1_of_2 span_1_of_2">
						<a href="ticket?tid=<%=rs.getString(1)%>"><img src="Data/<%=rs.getString("pic_ct")%>" class="img-responsive" alt="Movie"/></a>
					</div>
					<div class="clearfix"></div>

					<p class="off1">
					<h3><%=rs.getString("movie_ct")%></h3>
					<%=rs.getString("tname")%>
					<br><%=rs.getString("screen_ct")%>
					</p>
				</div>
				<%
				}
				%>

			</div>
		</div>
	</div>


	<%@ include file="footer.jsp"%>