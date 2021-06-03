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
			   birthday = "", 
			   email = "";
			   
	int counter = 0;
	try {
		conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/mydb", "root", "1111");//Connection ����
		stmt = conn.createStatement();//Statement ����
		rs = stmt.executeQuery("select * from member"); //���ǽ������� ResultSet�� ��´�.
%>
<html>
<head>
<title>JSP���� �����ͺ��̽� ����</title>
<link href="style.css" rel="stylesheet" type="text/css">
</head>
<body bgcolor="#FFFFCC">
	<h2>JSP ��ũ��Ʋ������ �����ͺ��̽� ���� ����</h2><br/>
	<h3>ȸ������</h3>
	<table bordercolor="#0000ff" border="1">
		<tr>
			<td><strong>ID</strong></td>
			<td><strong>PWD</strong></td>
			<td><strong>NAME</strong></td>
			<td><strong>BIRTHDAY</strong></td>
			<td><strong>EMAIL</strong></td>
		</tr>
		<%
			if (rs != null) {

					while (rs.next()) {
						id = rs.getString("id");
						pwd = rs.getString("pwd");
						name = rs.getString("name");
						birthday = rs.getString("birthday");
						email = rs.getString("email");
		%>
		<tr>
			<td><%=id%></td>
			<td><%=pwd%></td>
			<td><%=name%></td>
			<td><%=birthday%></td>
			<td><%=email%></td>
		</tr>
			<%
				counter++;
						}//end while
					}//end if
			%>
	</table>
	<br/>
	total records :<%=counter%>
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