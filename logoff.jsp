<%@ page language= "java" import = "com.senior.* , java.sql.*" session= "true" %>
<% 
session.removeAttribute("status");
session.removeAttribute("user");
session.removeAttribute("password");
%>

<html>
<jsp:forward page="index.jsp"></jsp:forward>
</html>