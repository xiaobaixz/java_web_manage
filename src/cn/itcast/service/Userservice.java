package cn.itcast.service;


import cn.itcast.domin.PageBean;
import cn.itcast.domin.user;

import java.util.List;
import java.util.Map;

/**
 * 用户管理的业务接口
 */
public interface Userservice {
    /**
     * 查询用户信息
     * @return
     */
    List<user> findAll();
    user login(user user);    // 登录验证用户名及密码是否正确
    void addUser(user user);     // 添加用户的方法

    void deleteUser(String id);     // 根据id删除用户的方法

    user findUserById(String id);   // 回显所有数据到update.jsp

    void updateUser(user user);     // 修改用户数据

    void delSelectedUser(String[] ids);     // 批量删除的方法

    PageBean<user> findUserByPage(String currentPage, String rows, Map<String, String[]> condition); // 分页查询
}
