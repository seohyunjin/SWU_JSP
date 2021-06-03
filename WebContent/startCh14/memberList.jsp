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
		conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/mydb", "root", "1111");//Connection 생성
		stmt = conn.createStatement();//Statement 생성
		rs = stmt.executeQuery("select * from tblmember"); //질의실행결과를 ResultSet에 담는다.
%>
<html>
<head>
<title>[MemberList]</title>
<link href="style.css" rel="stylesheet" type="text/css">
</head>
<body bgcolor="#FFFFFC">
	<h2>[MemberList]</h2><br/>
	<h3>회원정보 목록</h3>
	<table bordercolor="#0000ff" border="2">
		<tr>
			<td><strong>아이디</strong></td>
			<td><strong>비밀번호</strong></td>
			<td><strong>이름</strong></td>
			<td><strong>성별</strong></td>
			<td><strong>생년월일</strong></td>
			<td><strong>이메일</strong></td>
			<td><strong>우편번호</strong></td>
			<td><strong>주소</strong></td>
			<td><strong>취미</strong></td>
			<td><strong>직업</strong></td>
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
	회원 수 :<%=counter%> 명
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