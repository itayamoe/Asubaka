package servlet;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/PasswordResetServlet")
public class PassReset extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // フォームからメールアドレスを取得
        String email = request.getParameter("email");
        
        // ここにパスワードリセットのロジックを実装
        // ユーザーのメールアドレスに関連付けられたアカウントのパスワードをリセットし、新しいパスワードをユーザーに送信
        
        // パスワードリセットが成功した場合の処理（例: リセット完了メッセージを表示）
        response.setContentType("text/html; charset=UTF-8");
        response.getWriter().println("<html><head><title>パスワードリセット完了</title></head><body>");
        response.getWriter().println("<h1>パスワードリセットが完了しました</h1>");
        response.getWriter().println("<p>新しいパスワードがメールで送信されました。</p>");
        response.getWriter().println("<p>メールをご確認ください。</p>");
        response.getWriter().println("</body></html>");
    }
}
