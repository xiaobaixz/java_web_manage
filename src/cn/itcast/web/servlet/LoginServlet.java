package cn.itcast.web.servlet;

import cn.itcast.domin.user;
import cn.itcast.service.impl.UserServiceImpl;
import org.apache.commons.beanutils.BeanUtils;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.util.Map;

@WebServlet("/loginServlet")
public class LoginServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // 1.设置编码
        request.setCharacterEncoding("utf-8");

        System.out.println("我是loginServlet");

        // 2.获取数据
        // 2.1 获取页面中验证码数据
        String verifycode = request.getParameter("verifycode");
        // 2.2.验证码校验
        HttpSession session = request.getSession();

        // 在session取出验证码，并强制类型转换为String类型
        String checkcode_server = (String) session.getAttribute("CHECKCODE_SERVER");
        session.removeAttribute("CHECKCODE_SERVER");    // 防止验证码被多次使用，这里移除session中验证码

        if (!checkcode_server.equalsIgnoreCase(verifycode)) {
            // 验证码不正确
            // 提示信息
            request.setAttribute("login_msg", "验证码输入错误!");
            // 跳转登录页面
            request.getRequestDispatcher("/login.jsp").forward(request, response);

            return;   // 验证码输入错误，直接还是返回到登录的页面，不进行下面的步骤啦
        }


        // 3.封装user对象
        Map<String, String[]> map = request.getParameterMap();  // 获取所有参数的集合
        user user = new user();     // 实例化user类
        try {
            BeanUtils.populate(user, map);  // 调用spring，封装对应的两个对象
        } catch (IllegalAccessException e) {
            e.printStackTrace();
        } catch (InvocationTargetException e) {
            e.printStackTrace();
        }


        // 5.调用Service查询
        UserServiceImpl service = new UserServiceImpl();
        user login_user = service.login(user);  // 向数据库中查询用户名和密码，对比页面中的结果

        // 6.判断是否登录成功
        if (login_user != null) {
            // 登陆成功
            // 将用户存入session，过滤器的关键对象
            session.setAttribute("user", login_user);

            // 用户名、密码、验证码比对通过，将页面转发到index.jsp页面中
            response.sendRedirect(request.getContextPath() + "/index.jsp");
        } else {
            // 登陆失败
            request.setAttribute("login_msg", "用户名或密码错误!");
            // 重新跳转到登录页面，让你重新登录
            request.getRequestDispatcher("/login.jsp").forward(request, response);
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request, response);
    }
}
