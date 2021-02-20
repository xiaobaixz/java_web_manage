package cn.itcast.service.impl;

import cn.itcast.dao.UserDao;
import cn.itcast.dao.impl.UserDaoImpl;
import cn.itcast.domin.PageBean;
import cn.itcast.domin.user;
import cn.itcast.service.Userservice;

import java.util.List;
import java.util.Map;

public class UserServiceImpl implements Userservice {
    // 调用UserDaoImpl类，获取所有的数据库数据
    private UserDao dao = new UserDaoImpl();

    // 重写接口的方法，返回数据
    @Override
    public List<user> findAll() {
        // 调用Dao完成查询
        return dao.findAll();
    }


    // 向数据库中查询用户名及密码
    @Override
    public user login(user user) {
        return dao.findUserByUsernameAndPassword(user.getUsername(), user.getPassword());
    }

    // 向数据库添加页面上具体数据的实现类
    @Override
    public void addUser(user user) {
        dao.add(user);
    }

    // 根据id删除指定数据的实现类
    @Override
    public void deleteUser(String id) {
        // 将字符串类型强制转化为int类型
        dao.delete(Integer.parseInt(id));
    }

    // 回显数据到update.jsp的实现方法
    @Override
    public user findUserById(String id) {
        return dao.findById(Integer.parseInt(id));
    }

    // 修改用户数据的实现方法
    @Override
    public void updateUser(user user) {
        dao.update(user);
    }

    // 批量删除的实现方法
    @Override
    public void delSelectedUser(String[] ids) {
        for (String id : ids) {
            // 调用dao删除
            dao.delete(Integer.parseInt(id));
        }
    }

    // 分页条件查询的实现方法
    @Override
    public PageBean<user> findUserByPage(String _currentPage, String _rows, Map<String, String[]> condition) {
        // String类型转化为int类型
        // Integer.parseInt是强制类型转换
        int currentPage = Integer.parseInt(_currentPage);
        int rows = Integer.parseInt(_rows);

        // 防止第一页还能点的情况
        if (currentPage<=0){
            currentPage=1;
        }


        // 1.创建空的PageBean对象
        PageBean<user> pb = new PageBean<user>();

        // 2.调用dao查询总记录数
        int totalCount = dao.findTotalCount(condition);
        pb.setTotalCount(totalCount);

        // 3.计算总页码
        int totalPage = (totalCount % rows) == 0 ? (totalCount / rows) : (totalCount / rows + 1);
        pb.setTotalPage(totalPage);

//        System.out.println(currentPage + "---" + totalPage);

        // 防止最后一页还能点的情况
        if (currentPage>=totalPage){
            currentPage=totalPage;
        }

        // 4.设置参数
        pb.setCurrentPage(currentPage);
        pb.setRows(rows);


        // 5.调用dao查询List集合
        // 计算开始的计算索引
        int start = (currentPage - 1) * rows;
        List<user> list = dao.findByPage(start,rows,condition);
        pb.setList(list);

        return pb;
    }
}
