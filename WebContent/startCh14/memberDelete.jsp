<%@ page contentType="text/html; charset=EUC-KR" %>

<%
	String id = (String) session.getAttribute("idKey");
%>

<html>
<head>
<title>회원 탈퇴</title>
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
								<td colspan="3"><font color="#FFFFFC"><b>회원 탈퇴</b></font></td>
							</tr>
							<tr>
								<td width="20%">아이디</td>
								<td width="50%">
									<input name="id" size="15"
									value="<%=id%>" readonly>
								</td>
								<td width="30%">아이디를 적어 주세요.</td>
							</tr>
							<tr>
								<td>패스워드</td>
								<td><input type="password" name="pwd" size="15"></td>
								<td>패스워드를 적어주세요.</td>
							</tr>
							<tr>
								<td colspan="3" align="center">
								   <!-- <input type="button" value="회원탈퇴" onclick="inputCheck()"> -->
								   <input type="submit" value="회원탈퇴">
								    &nbsp; &nbsp; 
								    <input type="reset" value="다시쓰기">
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