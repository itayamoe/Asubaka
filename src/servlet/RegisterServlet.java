package servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class RegisterServlet extends HttpServlet {
    private static final String JDBC_URL = "jdbc:mysql://172.16.0.178:3306/asubaka";
    private static final String JDBC_USER = "root";
    private static final String JDBC_PASSWORD = "adminadmin";

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // フォームから新規登録情報を取得
        String newName = request.getParameter("newName");
        String newPass = request.getParameter("newPass");
        String email = request.getParameter("email");
        String nickname = request.getParameter("nickname");
        String goal = request.getParameter("goal");
        String reward = request.getParameter("reward");

        // データベースに新規登録情報を保存
        Connection connection = null;
        PreparedStatement preparedStatement = null;

        try {
            // JDBCドライバをロード
            Class.forName("com.mysql.jdbc.Driver");

            // データベースに接続
            connection = DriverManager.getConnection(JDBC_URL, JDBC_USER, JDBC_PASSWORD);

            // SQLクエリを作成（適切なテーブル名とカラム名に置き換えてください）
            String sql = "INSERT INTO users (username, password, email, nickname, goal, reward) VALUES (?, ?, ?, ?, ?, ?)";
            preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1, newName);
            preparedStatement.setString(2, newPass);
            preparedStatement.setString(3, email);
            preparedStatement.setString(4, nickname);
            preparedStatement.setString(5, goal);
            preparedStatement.setString(6, reward);

            // クエリを実行し、新規登録情報をデータベースに保存
            int rowsAffected = preparedStatement.executeUpdate();

            if (rowsAffected > 0) {
                // 登録成功した場合、index.jsp にリダイレクト
                response.sendRedirect("/docoTsubu/index.jsp");
            } else {
                // 登録に失敗した場合の処理を追加（例: エラーメッセージの表示）
            }
        } catch (SQLException | ClassNotFoundException e) {
            // 例外処理（エラーログの出力など）
            e.printStackTrace();
        } finally {
            // リソースのクローズ
            try {
                if (preparedStatement != null) {
                    preparedStatement.close();
                }
                if (connection != null) {
                    connection.close();
                }
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }
}
