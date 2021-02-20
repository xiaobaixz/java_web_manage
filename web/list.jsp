<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<!-- 网页使用的语言 -->
<html lang="zh-CN">
    <head>
        <!-- 指定字符集 -->
        <meta charset="utf-8">
        <!-- 使用Edge最新的浏览器的渲染方式 -->
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <!-- viewport视口：网页可以根据设置的宽度自动进行适配，在浏览器的内部虚拟一个容器，容器的宽度与设备的宽度相同。
        width: 默认宽度与设备的宽度相同
        initial-scale: 初始的缩放比，为1:1 -->
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
        <title>用户信息管理系统</title>

        <!-- 1. 导入CSS的全局样式 -->
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <!-- 2. jQuery导入，建议使用1.9以上的版本 -->
        <script src="js/jquery-2.1.0.min.js"></script>
        <!-- 3. 导入bootstrap的js文件 -->
        <script src="js/bootstrap.min.js"></script>
        <style type="text/css">
            td, th {
                text-align: center;
            }
        </style>

        <script>
            function deleteuser(id) {
                // 给出用户安全提示
                if (confirm("您确定要删除吗?")) {
                    location.href = "${pageContext.request.contextPath}/delUserServlet?id=" + id;
                }
            }

            window.onload = function () {
                // 给删除按钮添加单击事件
                document.getElementById("delSelected").onclick = function () {
                    var flag = false;   // 是否有选中条目的标记

                    if (confirm("您确定要删除选中的所有条目嘛?")) {
                        // 1.判断是否有选中条目，防止空指针异常
                        // 1.1获取下边列表中所有的cb
                        var cbs = document.getElementsByName("uid");
                        for (var i = 0; i < cbs.length; i++) {
                            if (cbs[i].checked) {
                                flag = true;
                                break;
                            }
                        }

                        if (flag) {
                            // 有条目被选中，提交表单
                            document.getElementById("form").submit();
                        } else {
                            alert("您一条数据都没有选中，无法进行删除的哦")
                        }
                    }
                };

                // 1.获取第一个cb
                document.getElementById("firstCb").onclick = function () {
                    // 获取下边列表中所有的cb
                    var cbs = document.getElementsByName("uid");
                    // 遍历
                    for (var i = 0; i < cbs.length; i++) {
                        // 4.设置这些cbs[i]的checked的状态和firstCb的状态一致
                        cbs[i].checked = this.checked;
                    }
                }
            }
        </script>

    </head>


    <body>
        <div class="container">
            <h3 style="text-align: center">用户信息列表</h3>

            <%--左上角的查询form表单--%>
            <div style="float: left">
                <%--上面的三个输入框的模糊查询--%>
                <form class="form-inline" action="${pageContext.request.contextPath}/findUserByPageServlet"
                      method="post">
                    <div class="form-group">
                        <label for="exampleInputName2">姓名</label>
                        <input name="name" type="text" value="${condition.name[0]}" class="form-control"
                               id="exampleInputName2">
                    </div>
                    <div class="form-group">
                        <label for="exampleInputEmail3">籍贯</label>
                        <input name="address" type="text" value="${condition.address[0]}" class="form-control"
                               id="exampleInputEmail3">
                    </div>
                    <div class="form-group">
                        <label for="exampleInputEmail4">Email</label>
                        <input name="email" type="text" value="${condition.email[0]}" class="form-control"
                               id="exampleInputEmail4">
                    </div>
                    <button type="submit" class="btn btn-default">查询</button>
                </form>
            </div>


            <%--添加和删除--%>
            <div style="float: right; margin: 5px">
                <a class="btn btn-primary" href="${pageContext.request.contextPath}/add.jsp">添加联系人</a>
                <a class="btn btn-primary" href="javascript:void(0);" id="delSelected">删除选中</a>
            </div>


            <form id="form" action="${pageContext.request.contextPath}/delSelectedServlet" method="post">
                <table border="1" class="table table-bordered table-hover">
                    <tr class="success">
                        <th><input type="checkbox" id="firstCb"></th>
                        <th>编号</th>
                        <th>姓名</th>
                        <th>性别</th>
                        <th>年龄</th>
                        <th>籍贯</th>
                        <th>QQ</th>
                        <th>邮箱</th>
                        <th>操作</th>
                    </tr>

                    <c:forEach items="${pb.list}" var="user" varStatus="s">
                        <tr>
                                <%--
                                    ${s.count}用来获取对应的变量，并且展示到页面上
                                --%>
                            <td><input type="checkbox" name="uid" value="${user.id}"></td>
                            <td>${s.count}</td>
                            <td>${user.name}</td>
                            <td>${user.gender}</td>
                            <td>${user.age}</td>
                            <td>${user.address}</td>
                            <td>${user.qq}</td>
                            <td>${user.email}</td>
                            <td><a class="btn btn-default btn-sm"
                                   href="${pageContext.request.contextPath}/findUserServlet?id=${user.id}">修改</a>&nbsp;
                                <a class="btn btn-default btn-sm" href="javascript:deleteuser(${user.id})">删除</a></td>
                        </tr>
                    </c:forEach>
                </table>
            </form>


            <%--底部的分页工具条--%>
            <div>
                <nav aria-label="Page navigation">
                    <ul class="pagination">
                        <%--禁用第一页的情况--%>
                        <c:if test="${pb.currentPage == 1}">
                            <li class="disabled">
                                <a href="${pageContext.request.contextPath}/findUserByPageServlet?currentPage=${pb.currentPage - 1}&rows=5&name=${condition.name[0]}&address=${condition.address[0]}&email=${condition.email[0]}"
                                   aria-label="Previous">
                                    <span aria-hidden="true">&laquo;</span>
                                </a>
                            </li>
                        </c:if>
                        <c:if test="${pb.currentPage != 1}">
                            <li>
                                <a href="${pageContext.request.contextPath}/findUserByPageServlet?currentPage=${pb.currentPage - 1}&rows=5&name=${condition.name[0]}&address=${condition.address[0]}&email=${condition.email[0]}"
                                   aria-label="Previous">
                                    <span aria-hidden="true">&laquo;</span>
                                </a>
                            </li>
                        </c:if>


                        <%--生成底部的那个页码--%>
                        <c:forEach begin="1" end="${pb.totalPage}" var="i">

                            <%--通过if判断是否处于当前页码--%>
                            <c:if test="${pb.currentPage == i}">
                                <li class="active">
                                    <a href="${pageContext.request.contextPath}/findUserByPageServlet?currentPage=${i}&rows=5&name=${condition.name[0]}&address=${condition.address[0]}&email=${condition.email[0]}">${i}</a>
                                </li>
                            </c:if>
                            <c:if test="${pb.currentPage != i}">
                                <li>
                                    <a href="${pageContext.request.contextPath}/findUserByPageServlet?currentPage=${i}&rows=5&name=${condition.name[0]}&address=${condition.address[0]}&email=${condition.email[0]}">${i}</a>
                                </li>
                            </c:if>
                        </c:forEach>


                        <%--判断是最后一页的情况--%>
                        <c:if test="${pb.currentPage != pb.totalPage}">
                            <li>
                                <a href="${pageContext.request.contextPath}/findUserByPageServlet?currentPage=${pb.currentPage + 1}&rows=5&name=${condition.name[0]}&address=${condition.address[0]}&email=${condition.email[0]}"
                                   aria-label="Next">
                                    <span aria-hidden="true">&raquo;</span>
                                </a>
                            </li>
                        </c:if>
                        <c:if test="${pb.currentPage == pb.totalPage}">
                            <li class="disabled">
                                <a href="${pageContext.request.contextPath}/findUserByPageServlet?currentPage=${pb.currentPage + 1}&rows=5&name=${condition.name[0]}&address=${condition.address[0]}&email=${condition.email[0]}"
                                   aria-label="Next">
                                    <span aria-hidden="true">&raquo;</span>
                                </a>
                            </li>
                        </c:if>
                        <span style="font-size: 25px; margin-left: 5px">共${pb.totalCount}有条记录，共${pb.totalPage}页</span>
                    </ul>
                </nav>
            </div>

        </div>
    </body>
</html>
