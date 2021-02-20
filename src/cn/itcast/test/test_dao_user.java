package cn.itcast.test;

import cn.itcast.dao.impl.UserDaoImpl;
import org.junit.Test;


/**
 * 测试数据访问层是否能正确的获取数据
 */
public class test_dao_user {
    @Test
    public void test_dao_user(){
        UserDaoImpl dao = new UserDaoImpl();
        System.out.println(dao.findAll());
    }
}
