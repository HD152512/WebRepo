package org.dimigo.servlet;

import org.dimigo.vo.UserVO;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "SessionServlet", urlPatterns = {"/session"})
public class SessionServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // 세션에 사용자정보가 있는지 체크 (null체크)하고
        // 없다면 jps/login.jsp 포워딩
        // 있다면 jsp/sessionInfo.jsp 포워딩 (id, name, nickname을 출력)

        HttpSession session = request.getSession();
        UserVO user = (UserVO) session.getAttribute("user");

        if(user == null) {
            response.sendRedirect("JSP/login.jsp");
        } else {
            RequestDispatcher rd = request.getRequestDispatcher("/JSP/sessionInfo.jsp");
            rd.forward(request,response);
        }
    }
}
