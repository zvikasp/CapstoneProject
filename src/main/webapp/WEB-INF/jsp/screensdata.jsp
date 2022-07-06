<%@ page import="java.sql.*" import="java.util.Date"
	import="java.util.Vector" import="databaseconnection.*" import="CT.*"
	import="javax.swing.JOptionPane"%>
<%@ include file="mheader.jsp"%>

<div style="padding-left: 100px">
<table width="60%" cellspacing="20">
	<tr bgcolor="#75c7e6">
		<td>
			<h2>
				Theater Id
			</h2>
		</td>	
		<td>
			<h2>
				Theater Name
			</h2>	
		</td>
		<td>
			<h2>
				Screen
			</h2>	
		</td>
	</tr>
		<%
		try {
			Connection con = Databasecon.getconnection();
			Statement st = con.createStatement();
			ResultSet rs = st.executeQuery("select tid_ct, screen_ct from theater_tab order by tid_ct");
			Statement st2 = con.createStatement();
			ResultSet rs2 = null;
			while (rs.next()) {
				rs2 = st2.executeQuery("select tid_ct, tname_ct, screen_ct from shows_tab where tid_ct='" + rs.getString(1) 
					+ "' and screen_ct='" + rs.getString(2) + "'");
				while (rs2.next()) {
				%>
				<tr style="border: 1px solid; background-color:#befaaf;">
					<td style="text-align: center;">
						<h4><%=rs2.getString(1)%></h4>
					</td>
					<td>
						<h4><%=rs2.getString(2)%></h4>
					</td>
					<td>
						<h4>
							<a href="screendata2?1=<%=rs2.getString(1)%>&&2=<%=rs2.getString(2)%>&&3=<%=rs2.getString(3)%>">
							<%=rs2.getString(3)%>
							</a>
						</h4>
					</td>
				</tr>
 			<%
 			}
 		}
 	} catch (Exception e) {
 		System.out.println("Exception Occured............" + e);
 	}
 	%>
</table>
</div>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>

<%@ include file="footer.jsp"%>