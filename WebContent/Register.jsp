<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>どこつぶ - 新規登録</title>
<script>
  function validatePassword() {
    var password = document.getElementById("newPass").value;
    
    // パスワードが6文字以上で、大文字と数字を含むかを検証
    if (password.length < 6 || !/[A-Z]/.test(password) || !/[0-9]/.test(password)) {
      alert("パスワードは大文字と数字を含めた6文字以上にしてください。");
      return false;
    }
    
    return true;
  }
</script>
</head>
<body>
<h1>新規登録</h1>

<!-- 新規登録フォーム -->
<form action="/docoTsubu/RegisterServlet" method="post" onsubmit="return validatePassword();">
<!-- ニックネーム：<input type="text" name="nickname"><br> -->
ユーザー名：<input type="text" name="newName"><br>
パスワード：<input type="password" name="newPass" id="newPass"><br>
メールアドレス：<input type="email" name="email"><br>
達成したい目標：<input type="text" name="goal"><br>
達成報酬：<input type="text" name="reward"><br>
<input type="submit" value="新規登録">
</form>

<hr> <!-- 水平線を追加 -->

<!-- ログインへのリンク -->
<a href="/docoTsubu/index.jsp">ログイン</a>

</body>
</html>