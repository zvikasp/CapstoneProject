<%@ include file="aheader.jsp"%>

<br>
<table align="center">
	<tr>
		<td>
			<%
			String m = request.getParameter("id");
			if (m != null && m.equalsIgnoreCase("succ")) {
				out.println("<font  color='white'><blink><h3>Registration Success!!</blink></font></h3>");
			}
			%>
		</td>
	</tr>	
</table>
<br>
<form method="post" action="managerreg">
	<h1 style="textalign: center">Manager Registration</h1>
	<table align="center">
		<tr>
			<td>
				<h4>
					<input type="text" name="name" required placeholder="Full Name"
						style="width: 350px;">
				</h4>
			</td>
		</tr>
		<tr>
			<td>
				<h4>
					<input type="text" name="email" required placeholder="Email"
						style="width: 350px;">
				</h4>
			</td>
		</tr>
		<tr>
			<td>
				<h4>
					<input type="text" name="ph" required placeholder="Phone Number"
						style="width: 350px;">
				</h4>
			</td>
		</tr>
		<tr>
			<td>
				<h4>
					<input type="text" name="mobile" required
						placeholder="Mobile Number" style="width: 350px;">
				</h4>
			</td>
		</tr>
		<tr>
			<td>
				<h4>
					<input type="text" name="street" required placeholder="Street"
						style="width: 350px;">
				</h4>
			</td>
		</tr>
		<tr>
			<td>
				<h4>
					<input type="text" name="city" required placeholder="City"
						style="width: 350px;">
				</h4>
			</td>
		</tr>
		<tr>
			<td>
				<h4>
					<input type="text" name="un" required placeholder="UserName"
						style="width: 350px;">
				</h4>
			</td>
		</tr>
		<tr>
			<td>
				<h4>
					<input type="password" name="pwd" required placeholder="Password"
						style="width: 350px;">
				</h4>
			</td>
		</tr>
		<tr>
			<td align="right">
				<div class="footer-grid last_grid">
					<h4>
						<input type="submit" value="Next >>">
					</h4>
				</div>
			</td>
		</tr>
	</table>
</form>
<%@ include file="footer.jsp"%>