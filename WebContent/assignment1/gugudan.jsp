<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>������ ���</title>
</head>
<body>
<%
	String num = request.getParameter("num");
	int inputNum = Integer.parseInt(num);  //String�� int������ ��ȯ
%>

<!--2017110803 ������ -->

<%
for(int i=1;i<10;i++)
{out.println(inputNum + "x" + i + "=" + inputNum*i +"<br>");  }
%>

<br>

<TABLE border=1 >
<%
for(int i=1;i<10;i++)
{%>
<tr><td>
	<% out.println(inputNum + "x" + i + "=" + inputNum*i +"<br>"); 
}%></td></tr>
</TABLE>



<p>
<a href="javascript:history.go(-1)">���� ������</a>


</body>
</html>