<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>どこつぶ - パスワードリセット</title>
</head>
<body>
<h1>パスワードを忘れた場合</h1>

<!-- パスワードリセットフォーム -->
<form action="/docoTsubu/PasswordResetServlet" method="post">
メールアドレス：<input type="email" name="email"><br>
<input type="submit" value="パスワードリセット">
</form>

<hr> <!-- 水平線を追加 -->

<!-- ログインへのリンク -->
<a href="/docoTsubu/index.jsp">ログイン</a>

</body>
</html>
