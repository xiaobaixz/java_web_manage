import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;
import javax.servlet.http.HttpSessionAttributeListener;
import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;
import javax.servlet.http.HttpSessionBindingEvent;
import java.io.FileInputStream;

@WebListener()
public class ListenerDemo1 implements ServletContextListener,
        HttpSessionListener, HttpSessionAttributeListener {

    public ListenerDemo1() {
    }


    public void contextInitialized(ServletContextEvent servletContextEvent) {
        //加载资源文件
        //1.获取ServletContext对象
        ServletContext servletContext = servletContextEvent.getServletContext();

        //2.加载资源文件
        String contextConfigLocation = servletContext.getInitParameter("contextConfigLocation");

        //3.获取真实路径
        String realPath = servletContext.getRealPath(contextConfigLocation);

        //4.加载进内存
        try{
            FileInputStream fis = new FileInputStream(realPath);
            System.out.println(fis);
        }catch (Exception e){
            e.printStackTrace();
        }


        // 加载资源文件
        System.out.println("ServletContext被创建了");
    }

    public void contextDestroyed(ServletContextEvent sce) {
        System.out.println("ServletContext被销毁了");
    }


    public void sessionCreated(HttpSessionEvent se) {
        /* Session is created. */
    }

    public void sessionDestroyed(HttpSessionEvent se) {
        /* Session is destroyed. */
    }

    // -------------------------------------------------------
    // HttpSessionAttributeListener implementation
    // -------------------------------------------------------

    public void attributeAdded(HttpSessionBindingEvent sbe) {
      /* This method is called when an attribute 
         is added to a session.
      */
    }

    public void attributeRemoved(HttpSessionBindingEvent sbe) {
      /* This method is called when an attribute
         is removed from a session.
      */
    }

    public void attributeReplaced(HttpSessionBindingEvent sbe) {
      /* This method is invoked when an attibute
         is replaced in a session.
      */
    }
}
