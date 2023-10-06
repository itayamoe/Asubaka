<%-- リスト10-6の状態 --%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>asubaka - ログイン</title>
</head>
<body>
<h1>asubakaへようこそ</h1>

<!-- ログインフォーム -->
<form action="/docoTsubu/LoginServlet" method="post">
ユーザー名：<input type="text" name="name"><br>
パスワード：<input type="password" name="pass"><br>
<input type="submit" value="ログイン">
</form>

<a href="/docoTsubu/PassForget.jsp">パスワードを忘れた方</a>

<hr> <!-- 水平線を追加 -->

<!-- 新規登録へのリンク -->
<a href="/docoTsubu/Register.jsp">新規登録</a>

</body>
</html>
