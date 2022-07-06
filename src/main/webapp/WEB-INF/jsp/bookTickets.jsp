
<%@ page import="java.sql.*" import="java.util.Date"
	import="java.util.Vector" import="databaseconnection.*"
	import="details.*" import="javax.swing.JOptionPane"%>

<%@ include file="uheader.jsp"%>
<br>
<br>
<form method="post" action="search1">
	<div style="padding-left: 100px;">
		<font size="+3" color="#cc0066">Movie Search</font><br> 
	</div>
	<br>
	<table>
		<tr>
			<td style="padding-left: 100px"><input type="text" name="search" class="form-control"
				placeholder="Enter Movie" size="40" required />
			</td>
			<td style="padding-left:10px;">
				<input type="submit" value="search">	
			</td>
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
<br>
<%@ include file="footer.jsp"%>