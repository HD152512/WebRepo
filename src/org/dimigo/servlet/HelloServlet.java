package org.dimigo.servlet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(description = "첫번째 서블릿", urlPatterns = { "/hello" })
public class HelloServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public HelloServlet() {
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // 입력데이터 처리
        request.setCharacterEncoding("utf-8");

        String id = request.getParameter("id");
        String name = request.getParameter("name");
        System.out.printf("id : %s, name : %s \n", id, name);


        // 출력 데이터 Content Type 설정
        response.setContentType("text/html;charset=utf-8");
        PrintWriter out = response.getWriter();

        out.println("<!DOCTYPE html>");
        out.println("<html>");
        out.println("<head>");
        out.println("<title>Servlet Test</title>");
        out.println("</head>");
        out.println("<body>");
        out.println("<h1>Hello, Servlet</h1>");
        out.println("<h1>안녕, 서블릿</h1>");
        out.println("<h2>id : " + id + ", name : " + name + "</h2>");
        out.println("</body>");
        out.println("</html>");

        out.close();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("doPost()");
        doGet(request, response);
    }

    @Override
    public void init() throws ServletException {
        System.out.println("init()");
    }

    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        System.out.println("service()");
        super.service(req, resp);
    }

    @Override
    public void destroy() {
        System.out.println("destroy() 1111");
    }
}
