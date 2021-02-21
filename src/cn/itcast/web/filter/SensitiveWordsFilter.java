package cn.itcast.web.filter;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import java.io.*;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.util.ArrayList;
import java.util.List;

/**
 * 敏感词汇过滤器
 */
@WebFilter("/*")    // 过滤所有的请求
public class SensitiveWordsFilter implements Filter {
    public void doFilter(ServletRequest req, ServletResponse resp, FilterChain chain) throws ServletException, IOException {
        // 1.创建代理对象，增强getParameter方法
        // 2.放行
        ServletRequest proxy_req = (ServletRequest) Proxy.newProxyInstance(req.getClass().getClassLoader(), req.getClass().getInterfaces(), new InvocationHandler() {
            @Override
            public Object invoke(Object proxy, Method method, Object[] args) throws Throwable {
                // 增强getParameter方法getParameter

                // 判断是getParameter方法
                if (method.getName().equals("getParameter")){
                    // 获取返回值(这里的返回值就是个字符串，所以这里也强制转换字符串了)
                    String value = (String) method.invoke(req, args);
                    if (value != null){
                        for (String str : list) {
                            // 包含敏感字符
                            if (value.contains(str)){
                                value = value.replaceAll(str, "***");
                            }
                        }
                    }
                    return value;
                }
                // 把请求返回出去
                return method.invoke(req, args);
            }
        });

        // 放行request和response
        chain.doFilter(proxy_req, resp);

        //判断方法名是否是 getParameterMap
        //判断方法名是否是 getParameterValue
    }

    private List<String> list = new ArrayList<String>();    // 敏感词汇的集合
    public void init(FilterConfig config) throws ServletException {
        try {
            // 1.获取文件真实路径
            ServletContext context = config.getServletContext();
            String realPath = context.getRealPath("/WEB-INF/classes/SensitiveWords.txt");
            // 2.读取文件，同时解决了BufferedReader的乱码问题
            InputStreamReader isr = new InputStreamReader(new FileInputStream(realPath), "UTF-8");
            BufferedReader br = new BufferedReader(isr);

            // 3.将文件的每一行数据添加到List中
            String line = null;
            while ((line=br.readLine()) != null){
                list.add(line);
            }
            // 关闭读的资源
            br.close();

            System.out.println(list);

        } catch (FileNotFoundException | UnsupportedEncodingException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }

        // 3.将文件的每一行数据添加到list中
    }

    public void destroy() {

    }
}
