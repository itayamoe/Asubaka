<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="model.User" %>
<%
// セッションスコープからユーザー情報を取得
User loginUser = (User) session.getAttribute("loginUser");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>アスバカ</title>
</head>
</head>
<body>
<h1>アスバカログイン</h1>
<% if(loginUser != null) { %>
<p>ログインに成功しました</p>
<p>ようこそ<%= loginUser.getName() %>さん</p>
<a href="/Asubaka/Main">つぶやき投稿・閲覧へ</a>
<% } else { %>
<p>ログインに失敗しました</p>
<a href="/Asubaka/">TOPへ</a>
<% } %>
</body>
</html>