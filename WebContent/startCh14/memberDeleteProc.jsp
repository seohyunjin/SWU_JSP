<%@page contentType="text/html; charset=EUC-KR" %>
<%request.setCharacterEncoding("EUC-KR");%>
<jsp:useBean id="mgr" class="ch14.MemberMgr"/>
<jsp:useBean id="bean" class="ch14.MemberBean"/>
<jsp:setProperty property="*" name="bean"/>


<%
      session.invalidate(); //���ǻ���
%>

<%
		boolean result = mgr.deleteMember(bean);
		String msg = "ȸ��Ż�� ���� �Ͽ����ϴ�.";
		String location = "memberDelete.jsp";
		if(result){
			msg = "ȸ��Ż�� �Ͽ����ϴ�.";
			location = "logout.jsp";
		}
%>
<script>
	alert("<%=msg%>");
	location.href = "<%=location%>";
</script>

