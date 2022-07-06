<%@ page import="java.sql.*" import="java.util.Date"
	import="java.util.Vector" import="databaseconnection.*" import="CT.*"
	import="javax.swing.JOptionPane"%>
<%@ include file="mheader.jsp"%>

<table style="text-align: left; padding: 20px">
	<tr>
		<td>
			<%
			String m = request.getParameter("id");
			if (m != null && m.equalsIgnoreCase("succ")) {
				out.println(
				"<tr><td><font  color='red'><blink><h3>&nbsp;&nbsp;&nbsp;Registration Success   !! </blink></font><br><br><br><br></h3>");
			}
			%>
		</td>
</table>

<!-- ********************************************************************************************************* -->

<form method="post" action="addtheater2">
	<div style="text-align: center;">
		<h1>Theater Registration</h1>
	</div>
	<table align="center">
		<tr>
			<td>
				<h3>
					<input type="text" name="tname" required style="width: 350px;"
						placeholder="Theater Name ">
				</h3>
			</td>
		</tr>
		<tr>
			<td>
				<h3>
					<input type="text" name="tname" required style="width: 350px;"
						placeholder="Theater Type ">
				</h3>
			</td>
		</tr>
		<tr>
			<td>
				<h3>
					<input type="number" name="screens" required
						placeholder="No of Screens" min="1" max="8" style="width: 350px;">
				</h3>
			</td>
		</tr>
		<tr>
			<td>
				<h3>
					<input type="number" name="contact" required
						placeholder="Contact Number" style="width: 350px;">
				</h3>
			</td>
		</tr>
		<tr>
			<td>
				<h3>
					<input type="email" name="email" required placeholder="Enter Email"
						style="width: 350px;">
				</h3>
			</td>
		</tr>
		<tr>
			<td>
				<h3>
					<input type="text" name="city" required placeholder="Enter City"
						style="width: 350px;">
				</h3>
			</td>
		</tr>
		<tr>
			<td>
				<h3>
					<textarea rows="" cols="22" name="address" style="width: 350px;"
						placeholder="Address "></textarea>
				</h3>
			</td>
		</tr>
		<tr>
			<td>
				<h3>
					<textarea rows="" cols="22" name="loc" style="width: 350px;"
						placeholder="Place Map Address "></textarea>
				</h3>
			</td>
		</tr>
		<tr>
			<td style="text-align: right">
				<h3>
					<input type="submit" value="Next >>">
				</h3>
			</td>
		</tr>
	</table>
</form>
<%@ include file="footer.jsp"%>