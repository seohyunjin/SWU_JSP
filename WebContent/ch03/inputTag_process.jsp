<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
    <%request.setCharacterEncoding("euc-kr"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

<table border =1 width =200>
  <tr>
    <td>아이디</td>
    <td><%= request.getParameter("id") %></td>
  </tr>
  <tr>
     <td>비밀번호</td>
     <td><%= request.getParameter("passwd") %></td>
  </tr>
</table>

</body>
</html>