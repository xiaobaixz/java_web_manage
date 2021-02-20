package cn.itcast.web.servlet;

import cn.itcast.domin.PageBean;
import cn.itcast.domin.user;
import cn.itcast.service.Userservice;
import cn.itcast.service.impl.UserServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Map;

@WebServlet("/findUserByPageServlet")
public class FindUserByPageServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // post请求需要设置编码
        request.setCharacterEncoding("utf-8");

        // 1.获取参数
        String currentPage = request.getParameter("currentPage");   // 获取当前页面
        String rows = request.getParameter("rows"); // 每页显示的条数

        System.out.println(currentPage);

        // 如果参数的值为null，null就赋值为初始值
        if (currentPage == null || "".equals(currentPage)){
            currentPage = "1";
        }
        if (rows == null || "".equals(rows)){
            rows = "5";
        }


        // 获取条件查询的参数，将所有的条件进行封装(map集合相当于python中字典)
        Map<String, String[]> condition = request.getParameterMap();


        // 2.调用service查询
        Userservice service = new UserServiceImpl();
        PageBean<user> pb = service.findUserByPage(currentPage, rows, condition);


        // 3.将Pagebean存入request
        request.setAttribute("pb", pb);
        // 3.1存储查询条件，回显的操作
        request.setAttribute("condition", condition);

//        System.out.println(pb);

        // 4.转发到list.jsp
        request.getRequestDispatcher("/list.jsp").forward(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request, response);
    }
}
