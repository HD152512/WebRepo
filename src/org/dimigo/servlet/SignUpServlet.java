package org.dimigo.servlet;

import com.google.gson.Gson;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;

@WebServlet(name = "SignUpServlet", urlPatterns = {"/signup"})
public class SignUpServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");

        request.setCharacterEncoding("utf-8");
        String id = request.getParameter("id");
        String pwd = request.getParameter("pwd");
        String name = request.getParameter("name");
        String nickname = request.getParameter("nickname");
        System.out.printf("id : %s, pwd: %s, name: %s, nickname: %s\n", id, pwd, name, nickname);

        boolean result = true;
        System.out.println(result);

        response.setContentType("application/json;charset=utf-8");
        PrintWriter out = response.getWriter();

        Gson gson = new Gson();
        Map<String, Object> map = new HashMap<String, Object>();

        if(result) {
            map.put("msg", "success");
        } else {
            map.put("msg", "error");
        }

        System.out.println(gson.toJson(map));
        out.write(gson.toJson(map));
        out.close();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RequestDispatcher rd = request.getRequestDispatcher("/jsp/signup.jsp");
        rd.forward(request,response);
    }

}
