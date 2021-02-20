package cn.itcast.web.servlet;

import cn.itcast.domin.user;
import cn.itcast.service.impl.UserServiceImpl;
import org.apache.commons.beanutils.BeanUtils;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.util.Map;

@WebServlet("/addUserServlet")
public class AddUserServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // 1. 解决post编码问题，防止中文乱码
        request.setCharacterEncoding("utf-8");

        // 2. 获取页面中的参数
        Map<String, String[]> map = request.getParameterMap();
        // 3. 调用BeanUtils，封装对象
        user user = new user();
        try {
            BeanUtils.populate(user, map);
        } catch (IllegalAccessException e) {
            e.printStackTrace();
        } catch (InvocationTargetException e) {
            e.printStackTrace();
        }

        // 4.调用service保存
        UserServiceImpl service = new UserServiceImpl();
        service.addUser(user);

        // 5.跳转到userListServlet，也就是将数据库中的页面重新展示到页面中
        response.sendRedirect(request.getContextPath() + "/findUserByPageServlet");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request, response);
    }
}
