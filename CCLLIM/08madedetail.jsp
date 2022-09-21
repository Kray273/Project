
<%@page import="java.util.ArrayList"%>
<%@page import="DB.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>CCLLIM</title>
</head>
<body>


<%@ include file="01header.jsp" %>
<%
	    user_id = (String)session.getAttribute("user_id");
	    level = (String)session.getAttribute("user_level");
    	    	
	    if (user_id == null) {
			out.println("<script>alert('로그인이 필요합니다.');</script>");
			out.println("<script>location.href='01main.jsp'</script>");
		} else{
	    if (level.equals("4")) {
			out.println("<script>alert('권한이 없습니다.');</script>");
			out.println("<script>location.href='01main.jsp'</script>");
		} else if (level.equals("5")) {
			out.println("<script>alert('권한이 없습니다.');</script>");
			out.println("<script>location.href='01main.jsp'</script>");
		} else if (level.equals("6")) {
			out.println("<script>alert('권한이 없습니다.');</script>");
			out.println("<script>location.href='01main.jsp'</script>");
		}}
%> 
<div class="alert alert-secondary" role="alert">
 <div class="container">
	<p class = "display-5">Made_Detail </p>
</div>	
</div>
<%
	String no = request.getParameter("no");
	DTOmade list = DAOmade.detail(no);
%>

<div class="container w-70 bg-light">

  <div class="row mb-3">
    <label for="inputEmail3" class="col-sm-2 col-form-label">Title</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" id="inputEmail3" value="<%=list.getMade_title()%>" readonly>
    </div>
  </div>
  
  <div class="row mb-3">
    <label for="inputEmail3" class="col-sm-2 col-form-label">Content</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" id="inputEmail3" value="<%=list.getMade_content()%>" readonly>
    </div>
  </div>
</div>
<hr class="my-4">
	<div class="d-grid gap-2 col-6 mx-auto">
		<a href="javascript:window.history.back();" class="btn btn-outline-primary" role="button">뒤로</a>
	</div>
	
<%@ include file ="01footer.jsp" %>	

</body>
</html>
