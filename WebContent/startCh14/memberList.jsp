<%@ page contentType="text/html;charset=EUC-KR" import="java.sql.*"%>
<%@ page import="java.util.*"%>
<%
	Class.forName("org.gjt.mm.mysql.Driver");
	Connection conn = null;
	Statement stmt = null;
	ResultSet rs = null;

	String id = "", 
		   pwd = "", 
		   name = "",
		   gender = "",
		   birthday = "", 
		   email = "",
		   zipcode ="",
		   address = "",
		   hobby = "",
		   job = "";
			   
	int counter = 0;
	try {
		conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/mydb", "root", "1111");//Connection ����
		stmt = conn.createStatement();//Statement ����
		rs = stmt.executeQuery("select * from tblmember"); //���ǽ������� ResultSet�� ��´�.
%>
<html>
<head>
<title>[MemberList]</title>
<link href="style.css" rel="stylesheet" type="text/css">
</head>
<body bgcolor="#FFFFFC">
	<h2>[MemberList]</h2><br/>
	<h3>ȸ������ ���</h3>
	<table bordercolor="#0000ff" border="2">
		<tr>
			<td><strong>���̵�</strong></td>
			<td><strong>��й�ȣ</strong></td>
			<td><strong>�̸�</strong></td>
			<td><strong>����</strong></td>
			<td><strong>�������</strong></td>
			<td><strong>�̸���</strong></td>
			<td><strong>�����ȣ</strong></td>
			<td><strong>�ּ�</strong></td>
			<td><strong>���</strong></td>
			<td><strong>����</strong></td>
		</tr>
		<%
			if (rs != null) {

					while (rs.next()) {
						id = rs.getString("id");
						pwd = rs.getString("pwd");
						name = rs.getString("name");
						gender = rs.getString("gender");
						birthday = rs.getString("birthday");
						email = rs.getString("email");
						zipcode= rs.getString("zipcode");
						address= rs.getString("address");
						hobby= rs.getString("hobby");
						job= rs.getString("job");
		%>
		<tr>
			<td><%=id%></td>
			<td><%=pwd%></td>
			<td><%=name%></td>
			<td><%=gender%></td>
			<td><%=birthday%></td>
			<td><%=email%></td>
			<td><%=zipcode%></td>
			<td><%=address%></td>
			<td><%=hobby%></td>
			<td><%=job%></td>
		</tr>
			<%
				counter++;
						}//end while
					}//end if
			%>
	</table>
	<br/>
	ȸ�� �� :<%=counter%> ��
	<%
		} catch (SQLException sqlException) {
			System.out.println("sql exception");
		} catch (Exception exception) {
			System.out.println("exception");
		} finally {
			if (rs != null)
				try {rs.close();} 
				catch (SQLException ex) {}
			if (stmt != null)
				try {stmt.close();} 
				catch (SQLException ex) {}
			if (conn != null)
				try {conn.close();} 
				catch (Exception ex) {}
		}
	%>