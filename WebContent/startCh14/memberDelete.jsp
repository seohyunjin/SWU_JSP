<%@ page contentType="text/html; charset=EUC-KR" %>

<%
	String id = (String) session.getAttribute("idKey");
%>

<html>
<head>
<title>ȸ�� Ż��</title>
<link href="style.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="script.js"></script>
<script type="text/javascript">
</script>
</head>
<body  onLoad="regFrm.id.focus()">
		<br /><br />
		<form name="regFrm" method="post" action="memberDeleteProc.jsp">
			<table cellpadding="5">
				<tr>
					<td>
						<table border="1" cellspacing="0" cellpadding="2" width="600">
							<tr align="center" bgcolor="#996600">
								<td colspan="3"><font color="#FFFFFC"><b>ȸ�� Ż��</b></font></td>
							</tr>
							<tr>
								<td width="20%">���̵�</td>
								<td width="50%">
									<input name="id" size="15"
									value="<%=id%>" readonly>
								</td>
								<td width="30%">���̵� ���� �ּ���.</td>
							</tr>
							<tr>
								<td>�н�����</td>
								<td><input type="password" name="pwd" size="15"></td>
								<td>�н����带 �����ּ���.</td>
							</tr>
							<tr>
								<td colspan="3" align="center">
								   <!-- <input type="button" value="ȸ��Ż��" onclick="inputCheck()"> -->
								   <input type="submit" value="ȸ��Ż��">
								    &nbsp; &nbsp; 
								    <input type="reset" value="�ٽþ���">
								    &nbsp; &nbsp; 
								</td>
							</tr>
						</table>
					</td>
				</tr>
			</table>
		</form>
</body>
</html>