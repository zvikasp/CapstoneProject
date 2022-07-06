<%@ include file="header.jsp"%>

<h1 style="text-align: center; padding-top: 30px">
	<font size="" color="#cc0066">Admin Login</font>
</h1>
<%
session.invalidate();
%>
<%
String m = request.getParameter("id");
if (m != null && m.equalsIgnoreCase("exp")) {
	out.println("<script type=text/javascript>alert('Sorry, your session expired, login again '); </script>");
}
%>

<table align="center" cellspacing=20>
	<tr>
		<td>
			<%
			if (m != null && m.equalsIgnoreCase("fail")) {
				out.println("<font  color='red'><blink><h3>&nbsp;&nbsp;&nbsp;Login Fail   !! </blink></font></h3>");
			}
			%>
		</td>
	</tr>
</table>

<form method="post" action="alogin">
	<table align="center" cellpadding=20>
		<tr>
			<td>
				<div class="form-group">
					<input type="text" name="uid" class="form-control"
						placeholder="Enter Username" size="40" required />
				</div>
			</td>
		</tr>		
		<tr>
			<td>
				<div class="form-group">
					<input type="password" name="pwd" class="form-control"
						placeholder="Enter Password" size="40" required />
				</div>
			</td>
		</tr>		
		<tr>
			<td><button type="submit" class="btn btn-default">Login</button></td>

		</tr>
	</table>
</form>
<br>
<br>
<br>
<br>


<%@ include file="footer.jsp"%>