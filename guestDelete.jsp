<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="ssi.jsp" %>
<%@ page import="net.tis.sql.GuestSQL" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>[guestDelete.jsp]</title>
<style type="text/css">
</style>
</head>
<body>
<%  //삭제하는 쿼리
	String temp = (String)session.getAttribute("naver"); //LoginList에서 naver에 a값을 넣었음 
	if (temp==null || temp==""){
		%>
		<script type="text/javascript">
		alert("삭제 권한이 없습니다. 로그인하세요.");
		location.href="login.jsp"
		</script>
		<%
	}else{
      System.out.println("[guestDelete] accessed ");
	  String data = request.getParameter("idx");
	  GuestSQL sql = new GuestSQL();
	  sql.dbDelete(data);
  	%>
	<script type="text/javascript">
	alert("데이터가 삭제되었습니다. 복귀작업은 안됩니다.");
	location.href="guestList.jsp";
	</script>
  	<%}%>
</body>
</html>