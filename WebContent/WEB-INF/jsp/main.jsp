<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="jakarta.tags.core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>あすばか</title>
</head>
<body>
<h1>あすばかメイン</h1>
<p>
<c:out value="${loginUser.name}" />さん、ログイン中
</p>

<!-- 66日間の継続達成度の表示 -->
<div>
    <h2>達成度</h2>
    <!-- プログレスバー -->
    <progress value="${achievedDays}" max="66"></progress> <c:out value="${achievedDays}" />日 / 66日
</div>

<!-- 達成日数と残り日数の表示 -->
<p>達成日数: <c:out value="${achievedDays}" />日</p>
<p>残り日数: <c:out value="${remainingDays}" />日</p>

<!-- ランダムな犬・猫の画像 -->
<img src="${animalImagePath}" alt="動物の画像" />

<!-- その日の目標達成を確認するボタン -->
<div>
    <h2>今日の目標</h2>
    <button id="achievedButton">やった！</button>
    <button id="notAchievedButton">やってない</button>
</div>

<!-- 目標の詳細や変更、削除機能 -->
<div>
    <h2>目標設定</h2>
    <a href="targetDetails.jsp">目標の詳細</a>
    <a href="editTarget.jsp">目標の変更</a>
    <a href="deleteTarget.jsp">目標の削除</a>
</div>

<!-- 達成履歴表示 -->
<div>
    <h2>達成履歴</h2>
    <ul>
        <c:forEach items="${achievementHistory}" var="history">
            <li><c:out value="${history.date}" />: <c:out value


</body>
</html>