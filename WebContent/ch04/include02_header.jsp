<%@ page language="java" 
contentType="text/html; charset=EUC-KR"
pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%! int pageCount =0;

	void addCount(){
		pageCount++;
	}
%>
<%
	addCount();
%>

<p>�� ����Ʈ �湮��
<font style = "background-color :gold; width : 15px;" >
<%= pageCount %>  </font>
</body>
</html>