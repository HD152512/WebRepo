<%@ page import="org.dimigo.vo.UserVO" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    UserVO user = (UserVO) session.getAttribute("user");
%>
<h1>id: <%= user.getId() %></h1>
<h1>name: <%= user.getName() %></h1>
<h1>nickname: <%= user.getNickname() %></h1>

</body>
</html>
