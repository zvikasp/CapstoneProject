<%@ include file="header.jsp"%>

<h1 style="text-align: center; padding-top: 30px">
	<font size="" color="#cc0066">Register Here</font>
</h1>
<body>
	<table align="center">
		<tr>
			<td colspan="2" align="center">
				<font size="2"><b> 
				<%
				 String id = request.getParameter("id");
				 if (id != null) {
				 	out.println(
				 	"<font color='red' size=+2><blink>Registration Success ! <br> <font color=#990066 size=4>Your User Id: <font color=#009900>"
				 			+ id + " </blink></font><br> <a href=user>Login Here</a><br><br>");
				 } 
				%>
				</b>
				</font>
			</td>
		</tr>
	</table>
	
	<form action="register1" method="get">
		<table align="center" cellpadding="5" cellspacing="5" width="400">
			<tr>
				<td style="padding-right: 10px"><font size="+1" color=#b41685><strong>First Name</strong>*</font><br>
					<input type="text" class="form-control" name="name" id="name"
					onblur="enableRegisterButton();" style="width: 250px;" required></td>
				<td><font size="+1" color=#b41685><strong>Last
							Name</strong>*</font><br> <input type="text" class="form-control"
					name="lname" id="lname" onblur="enableRegisterButton();"
					style="width: 250px;" required></td>
			</tr>
		</table>

		<table align="center" cellpadding="5" cellspacing="5" width="400">
			<tr>
				<td><font size="+1" color=#b41685><strong>Address</strong>*</font>
					<br> <input type="text" class="form-control" name="addr"
					id="addr" onblur="enableRegisterButton();" style="width: 510px;"
					required></td>
			</tr>
			<tr>
		</table>

		<table align="center" cellpadding="5" cellspacing="5" width="400">
			<tr>
				<td style="padding-right: 10px"><font size="+1" color=#b41685><strong>Telephone</strong></font>
					<br> <input type="tel" class="form-control" name="tele"
					style="width: 250px;" onkeypress="return isNumber(this.value);"></td>
				<td><font size="+1" color=#b41685><strong>Email</strong>*</font>
					<br> <input type="email" class="form-control" name="email"
					id="email"
					onblur="return validate(this.value);enableRegisterButton();"
					style="width: 250px;" required></td>
			</tr>
		</table>

		<table align="center" cellpadding="5" cellspacing="5" width="400">
			<tr>
				<td style="padding-right: 10px"><font size="+1" color=#b41685><strong>Password</strong>*</font>
					<br> <input type="password" class="form-control" name="pwd"
					id="pwd" onblur="enableRegisterButton();" style="width: 250px;"
					required></td>
				<td><font size="+1" color=#b41685><strong>Confirm
							Password</strong>*</font> <br> <input type="password" class="form-control"
					name="pwd2" id="pwd2" onblur="enableRegisterButton();"
					style="width: 250px;" required></td>
			</tr>
		</table>

		<table align="center" cellpadding="5" cellspacing="5" width="400">
			<tr>
				<td style="padding-top: 20px;" align="center"><input type="submit" class="btn btn-default"
					Value="Register" id="register" name="register"></td>
				<td style="padding-top: 20px;" align="left"><input type="reset" class="btn btn-default"
					value="Reset"></td>
			</tr>
		</table>
	</form>
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