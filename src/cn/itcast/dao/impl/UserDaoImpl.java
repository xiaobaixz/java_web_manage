package cn.itcast.dao.impl;

import cn.itcast.dao.UserDao;
import cn.itcast.domin.user;
import cn.itcast.util.JDBCUtils;
import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Set;

public class UserDaoImpl implements UserDao {
    private JdbcTemplate template = new JdbcTemplate(JDBCUtils.getDataSource());

    @Override
    public List<user> findAll() {
        // 使用JDBC操作数据库
        // 1.定义sql
        String sql = "select * from user";
        List<user> users = template.query(sql, new BeanPropertyRowMapper<user>(user.class));
        System.out.println(users);

        return users;
    }

    // 实现用户名及密码的登录查询操作
    @Override
    public user findUserByUsernameAndPassword(String username, String password) {
        try {
            String sql = "select * from user where username = ? and password = ?";
            user user = template.queryForObject(sql, new BeanPropertyRowMapper<user>(user.class), username, password);
            return user;
        } catch (DataAccessException e) {
            e.printStackTrace();
            return null;
        }
    }

    // 实现向数据库添加数据的操作
    @Override
    public void add(user user) {
        // 1.定义sql
        String sql = "insert into user values(null,?,?,?,?,?,?,null,null)";
        // 2.执行sql
        template.update(sql, user.getName(), user.getGender(), user.getAge(), user.getAddress(), user.getQq(), user.getEmail());
    }

    // 根据id删除指定的行数据的实现类
    @Override
    public void delete(int id) {
        // 定义sql
        String sql = "delete from user where id = ?";
        // 执行删除数据的方法
        template.update(sql, id);
    }

    // 根据id查询数据，回显到update.jsp的实现类
    @Override
    public user findById(int id) {
        String sql = "select * from user where id = ?";
        // 返回获取的所有数据的集合
        return template.queryForObject(sql, new BeanPropertyRowMapper<user>(user.class), id);
    }

    // 修改某个人的所有数据
    @Override
    public void update(user user) {
        String sql = "update user set name = ?, gender = ?, age = ?, address = ?,  qq = ?, email = ? where id = ?";
        template.update(sql, user.getName(), user.getGender(), user.getAge(), user.getAddress(), user.getQq(), user.getEmail(), user.getId());
    }



    // 查询总记录数的方法
    @Override
    public int findTotalCount(Map<String, String[]> condition) {
        // 1.定义模板sql
        String sql = "select count(*) from user where 1=1";
        StringBuilder sb = new StringBuilder(sql);  // 可变类，速度更快
        // 2.遍历map
        Set<String> keySet = condition.keySet();

        // 定义参数的集合
        ArrayList<Object> params = new ArrayList<>();

        for (String key : keySet) {
            // 排除分页条件的参数
            if ("currentPage".equals(key) || "rows".equals(key)){
                continue;
            }

            // 根据key获取value
            String value = condition.get(key)[0];
            // 判断value是否有值
            if(value!=null && !"".equals(value)){
                // 证明其有值
                sb.append(" and " + key + " like ? ");
                params.add("%" + value + "%");  // 加上参数，用于template的传参问题
            }
        }

        // 打印出toString，用于测试
        System.out.println(sb.toString());
        System.out.println(params);

        // 自动将结果转换为int型结果，并且返回
        return template.queryForObject(sb.toString(), Integer.class, params.toArray());
    }



    // 分页查询每页记录的实现
    @Override
    public List<user> findByPage(int start, int rows, Map<String, String[]> condition) {
        String sql = "select * from user where 1 = 1";   // 分页查询
        StringBuilder sb = new StringBuilder(sql);  // 可变类，速度更快
        // 2.遍历map
        Set<String> keySet = condition.keySet();

        // 定义参数的集合
        ArrayList<Object> params = new ArrayList<>();

        for (String key : keySet) {
            // 排除分页条件的参数
            if ("currentPage".equals(key) || "rows".equals(key)){
                continue;
            }

            // 根据key获取value
            String value = condition.get(key)[0];

            // 判断value是否有值
            if(value!=null && !"".equals(value)){
                // 证明其有值
                sb.append(" and " + key + " like ? ");
                params.add("%" + value + "%");  // 加上参数，用于template的传参问题
            }
        }

        // 添加分页的查询
        sb.append(" limit ?, ? ");

        // 添加分页查询的参数值
        params.add(start);
        params.add(rows);
        System.out.println(params);

        return template.query(sb.toString(), new BeanPropertyRowMapper<user>(user.class), params.toArray());
    }
}
