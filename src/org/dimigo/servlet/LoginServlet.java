package org.dimigo.servlet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "LoginServlet", urlPatterns={"/login"})

public class LoginServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        request.setCharacterEncoding("utf-8");
        String id = request.getParameter("id");
        String pwd = request.getParameter("pwd");
        System.out.printf("id : %s, pwd : %s\n",id,pwd);

        response.setContentType("application/json;charset=utf-8");
        PrintWriter out = response.getWriter();

        out.println("{");
        out.println("\"id\":"+"\""+id+"\",");
        out.println("\"pwd\":"+"\""+pwd+"\"");
        out.println("}");

        out.close();

        // JSON Simple Library
//        JSONObject json = new JSONObject();
//        json.put("id", id);
//        System.out.println(json.toJSONString());
//        out.write(json.toJSONString());

        // Gson Library 사용해서 소스 작성하기

//        Gson gson = new Gson();
//        JsonObject object = new JsonObject();
//        object.addProperty("id", id);
//        String json = gson.toJson(object);
//        out.write(json);

        out.close();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}