package cn.itcast.dao;

import cn.itcast.domin.user;

import java.util.List;
import java.util.Map;

/**
 * 用户操作的DAO
 */
public interface UserDao {
    List<user> findAll();
    user findUserByUsernameAndPassword(String username, String password);

    void add(user user);    // 添加页面上的数据到数据库

    void delete(int id);    // 根据id删除指定的行数据

    user findById(int id);    // 根据id查询数据，回显到update.jsp

    void update(user user);   // 修改数据的抽象方法

    int findTotalCount(Map<String, String[]> condition);   // 查询数据库中的总记录数

    List<user> findByPage(int start, int rows, Map<String, String[]> condition); // 分页查询的抽象方法
}
