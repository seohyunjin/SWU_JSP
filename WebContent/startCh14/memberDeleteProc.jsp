<%@page contentType="text/html; charset=EUC-KR" %>
<%request.setCharacterEncoding("EUC-KR");%>
<jsp:useBean id="mgr" class="ch14.MemberMgr"/>
<jsp:useBean id="bean" class="ch14.MemberBean"/>
<jsp:setProperty property="*" name="bean"/>


<%
      session.invalidate(); //세션삭제
%>

<%
		boolean result = mgr.deleteMember(bean);
		String msg = "회원탈퇴에 실패 하였습니다.";
		String location = "memberDelete.jsp";
		if(result){
			msg = "회원탈퇴를 하였습니다.";
			location = "logout.jsp";
		}
%>
<script>
	alert("<%=msg%>");
	location.href = "<%=location%>";
</script>

