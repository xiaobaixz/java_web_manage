<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<!-- 网页使用的语言 -->
<html lang="zh-CN">
    <head>
        <!-- 指定字符集 -->
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>修改用户</title>

        <link href="css/bootstrap.min.css" rel="stylesheet">
        <script src="js/jquery-2.1.0.min.js"></script>
        <script src="js/bootstrap.min.js"></script>

    </head>

    <body>
        <div class="container" style="width: 400px;">
            <h3 style="text-align: center;">修改联系人</h3>
            <form action="${pageContext.request.contextPath}/updateUserServlet" method="post">
                <%--这是一个隐藏域，用来在form中提交id的--%>
                <input type="hidden" name="id" value="${user.id}">

                <div class="form-group">
                    <label for="name">姓名：</label>
                    <input type="text" class="form-control" id="name" name="name" value="${user.name}"
                           readonly="readonly" placeholder="请输入姓名"/>
                </div>

                <div class="form-group">
                    <label>性别：</label>
                    <c:if test="${user.gender == '男'}">
                        <input type="radio" name="gender" value="男" checked/>男
                        <input type="radio" name="gender" value="女"/>女
                    </c:if>

                    <c:if test="${user.gender == '女'}">
                        <input type="radio" name="gender" value="男"/>男
                        <input type="radio" name="gender" value="女" checked/>女
                    </c:if>

                </div>

                <div class="form-group">
                    <label for="age">年龄：</label>
                    <input type="text" class="form-control" id="age" name="age" value="${user.age}"
                           placeholder="请输入年龄"/>
                </div>

                <div class="form-group">
                    <label for="address">籍贯：</label>
                    <select name="address" id="address" class="form-control">
                        <c:if test="${user.address == '北京'}">

                        <option value="北京" selected>北京市</option>
                        <option value="浙江省">浙江省</option>
                        <option value="天津市">天津市</option>
                        <option value="安徽省">安徽省</option>
                        <option value="上海市">上海市</option>
                        <option value="福建省">福建省</option>
                        <option value="重庆市">重庆市</option>
                        <option value="江西省">江西省</option>
                        <option value="山东省">山东省</option>
                        <option value="河南省">河南省</option>
                        <option value="湖北省">湖北省</option>
                        <option value="湖南省">湖南省</option>
                        <option value="广东省">广东省</option>
                        <option value="海南省">海南省</option>
                        <option value="山西省">山西省</option>
                        <option value="青海省">青海省</option>
                        <option value="江苏省">江苏省</option>
                        <option value="辽宁省">辽宁省</option>
                        <option value="吉林省">吉林省</option>
                        <option value="台湾省">台湾省</option>
                        <option value="河北省">河北省</option>
                        <option value="贵州省">贵州省</option>
                        <option value="四川省">四川省</option>
                        <option value="云南省">云南省</option>
                        <option value="陕西省">陕西省</option>
                        <option value="甘肃省">甘肃省</option>
                        <option value="黑龙江省">黑龙江省</option>
                        <option value="香港">香港</option>
                        <option value="澳门">澳门</option>
                        <option value="广西">广西</option>
                        <option value="宁夏">宁夏</option>
                        <option value="新疆">新疆</option>
                        <option value="内蒙古">内蒙古</option>
                        <option value="西藏">西藏</option>
                    </select>
                    </c:if>

                    <c:if test="${user.address == '浙江省'}">

                        <option value="北京">北京市</option>
                        <option value="浙江省" selected>浙江省</option>
                        <option value="天津市">天津市</option>
                        <option value="安徽省">安徽省</option>
                        <option value="上海市">上海市</option>
                        <option value="福建省">福建省</option>
                        <option value="重庆市">重庆市</option>
                        <option value="江西省">江西省</option>
                        <option value="山东省">山东省</option>
                        <option value="河南省">河南省</option>
                        <option value="湖北省">湖北省</option>
                        <option value="湖南省">湖南省</option>
                        <option value="广东省">广东省</option>
                        <option value="海南省">海南省</option>
                        <option value="山西省">山西省</option>
                        <option value="青海省">青海省</option>
                        <option value="江苏省">江苏省</option>
                        <option value="辽宁省">辽宁省</option>
                        <option value="吉林省">吉林省</option>
                        <option value="台湾省">台湾省</option>
                        <option value="河北省">河北省</option>
                        <option value="贵州省">贵州省</option>
                        <option value="四川省">四川省</option>
                        <option value="云南省">云南省</option>
                        <option value="陕西省">陕西省</option>
                        <option value="甘肃省">甘肃省</option>
                        <option value="黑龙江省">黑龙江省</option>
                        <option value="香港">香港</option>
                        <option value="澳门">澳门</option>
                        <option value="广西">广西</option>
                        <option value="宁夏">宁夏</option>
                        <option value="新疆">新疆</option>
                        <option value="内蒙古">内蒙古</option>
                        <option value="西藏">西藏</option>
                        </select>
                    </c:if>

                    <c:if test="${user.address == '天津市'}">

                        <option value="北京">北京市</option>
                        <option value="浙江省">浙江省</option>
                        <option value="天津市" selected>天津市</option>
                        <option value="安徽省">安徽省</option>
                        <option value="上海市">上海市</option>
                        <option value="福建省">福建省</option>
                        <option value="重庆市">重庆市</option>
                        <option value="江西省">江西省</option>
                        <option value="山东省">山东省</option>
                        <option value="河南省">河南省</option>
                        <option value="湖北省">湖北省</option>
                        <option value="湖南省">湖南省</option>
                        <option value="广东省">广东省</option>
                        <option value="海南省">海南省</option>
                        <option value="山西省">山西省</option>
                        <option value="青海省">青海省</option>
                        <option value="江苏省">江苏省</option>
                        <option value="辽宁省">辽宁省</option>
                        <option value="吉林省">吉林省</option>
                        <option value="台湾省">台湾省</option>
                        <option value="河北省">河北省</option>
                        <option value="贵州省">贵州省</option>
                        <option value="四川省">四川省</option>
                        <option value="云南省">云南省</option>
                        <option value="陕西省">陕西省</option>
                        <option value="甘肃省">甘肃省</option>
                        <option value="黑龙江省">黑龙江省</option>
                        <option value="香港">香港</option>
                        <option value="澳门">澳门</option>
                        <option value="广西">广西</option>
                        <option value="宁夏">宁夏</option>
                        <option value="新疆">新疆</option>
                        <option value="内蒙古">内蒙</option>
                        <option value="西藏">西藏</option>
                        </select>
                    </c:if>

                    <c:if test="${user.address == '安徽省'}">

                        <option value="北京">北京市</option>
                        <option value="浙江省">浙江省</option>
                        <option value="天津市">天津市</option>
                        <option value="安徽省" selected>安徽省</option>
                        <option value="上海市">上海市</option>
                        <option value="福建省">福建省</option>
                        <option value="重庆市">重庆市</option>
                        <option value="江西省">江西省</option>
                        <option value="山东省">山东省</option>
                        <option value="河南省">河南省</option>
                        <option value="湖北省">湖北省</option>
                        <option value="湖南省">湖南省</option>
                        <option value="广东省">广东省</option>
                        <option value="海南省">海南省</option>
                        <option value="山西省">山西省</option>
                        <option value="青海省">青海省</option>
                        <option value="江苏省">江苏省</option>
                        <option value="辽宁省">辽宁省</option>
                        <option value="吉林省">吉林省</option>
                        <option value="台湾省">台湾省</option>
                        <option value="河北省">河北省</option>
                        <option value="贵州省">贵州省</option>
                        <option value="四川省">四川省</option>
                        <option value="云南省">云南省</option>
                        <option value="陕西省">陕西省</option>
                        <option value="甘肃省">甘肃省</option>
                        <option value="黑龙江省">黑龙江省</option>
                        <option value="香港">香港</option>
                        <option value="澳门">澳门</option>
                        <option value="广西">广西</option>
                        <option value="宁夏">宁夏</option>
                        <option value="新疆">新疆</option>
                        <option value="内蒙古">内蒙古</option>
                        <option value="西藏">西藏</option>
                        </select>
                    </c:if>

                    <c:if test="${user.address == '上海市'}">

                        <option value="北京">北京市</option>
                        <option value="浙江省">浙江省</option>
                        <option value="天津市">天津市</option>
                        <option value="安徽省">安徽省</option>
                        <option value="上海市" selected>上海市</option>
                        <option value="福建省">福建省</option>
                        <option value="重庆市">重庆市</option>
                        <option value="江西省">江西省</option>
                        <option value="山东省">山东省</option>
                        <option value="河南省">河南省</option>
                        <option value="湖北省">湖北省</option>
                        <option value="湖南省">湖南省</option>
                        <option value="广东省">广东省</option>
                        <option value="海南省">海南省</option>
                        <option value="山西省">山西省</option>
                        <option value="青海省">青海省</option>
                        <option value="江苏省">江苏省</option>
                        <option value="辽宁省">辽宁省</option>
                        <option value="吉林省">吉林省</option>
                        <option value="台湾省">台湾省</option>
                        <option value="河北省">河北省</option>
                        <option value="贵州省">贵州省</option>
                        <option value="四川省">四川省</option>
                        <option value="云南省">云南省</option>
                        <option value="陕西省">陕西省</option>
                        <option value="甘肃省">甘肃省</option>
                        <option value="黑龙江省">黑龙江省</option>
                        <option value="香港">香港</option>
                        <option value="澳门">澳门</option>
                        <option value="广西">广西</option>
                        <option value="宁夏">宁夏</option>
                        <option value="新疆">新疆</option>
                        <option value="内蒙古">内蒙古</option>
                        <option value="西藏">西藏</option>
                        </select>
                    </c:if>

                    <c:if test="${user.address == '福建省'}">

                        <option value="北京">北京市</option>
                        <option value="浙江省">浙江省</option>
                        <option value="天津市">天津市</option>
                        <option value="安徽省">安徽省</option>
                        <option value="上海市">上海市</option>
                        <option value="福建省" selected>福建省</option>
                        <option value="重庆市">重庆市</option>
                        <option value="江西省">江西省</option>
                        <option value="山东省">山东省</option>
                        <option value="河南省">河南省</option>
                        <option value="湖北省">湖北省</option>
                        <option value="湖南省">湖南省</option>
                        <option value="广东省">广东省</option>
                        <option value="海南省">海南省</option>
                        <option value="山西省">山西省</option>
                        <option value="青海省">青海省</option>
                        <option value="江苏省">江苏省</option>
                        <option value="辽宁省">辽宁省</option>
                        <option value="吉林省">吉林省</option>
                        <option value="台湾省">台湾省</option>
                        <option value="河北省">河北省</option>
                        <option value="贵州省">贵州省</option>
                        <option value="四川省">四川省</option>
                        <option value="云南省">云南省</option>
                        <option value="陕西省">陕西省</option>
                        <option value="甘肃省">甘肃省</option>
                        <option value="黑龙江省">黑龙江省</option>
                        <option value="香港">香港</option>
                        <option value="澳门">澳门</option>
                        <option value="广西">广西</option>
                        <option value="宁夏">宁夏</option>
                        <option value="新疆">新疆</option>
                        <option value="内蒙古">内蒙古</option>
                        <option value="西藏">西藏</option>
                        </select>
                    </c:if>

                    <c:if test="${user.address == '重庆市'}">

                        <option value="北京">北京市</option>
                        <option value="浙江省">浙江省</option>
                        <option value="天津市">天津市</option>
                        <option value="安徽省">安徽省</option>
                        <option value="上海市">上海市</option>
                        <option value="福建省">福建省</option>
                        <option value="重庆市" selected>重庆市</option>
                        <option value="江西省">江西省</option>
                        <option value="山东省">山东省</option>
                        <option value="河南省">河南省</option>
                        <option value="湖北省">湖北省</option>
                        <option value="湖南省">湖南省</option>
                        <option value="广东省">广东省</option>
                        <option value="海南省">海南省</option>
                        <option value="山西省">山西省</option>
                        <option value="青海省">青海省</option>
                        <option value="江苏省">江苏省</option>
                        <option value="辽宁省">辽宁省</option>
                        <option value="吉林省">吉林省</option>
                        <option value="台湾省">台湾省</option>
                        <option value="河北省">河北省</option>
                        <option value="贵州省">贵州省</option>
                        <option value="四川省">四川省</option>
                        <option value="云南省">云南省</option>
                        <option value="陕西省">陕西省</option>
                        <option value="甘肃省">甘肃省</option>
                        <option value="黑龙江省">黑龙江省</option>
                        <option value="香港">香港</option>
                        <option value="澳门">澳门</option>
                        <option value="广西">广西</option>
                        <option value="宁夏">宁夏</option>
                        <option value="新疆">新疆</option>
                        <option value="内蒙古">内蒙古</option>
                        <option value="西藏">西藏</option>
                        </select>
                    </c:if>

                    <c:if test="${user.address == '江西省'}">

                        <option value="北京">北京市</option>
                        <option value="浙江省">浙江省</option>
                        <option value="天津市">天津市</option>
                        <option value="安徽省">安徽省</option>
                        <option value="上海市">上海市</option>
                        <option value="福建省">福建省</option>
                        <option value="重庆市">重庆市</option>
                        <option value="江西省" selected>江西省</option>
                        <option value="山东省">山东省</option>
                        <option value="河南省">河南省</option>
                        <option value="湖北省">湖北省</option>
                        <option value="湖南省">湖南省</option>
                        <option value="广东省">广东省</option>
                        <option value="海南省">海南省</option>
                        <option value="山西省">山西省</option>
                        <option value="青海省">青海省</option>
                        <option value="江苏省">江苏省</option>
                        <option value="辽宁省">辽宁省</option>
                        <option value="吉林省">吉林省</option>
                        <option value="台湾省">台湾省</option>
                        <option value="河北省">河北省</option>
                        <option value="贵州省">贵州省</option>
                        <option value="四川省">四川省</option>
                        <option value="云南省">云南省</option>
                        <option value="陕西省">陕西省</option>
                        <option value="甘肃省">甘肃省</option>
                        <option value="黑龙江省">黑龙江省</option>
                        <option value="香港">香港</option>
                        <option value="澳门">澳门</option>
                        <option value="广西">广西</option>
                        <option value="宁夏">宁夏</option>
                        <option value="新疆">新疆</option>
                        <option value="内蒙古">内蒙古</option>
                        <option value="西藏">西藏</option>
                        </select>
                    </c:if>

                    <c:if test="${user.address == '山东省'}">

                        <option value="北京">北京市</option>
                        <option value="浙江省">浙江省</option>
                        <option value="天津市">天津市</option>
                        <option value="安徽省">安徽省</option>
                        <option value="上海市">上海市</option>
                        <option value="福建省">福建省</option>
                        <option value="重庆市">重庆市</option>
                        <option value="江西省">江西省</option>
                        <option value="山东省" selected>山东省</option>
                        <option value="河南省">河南省</option>
                        <option value="湖北省">湖北省</option>
                        <option value="湖南省">湖南省</option>
                        <option value="广东省">广东省</option>
                        <option value="海南省">海南省</option>
                        <option value="山西省">山西省</option>
                        <option value="青海省">青海省</option>
                        <option value="江苏省">江苏省</option>
                        <option value="辽宁省">辽宁省</option>
                        <option value="吉林省">吉林省</option>
                        <option value="台湾省">台湾省</option>
                        <option value="河北省">河北省</option>
                        <option value="贵州省">贵州省</option>
                        <option value="四川省">四川省</option>
                        <option value="云南省">云南省</option>
                        <option value="陕西省">陕西省</option>
                        <option value="甘肃省">甘肃省</option>
                        <option value="黑龙江省">黑龙江省</option>
                        <option value="香港">香港</option>
                        <option value="澳门">澳门</option>
                        <option value="广西">广西</option>
                        <option value="宁夏">宁夏</option>
                        <option value="新疆">新疆</option>
                        <option value="内蒙古">内蒙古</option>
                        <option value="西藏">西藏</option>
                        </select>
                    </c:if>

                    <c:if test="${user.address == '河南省'}">

                        <option value="北京">北京市</option>
                        <option value="浙江省">浙江省</option>
                        <option value="天津市">天津市</option>
                        <option value="安徽省">安徽省</option>
                        <option value="上海市">上海市</option>
                        <option value="福建省">福建省</option>
                        <option value="重庆市">重庆市</option>
                        <option value="江西省">江西省</option>
                        <option value="山东省">山东省</option>
                        <option value="河南省" selected>河南省</option>
                        <option value="湖北省">湖北省</option>
                        <option value="湖南省">湖南省</option>
                        <option value="广东省">广东省</option>
                        <option value="海南省">海南省</option>
                        <option value="山西省">山西省</option>
                        <option value="青海省">青海省</option>
                        <option value="江苏省">江苏省</option>
                        <option value="辽宁省">辽宁省</option>
                        <option value="吉林省">吉林省</option>
                        <option value="台湾省">台湾省</option>
                        <option value="河北省">河北省</option>
                        <option value="贵州省">贵州省</option>
                        <option value="四川省">四川省</option>
                        <option value="云南省">云南省</option>
                        <option value="陕西省">陕西省</option>
                        <option value="甘肃省">甘肃省</option>
                        <option value="黑龙江省">黑龙江省</option>
                        <option value="香港">香港</option>
                        <option value="澳门">澳门</option>
                        <option value="广西">广西</option>
                        <option value="宁夏">宁夏</option>
                        <option value="新疆">新疆</option>
                        <option value="内蒙古">内蒙古</option>
                        <option value="西藏">西藏</option>
                        </select>
                    </c:if>

                    <c:if test="${user.address == '湖北省'}">

                        <option value="北京">北京市</option>
                        <option value="浙江省">浙江省</option>
                        <option value="天津市">天津市</option>
                        <option value="安徽省">安徽省</option>
                        <option value="上海市">上海市</option>
                        <option value="福建省">福建省</option>
                        <option value="重庆市">重庆市</option>
                        <option value="江西省">江西省</option>
                        <option value="山东省">山东省</option>
                        <option value="河南省">河南省</option>
                        <option value="湖北省" selected>湖北省</option>
                        <option value="湖南省">湖南省</option>
                        <option value="广东省">广东省</option>
                        <option value="海南省">海南省</option>
                        <option value="山西省">山西省</option>
                        <option value="青海省">青海省</option>
                        <option value="江苏省">江苏省</option>
                        <option value="辽宁省">辽宁省</option>
                        <option value="吉林省">吉林省</option>
                        <option value="台湾省">台湾省</option>
                        <option value="河北省">河北省</option>
                        <option value="贵州省">贵州省</option>
                        <option value="四川省">四川省</option>
                        <option value="云南省">云南省</option>
                        <option value="陕西省">陕西省</option>
                        <option value="甘肃省">甘肃省</option>
                        <option value="黑龙江省">黑龙江省</option>
                        <option value="香港">香港</option>
                        <option value="澳门">澳门</option>
                        <option value="广西">广西</option>
                        <option value="宁夏">宁夏</option>
                        <option value="新疆">新疆</option>
                        <option value="内蒙古">内蒙古</option>
                        <option value="西藏">西藏</option>
                        </select>
                    </c:if>

                    <c:if test="${user.address == '湖南省'}">

                        <option value="北京">北京市</option>
                        <option value="浙江省">浙江省</option>
                        <option value="天津市">天津市</option>
                        <option value="安徽省">安徽省</option>
                        <option value="上海市">上海市</option>
                        <option value="福建省">福建省</option>
                        <option value="重庆市">重庆市</option>
                        <option value="江西省">江西省</option>
                        <option value="山东省">山东省</option>
                        <option value="河南省">河南省</option>
                        <option value="湖北省">湖北省</option>
                        <option value="湖南省" selected>湖南省</option>
                        <option value="广东省">广东省</option>
                        <option value="海南省">海南省</option>
                        <option value="山西省">山西省</option>
                        <option value="青海省">青海省</option>
                        <option value="江苏省">江苏省</option>
                        <option value="辽宁省">辽宁省</option>
                        <option value="吉林省">吉林省</option>
                        <option value="台湾省">台湾省</option>
                        <option value="河北省">河北省</option>
                        <option value="贵州省">贵州省</option>
                        <option value="四川省">四川省</option>
                        <option value="云南省">云南省</option>
                        <option value="陕西省">陕西省</option>
                        <option value="甘肃省">甘肃省</option>
                        <option value="黑龙江省">黑龙江省</option>
                        <option value="香港">香港</option>
                        <option value="澳门">澳门</option>
                        <option value="广西">广西</option>
                        <option value="宁夏">宁夏</option>
                        <option value="新疆">新疆</option>
                        <option value="内蒙古">内蒙古</option>
                        <option value="西藏">西藏</option>
                        </select>
                    </c:if>

                    <c:if test="${user.address == '广东省'}">

                        <option value="北京">北京市</option>
                        <option value="浙江省">浙江省</option>
                        <option value="天津市">天津市</option>
                        <option value="安徽省">安徽省</option>
                        <option value="上海市">上海市</option>
                        <option value="福建省">福建省</option>
                        <option value="重庆市">重庆市</option>
                        <option value="江西省">江西省</option>
                        <option value="山东省">山东省</option>
                        <option value="河南省">河南省</option>
                        <option value="湖北省">湖北省</option>
                        <option value="湖南省">湖南省</option>
                        <option value="广东省" selected>广东省</option>
                        <option value="海南省">海南省</option>
                        <option value="山西省">山西省</option>
                        <option value="青海省">青海省</option>
                        <option value="江苏省">江苏省</option>
                        <option value="辽宁省">辽宁省</option>
                        <option value="吉林省">吉林省</option>
                        <option value="台湾省">台湾省</option>
                        <option value="河北省">河北省</option>
                        <option value="贵州省">贵州省</option>
                        <option value="四川省">四川省</option>
                        <option value="云南省">云南省</option>
                        <option value="陕西省">陕西省</option>
                        <option value="甘肃省">甘肃省</option>
                        <option value="黑龙江省">黑龙江省</option>
                        <option value="香港">香港</option>
                        <option value="澳门">澳门</option>
                        <option value="广西">广西</option>
                        <option value="宁夏">宁夏</option>
                        <option value="新疆">新疆</option>
                        <option value="内蒙古">内蒙古</option>
                        <option value="西藏">西藏</option>
                        </select>
                    </c:if>

                    <c:if test="${user.address == '海南省'}">

                        <option value="北京">北京市</option>
                        <option value="浙江省">浙江省</option>
                        <option value="天津市">天津市</option>
                        <option value="安徽省">安徽省</option>
                        <option value="上海市">上海市</option>
                        <option value="福建省">福建省</option>
                        <option value="重庆市">重庆市</option>
                        <option value="江西省">江西省</option>
                        <option value="山东省">山东省</option>
                        <option value="河南省">河南省</option>
                        <option value="湖北省">湖北省</option>
                        <option value="湖南省">湖南省</option>
                        <option value="广东省">广东省</option>
                        <option value="海南省" selected>海南省</option>
                        <option value="山西省">山西省</option>
                        <option value="青海省">青海省</option>
                        <option value="江苏省">江苏省</option>
                        <option value="辽宁省">辽宁省</option>
                        <option value="吉林省">吉林省</option>
                        <option value="台湾省">台湾省</option>
                        <option value="河北省">河北省</option>
                        <option value="贵州省">贵州省</option>
                        <option value="四川省">四川省</option>
                        <option value="云南省">云南省</option>
                        <option value="陕西省">陕西省</option>
                        <option value="甘肃省">甘肃省</option>
                        <option value="黑龙江省">黑龙江省</option>
                        <option value="香港">香港</option>
                        <option value="澳门">澳门</option>
                        <option value="广西">广西</option>
                        <option value="宁夏">宁夏</option>
                        <option value="新疆">新疆</option>
                        <option value="内蒙古">内蒙古</option>
                        <option value="西藏">西藏</option>
                        </select>
                    </c:if>

                    <c:if test="${user.address == '山西省'}">

                        <option value="北京">北京市</option>
                        <option value="浙江省">浙江省</option>
                        <option value="天津市">天津市</option>
                        <option value="安徽省">安徽省</option>
                        <option value="上海市">上海市</option>
                        <option value="福建省">福建省</option>
                        <option value="重庆市">重庆市</option>
                        <option value="江西省">江西省</option>
                        <option value="山东省">山东省</option>
                        <option value="河南省">河南省</option>
                        <option value="湖北省">湖北省</option>
                        <option value="湖南省">湖南省</option>
                        <option value="广东省">广东省</option>
                        <option value="海南省">海南省</option>
                        <option value="山西省" selected>山西省</option>
                        <option value="青海省">青海省</option>
                        <option value="江苏省">江苏省</option>
                        <option value="辽宁省">辽宁省</option>
                        <option value="吉林省">吉林省</option>
                        <option value="台湾省">台湾省</option>
                        <option value="河北省">河北省</option>
                        <option value="贵州省">贵州省</option>
                        <option value="四川省">四川省</option>
                        <option value="云南省">云南省</option>
                        <option value="陕西省">陕西省</option>
                        <option value="甘肃省">甘肃省</option>
                        <option value="黑龙江省">黑龙江省</option>
                        <option value="香港">香港</option>
                        <option value="澳门">澳门</option>
                        <option value="广西">广西</option>
                        <option value="宁夏">宁夏</option>
                        <option value="新疆">新疆</option>
                        <option value="内蒙古">内蒙古</option>
                        <option value="西藏">西藏</option>
                        </select>
                    </c:if>

                    <c:if test="${user.address == '青海省'}">

                        <option value="北京">北京市</option>
                        <option value="浙江省">浙江省</option>
                        <option value="天津市">天津市</option>
                        <option value="安徽省">安徽省</option>
                        <option value="上海市">上海市</option>
                        <option value="福建省">福建省</option>
                        <option value="重庆市">重庆市</option>
                        <option value="江西省">江西省</option>
                        <option value="山东省">山东省</option>
                        <option value="河南省">河南省</option>
                        <option value="湖北省">湖北省</option>
                        <option value="湖南省">湖南省</option>
                        <option value="广东省">广东省</option>
                        <option value="海南省">海南省</option>
                        <option value="山西省">山西省</option>
                        <option value="青海省" selected>青海省</option>
                        <option value="江苏省">江苏省</option>
                        <option value="辽宁省">辽宁省</option>
                        <option value="吉林省">吉林省</option>
                        <option value="台湾省">台湾省</option>
                        <option value="河北省">河北省</option>
                        <option value="贵州省">贵州省</option>
                        <option value="四川省">四川省</option>
                        <option value="云南省">云南省</option>
                        <option value="陕西省">陕西省</option>
                        <option value="甘肃省">甘肃省</option>
                        <option value="黑龙江省">黑龙江省</option>
                        <option value="香港">香港</option>
                        <option value="澳门">澳门</option>
                        <option value="广西">广西</option>
                        <option value="宁夏">宁夏</option>
                        <option value="新疆">新疆</option>
                        <option value="内蒙古">内蒙古</option>
                        <option value="西藏">西藏</option>
                        </select>
                    </c:if>

                    <c:if test="${user.address == '江苏省'}">

                        <option value="北京">北京市</option>
                        <option value="浙江省">浙江省</option>
                        <option value="天津市">天津市</option>
                        <option value="安徽省">安徽省</option>
                        <option value="上海市">上海市</option>
                        <option value="福建省">福建省</option>
                        <option value="重庆市">重庆市</option>
                        <option value="江西省">江西省</option>
                        <option value="山东省">山东省</option>
                        <option value="河南省">河南省</option>
                        <option value="湖北省">湖北省</option>
                        <option value="湖南省">湖南省</option>
                        <option value="广东省">广东省</option>
                        <option value="海南省">海南省</option>
                        <option value="山西省">山西省</option>
                        <option value="青海省">青海省</option>
                        <option value="江苏省" selected>江苏省</option>
                        <option value="辽宁省">辽宁省</option>
                        <option value="吉林省">吉林省</option>
                        <option value="台湾省">台湾省</option>
                        <option value="河北省">河北省</option>
                        <option value="贵州省">贵州省</option>
                        <option value="四川省">四川省</option>
                        <option value="云南省">云南省</option>
                        <option value="陕西省">陕西省</option>
                        <option value="甘肃省">甘肃省</option>
                        <option value="黑龙江省">黑龙江省</option>
                        <option value="香港">香港</option>
                        <option value="澳门">澳门</option>
                        <option value="广西">广西</option>
                        <option value="宁夏">宁夏</option>
                        <option value="新疆">新疆</option>
                        <option value="内蒙古">内蒙古</option>
                        <option value="西藏">西藏</option>
                        </select>
                    </c:if>

                    <c:if test="${user.address == '辽宁省'}">

                        <option value="北京">北京市</option>
                        <option value="浙江省">浙江省</option>
                        <option value="天津市">天津市</option>
                        <option value="安徽省">安徽省</option>
                        <option value="上海市">上海市</option>
                        <option value="福建省">福建省</option>
                        <option value="重庆市">重庆市</option>
                        <option value="江西省">江西省</option>
                        <option value="山东省">山东省</option>
                        <option value="河南省">河南省</option>
                        <option value="湖北省">湖北省</option>
                        <option value="湖南省">湖南省</option>
                        <option value="广东省">广东省</option>
                        <option value="海南省">海南省</option>
                        <option value="山西省">山西省</option>
                        <option value="青海省">青海省</option>
                        <option value="江苏省">江苏省</option>
                        <option value="辽宁省" selected>辽宁省</option>
                        <option value="吉林省">吉林省</option>
                        <option value="台湾省">台湾省</option>
                        <option value="河北省">河北省</option>
                        <option value="贵州省">贵州省</option>
                        <option value="四川省">四川省</option>
                        <option value="云南省">云南省</option>
                        <option value="陕西省">陕西省</option>
                        <option value="甘肃省">甘肃省</option>
                        <option value="黑龙江省">黑龙江省</option>
                        <option value="香港">香港</option>
                        <option value="澳门">澳门</option>
                        <option value="广西">广西</option>
                        <option value="宁夏">宁夏</option>
                        <option value="新疆">新疆</option>
                        <option value="内蒙古">内蒙古</option>
                        <option value="西藏">西藏</option>
                        </select>
                    </c:if>

                    <c:if test="${user.address == '吉林省'}">

                        <option value="北京">北京市</option>
                        <option value="浙江省">浙江省</option>
                        <option value="天津市">天津市</option>
                        <option value="安徽省">安徽省</option>
                        <option value="上海市">上海市</option>
                        <option value="福建省">福建省</option>
                        <option value="重庆市">重庆市</option>
                        <option value="江西省">江西省</option>
                        <option value="山东省">山东省</option>
                        <option value="河南省">河南省</option>
                        <option value="湖北省">湖北省</option>
                        <option value="湖南省">湖南省</option>
                        <option value="广东省">广东省</option>
                        <option value="海南省">海南省</option>
                        <option value="山西省">山西省</option>
                        <option value="青海省">青海省</option>
                        <option value="江苏省">江苏省</option>
                        <option value="辽宁省">辽宁省</option>
                        <option value="吉林省" selected>吉林省</option>
                        <option value="台湾省">台湾省</option>
                        <option value="河北省">河北省</option>
                        <option value="贵州省">贵州省</option>
                        <option value="四川省">四川省</option>
                        <option value="云南省">云南省</option>
                        <option value="陕西省">陕西省</option>
                        <option value="甘肃省">甘肃省</option>
                        <option value="黑龙江省">黑龙江省</option>
                        <option value="香港">香港</option>
                        <option value="澳门">澳门</option>
                        <option value="广西">广西</option>
                        <option value="宁夏">宁夏</option>
                        <option value="新疆">新疆</option>
                        <option value="内蒙古">内蒙古</option>
                        <option value="西藏">西藏</option>
                        </select>
                    </c:if>

                    <c:if test="${user.address == '台湾省'}">

                        <option value="北京">北京市</option>
                        <option value="浙江省">浙江省</option>
                        <option value="天津市">天津市</option>
                        <option value="安徽省">安徽省</option>
                        <option value="上海市">上海市</option>
                        <option value="福建省">福建省</option>
                        <option value="重庆市">重庆市</option>
                        <option value="江西省">江西省</option>
                        <option value="山东省">山东省</option>
                        <option value="河南省">河南省</option>
                        <option value="湖北省">湖北省</option>
                        <option value="湖南省">湖南省</option>
                        <option value="广东省">广东省</option>
                        <option value="海南省">海南省</option>
                        <option value="山西省">山西省</option>
                        <option value="青海省">青海省</option>
                        <option value="江苏省">江苏省</option>
                        <option value="辽宁省">辽宁省</option>
                        <option value="吉林省">吉林省</option>
                        <option value="台湾省" selected>台湾省</option>
                        <option value="河北省">河北省</option>
                        <option value="贵州省">贵州省</option>
                        <option value="四川省">四川省</option>
                        <option value="云南省">云南省</option>
                        <option value="陕西省">陕西省</option>
                        <option value="甘肃省">甘肃省</option>
                        <option value="黑龙江省">黑龙江省</option>
                        <option value="香港">香港</option>
                        <option value="澳门">澳门</option>
                        <option value="广西">广西</option>
                        <option value="宁夏">宁夏</option>
                        <option value="新疆">新疆</option>
                        <option value="内蒙古">内蒙古</option>
                        <option value="西藏">西藏</option>
                        </select>
                    </c:if>

                    <c:if test="${user.address == '河北省'}">

                        <option value="北京">北京市</option>
                        <option value="浙江省">浙江省</option>
                        <option value="天津市">天津市</option>
                        <option value="安徽省">安徽省</option>
                        <option value="上海市">上海市</option>
                        <option value="福建省">福建省</option>
                        <option value="重庆市">重庆市</option>
                        <option value="江西省">江西省</option>
                        <option value="山东省">山东省</option>
                        <option value="河南省">河南省</option>
                        <option value="湖北省">湖北省</option>
                        <option value="湖南省">湖南省</option>
                        <option value="广东省">广东省</option>
                        <option value="海南省">海南省</option>
                        <option value="山西省">山西省</option>
                        <option value="青海省">青海省</option>
                        <option value="江苏省">江苏省</option>
                        <option value="辽宁省">辽宁省</option>
                        <option value="吉林省">吉林省</option>
                        <option value="台湾省">台湾省</option>
                        <option value="河北省" selected>河北省</option>
                        <option value="贵州省">贵州省</option>
                        <option value="四川省">四川省</option>
                        <option value="云南省">云南省</option>
                        <option value="陕西省">陕西省</option>
                        <option value="甘肃省">甘肃省</option>
                        <option value="黑龙江省">黑龙江省</option>
                        <option value="香港">香港</option>
                        <option value="澳门">澳门</option>
                        <option value="广西">广西</option>
                        <option value="宁夏">宁夏</option>
                        <option value="新疆">新疆</option>
                        <option value="内蒙古">内蒙古</option>
                        <option value="西藏">西藏</option>
                        </select>
                    </c:if>

                    <c:if test="${user.address == '贵州省'}">

                        <option value="北京">北京市</option>
                        <option value="浙江省">浙江省</option>
                        <option value="天津市">天津市</option>
                        <option value="安徽省">安徽省</option>
                        <option value="上海市">上海市</option>
                        <option value="福建省">福建省</option>
                        <option value="重庆市">重庆市</option>
                        <option value="江西省">江西省</option>
                        <option value="山东省">山东省</option>
                        <option value="河南省">河南省</option>
                        <option value="湖北省">湖北省</option>
                        <option value="湖南省">湖南省</option>
                        <option value="广东省">广东省</option>
                        <option value="海南省">海南省</option>
                        <option value="山西省">山西省</option>
                        <option value="青海省">青海省</option>
                        <option value="江苏省">江苏省</option>
                        <option value="辽宁省">辽宁省</option>
                        <option value="吉林省">吉林省</option>
                        <option value="台湾省">台湾省</option>
                        <option value="河北省">河北省</option>
                        <option value="贵州省" selected>贵州省</option>
                        <option value="四川省">四川省</option>
                        <option value="云南省">云南省</option>
                        <option value="陕西省">陕西省</option>
                        <option value="甘肃省">甘肃省</option>
                        <option value="黑龙江省">黑龙江省</option>
                        <option value="香港">香港</option>
                        <option value="澳门">澳门</option>
                        <option value="广西">广西</option>
                        <option value="宁夏">宁夏</option>
                        <option value="新疆">新疆</option>
                        <option value="内蒙古">内蒙古</option>
                        <option value="西藏">西藏</option>
                        </select>
                    </c:if>

                    <c:if test="${user.address == '四川省'}">

                        <option value="北京">北京市</option>
                        <option value="浙江省">浙江省</option>
                        <option value="天津市">天津市</option>
                        <option value="安徽省">安徽省</option>
                        <option value="上海市">上海市</option>
                        <option value="福建省">福建省</option>
                        <option value="重庆市">重庆市</option>
                        <option value="江西省">江西省</option>
                        <option value="山东省">山东省</option>
                        <option value="河南省">河南省</option>
                        <option value="湖北省">湖北省</option>
                        <option value="湖南省">湖南省</option>
                        <option value="广东省">广东省</option>
                        <option value="海南省">海南省</option>
                        <option value="山西省">山西省</option>
                        <option value="青海省">青海省</option>
                        <option value="江苏省">江苏省</option>
                        <option value="辽宁省">辽宁省</option>
                        <option value="吉林省">吉林省</option>
                        <option value="台湾省">台湾省</option>
                        <option value="河北省">河北省</option>
                        <option value="贵州省">贵州省</option>
                        <option value="四川省" selected>四川省</option>
                        <option value="云南省">云南省</option>
                        <option value="陕西省">陕西省</option>
                        <option value="甘肃省">甘肃省</option>
                        <option value="黑龙江省">黑龙江省</option>
                        <option value="香港">香港</option>
                        <option value="澳门">澳门</option>
                        <option value="广西">广西</option>
                        <option value="宁夏">宁夏</option>
                        <option value="新疆">新疆</option>
                        <option value="内蒙古">内蒙古</option>
                        <option value="西藏">西藏</option>
                        </select>
                    </c:if>

                    <c:if test="${user.address == '云南省'}">

                        <option value="北京">北京市</option>
                        <option value="浙江省">浙江省</option>
                        <option value="天津市">天津市</option>
                        <option value="安徽省">安徽省</option>
                        <option value="上海市">上海市</option>
                        <option value="福建省">福建省</option>
                        <option value="重庆市">重庆市</option>
                        <option value="江西省">江西省</option>
                        <option value="山东省">山东省</option>
                        <option value="河南省">河南省</option>
                        <option value="湖北省">湖北省</option>
                        <option value="湖南省">湖南省</option>
                        <option value="广东省">广东省</option>
                        <option value="海南省">海南省</option>
                        <option value="山西省">山西省</option>
                        <option value="青海省">青海省</option>
                        <option value="江苏省">江苏省</option>
                        <option value="辽宁省">辽宁省</option>
                        <option value="吉林省">吉林省</option>
                        <option value="台湾省">台湾省</option>
                        <option value="河北省">河北省</option>
                        <option value="贵州省">贵州省</option>
                        <option value="四川省">四川省</option>
                        <option value="云南省" selected>云南省</option>
                        <option value="陕西省">陕西省</option>
                        <option value="甘肃省">甘肃省</option>
                        <option value="黑龙江省">黑龙江省</option>
                        <option value="香港">香港</option>
                        <option value="澳门">澳门</option>
                        <option value="广西">广西</option>
                        <option value="宁夏">宁夏</option>
                        <option value="新疆">新疆</option>
                        <option value="内蒙古">内蒙古</option>
                        <option value="西藏">西藏</option>
                        </select>
                    </c:if>

                    <c:if test="${user.address == '陕西省'}">

                        <option value="北京">北京市</option>
                        <option value="浙江省">浙江省</option>
                        <option value="天津市">天津市</option>
                        <option value="安徽省">安徽省</option>
                        <option value="上海市">上海市</option>
                        <option value="福建省">福建省</option>
                        <option value="重庆市">重庆市</option>
                        <option value="江西省">江西省</option>
                        <option value="山东省">山东省</option>
                        <option value="河南省">河南省</option>
                        <option value="湖北省">湖北省</option>
                        <option value="湖南省">湖南省</option>
                        <option value="广东省">广东省</option>
                        <option value="海南省">海南省</option>
                        <option value="山西省">山西省</option>
                        <option value="青海省">青海省</option>
                        <option value="江苏省">江苏省</option>
                        <option value="辽宁省">辽宁省</option>
                        <option value="吉林省">吉林省</option>
                        <option value="台湾省">台湾省</option>
                        <option value="河北省">河北省</option>
                        <option value="贵州省">贵州省</option>
                        <option value="四川省">四川省</option>
                        <option value="云南省">云南省</option>
                        <option value="陕西省" selected>陕西省</option>
                        <option value="甘肃省">甘肃省</option>
                        <option value="黑龙江省">黑龙江省</option>
                        <option value="香港">香港</option>
                        <option value="澳门">澳门</option>
                        <option value="广西">广西</option>
                        <option value="宁夏">宁夏</option>
                        <option value="新疆">新疆</option>
                        <option value="内蒙古">内蒙古</option>
                        <option value="西藏">西藏</option>
                        </select>
                    </c:if>

                    <c:if test="${user.address == '甘肃省'}">

                        <option value="北京">北京市</option>
                        <option value="浙江省">浙江省</option>
                        <option value="天津市">天津市</option>
                        <option value="安徽省">安徽省</option>
                        <option value="上海市">上海市</option>
                        <option value="福建省">福建省</option>
                        <option value="重庆市">重庆市</option>
                        <option value="江西省">江西省</option>
                        <option value="山东省">山东省</option>
                        <option value="河南省">河南省</option>
                        <option value="湖北省">湖北省</option>
                        <option value="湖南省">湖南省</option>
                        <option value="广东省">广东省</option>
                        <option value="海南省">海南省</option>
                        <option value="山西省">山西省</option>
                        <option value="青海省">青海省</option>
                        <option value="江苏省">江苏省</option>
                        <option value="辽宁省">辽宁省</option>
                        <option value="吉林省">吉林省</option>
                        <option value="台湾省">台湾省</option>
                        <option value="河北省">河北省</option>
                        <option value="贵州省">贵州省</option>
                        <option value="四川省">四川省</option>
                        <option value="云南省">云南省</option>
                        <option value="陕西省">陕西省</option>
                        <option value="甘肃省" selected>甘肃省</option>
                        <option value="黑龙江省">黑龙江省</option>
                        <option value="香港">香港</option>
                        <option value="澳门">澳门</option>
                        <option value="广西">广西</option>
                        <option value="宁夏">宁夏</option>
                        <option value="新疆">新疆</option>
                        <option value="内蒙古">内蒙古</option>
                        <option value="西藏">西藏</option>
                        </select>
                    </c:if>

                    <c:if test="${user.address == '黑龙江省'}">

                        <option value="北京">北京市</option>
                        <option value="浙江省">浙江省</option>
                        <option value="天津市">天津市</option>
                        <option value="安徽省">安徽省</option>
                        <option value="上海市">上海市</option>
                        <option value="福建省">福建省</option>
                        <option value="重庆市">重庆市</option>
                        <option value="江西省">江西省</option>
                        <option value="山东省">山东省</option>
                        <option value="河南省">河南省</option>
                        <option value="湖北省">湖北省</option>
                        <option value="湖南省">湖南省</option>
                        <option value="广东省">广东省</option>
                        <option value="海南省">海南省</option>
                        <option value="山西省">山西省</option>
                        <option value="青海省">青海省</option>
                        <option value="江苏省">江苏省</option>
                        <option value="辽宁省">辽宁省</option>
                        <option value="吉林省">吉林省</option>
                        <option value="台湾省">台湾省</option>
                        <option value="河北省">河北省</option>
                        <option value="贵州省">贵州省</option>
                        <option value="四川省">四川省</option>
                        <option value="云南省">云南省</option>
                        <option value="陕西省">陕西省</option>
                        <option value="甘肃省">甘肃省</option>
                        <option value="黑龙江省" selected>黑龙江省</option>
                        <option value="香港">香港</option>
                        <option value="澳门">澳门</option>
                        <option value="广西">广西</option>
                        <option value="宁夏">宁夏</option>
                        <option value="新疆">新疆</option>
                        <option value="内蒙古">内蒙古</option>
                        <option value="西藏">西藏</option>
                        </select>
                    </c:if>

                    <c:if test="${user.address == '香港'}">

                        <option value="北京">北京市</option>
                        <option value="浙江省">浙江省</option>
                        <option value="天津市">天津市</option>
                        <option value="安徽省">安徽省</option>
                        <option value="上海市">上海市</option>
                        <option value="福建省">福建省</option>
                        <option value="重庆市">重庆市</option>
                        <option value="江西省">江西省</option>
                        <option value="山东省">山东省</option>
                        <option value="河南省">河南省</option>
                        <option value="湖北省">湖北省</option>
                        <option value="湖南省">湖南省</option>
                        <option value="广东省">广东省</option>
                        <option value="海南省">海南省</option>
                        <option value="山西省">山西省</option>
                        <option value="青海省">青海省</option>
                        <option value="江苏省">江苏省</option>
                        <option value="辽宁省">辽宁省</option>
                        <option value="吉林省">吉林省</option>
                        <option value="台湾省">台湾省</option>
                        <option value="河北省">河北省</option>
                        <option value="贵州省">贵州省</option>
                        <option value="四川省">四川省</option>
                        <option value="云南省">云南省</option>
                        <option value="陕西省">陕西省</option>
                        <option value="甘肃省">甘肃省</option>
                        <option value="黑龙江省">黑龙江省</option>
                        <option value="香港" selected>香港</option>
                        <option value="澳门">澳门</option>
                        <option value="广西">广西</option>
                        <option value="宁夏">宁夏</option>
                        <option value="新疆">新疆</option>
                        <option value="内蒙古">内蒙古</option>
                        <option value="西藏">西藏</option>
                        </select>
                    </c:if>

                    <c:if test="${user.address == '澳门'}">

                        <option value="北京">北京市</option>
                        <option value="浙江省">浙江省</option>
                        <option value="天津市">天津市</option>
                        <option value="安徽省">安徽省</option>
                        <option value="上海市">上海市</option>
                        <option value="福建省">福建省</option>
                        <option value="重庆市">重庆市</option>
                        <option value="江西省">江西省</option>
                        <option value="山东省">山东省</option>
                        <option value="河南省">河南省</option>
                        <option value="湖北省">湖北省</option>
                        <option value="湖南省">湖南省</option>
                        <option value="广东省">广东省</option>
                        <option value="海南省">海南省</option>
                        <option value="山西省">山西省</option>
                        <option value="青海省">青海省</option>
                        <option value="江苏省">江苏省</option>
                        <option value="辽宁省">辽宁省</option>
                        <option value="吉林省">吉林省</option>
                        <option value="台湾省">台湾省</option>
                        <option value="河北省">河北省</option>
                        <option value="贵州省">贵州省</option>
                        <option value="四川省">四川省</option>
                        <option value="云南省">云南省</option>
                        <option value="陕西省">陕西省</option>
                        <option value="甘肃省">甘肃省</option>
                        <option value="黑龙江省">黑龙江省</option>
                        <option value="香港">香港</option>
                        <option value="澳门" selected>澳门</option>
                        <option value="广西">广西</option>
                        <option value="宁夏">宁夏</option>
                        <option value="新疆">新疆</option>
                        <option value="内蒙古">内蒙古</option>
                        <option value="西藏">西藏</option>
                        </select>
                    </c:if>

                    <c:if test="${user.address == '广西'}">

                        <option value="北京">北京市</option>
                        <option value="浙江省">浙江省</option>
                        <option value="天津市">天津市</option>
                        <option value="安徽省">安徽省</option>
                        <option value="上海市">上海市</option>
                        <option value="福建省">福建省</option>
                        <option value="重庆市">重庆市</option>
                        <option value="江西省">江西省</option>
                        <option value="山东省">山东省</option>
                        <option value="河南省">河南省</option>
                        <option value="湖北省">湖北省</option>
                        <option value="湖南省">湖南省</option>
                        <option value="广东省">广东省</option>
                        <option value="海南省">海南省</option>
                        <option value="山西省">山西省</option>
                        <option value="青海省">青海省</option>
                        <option value="江苏省">江苏省</option>
                        <option value="辽宁省">辽宁省</option>
                        <option value="吉林省">吉林省</option>
                        <option value="台湾省">台湾省</option>
                        <option value="河北省">河北省</option>
                        <option value="贵州省">贵州省</option>
                        <option value="四川省">四川省</option>
                        <option value="云南省">云南省</option>
                        <option value="陕西省">陕西省</option>
                        <option value="甘肃省">甘肃省</option>
                        <option value="黑龙江省">黑龙江省</option>
                        <option value="香港">香港</option>
                        <option value="澳门">澳门</option>
                        <option value="广西" selected>广西</option>
                        <option value="宁夏">宁夏</option>
                        <option value="新疆">新疆</option>
                        <option value="内蒙古">内蒙古</option>
                        <option value="西藏">西藏</option>
                        </select>
                    </c:if>

                    <c:if test="${user.address == '宁夏'}">

                        <option value="北京">北京市</option>
                        <option value="浙江省">浙江省</option>
                        <option value="天津市">天津市</option>
                        <option value="安徽省">安徽省</option>
                        <option value="上海市">上海市</option>
                        <option value="福建省">福建省</option>
                        <option value="重庆市">重庆市</option>
                        <option value="江西省">江西省</option>
                        <option value="山东省">山东省</option>
                        <option value="河南省">河南省</option>
                        <option value="湖北省">湖北省</option>
                        <option value="湖南省">湖南省</option>
                        <option value="广东省">广东省</option>
                        <option value="海南省">海南省</option>
                        <option value="山西省">山西省</option>
                        <option value="青海省">青海省</option>
                        <option value="江苏省">江苏省</option>
                        <option value="辽宁省">辽宁省</option>
                        <option value="吉林省">吉林省</option>
                        <option value="台湾省">台湾省</option>
                        <option value="河北省">河北省</option>
                        <option value="贵州省">贵州省</option>
                        <option value="四川省">四川省</option>
                        <option value="云南省">云南省</option>
                        <option value="陕西省">陕西省</option>
                        <option value="甘肃省">甘肃省</option>
                        <option value="黑龙江省">黑龙江省</option>
                        <option value="香港">香港</option>
                        <option value="澳门">澳门</option>
                        <option value="广西">广西</option>
                        <option value="宁夏" selected>宁夏</option>
                        <option value="新疆">新疆</option>
                        <option value="内蒙古">内蒙古</option>
                        <option value="西藏">西藏</option>
                        </select>
                    </c:if>

                    <c:if test="${user.address == '宁夏'}">

                        <option value="北京">北京市</option>
                        <option value="浙江省">浙江省</option>
                        <option value="天津市">天津市</option>
                        <option value="安徽省">安徽省</option>
                        <option value="上海市">上海市</option>
                        <option value="福建省">福建省</option>
                        <option value="重庆市">重庆市</option>
                        <option value="江西省">江西省</option>
                        <option value="山东省">山东省</option>
                        <option value="河南省">河南省</option>
                        <option value="湖北省">湖北省</option>
                        <option value="湖南省">湖南省</option>
                        <option value="广东省">广东省</option>
                        <option value="海南省">海南省</option>
                        <option value="山西省">山西省</option>
                        <option value="青海省">青海省</option>
                        <option value="江苏省">江苏省</option>
                        <option value="辽宁省">辽宁省</option>
                        <option value="吉林省">吉林省</option>
                        <option value="台湾省">台湾省</option>
                        <option value="河北省">河北省</option>
                        <option value="贵州省">贵州省</option>
                        <option value="四川省">四川省</option>
                        <option value="云南省">云南省</option>
                        <option value="陕西省">陕西省</option>
                        <option value="甘肃省">甘肃省</option>
                        <option value="黑龙江省">黑龙江省</option>
                        <option value="香港">香港</option>
                        <option value="澳门">澳门</option>
                        <option value="广西">广西</option>
                        <option value="宁夏" selected>宁夏</option>
                        <option value="新疆">新疆</option>
                        <option value="内蒙古">内蒙古</option>
                        <option value="西藏">西藏</option>
                        </select>
                    </c:if>

                    <c:if test="${user.address == '新疆'}">

                        <option value="北京">北京市</option>
                        <option value="浙江省">浙江省</option>
                        <option value="天津市">天津市</option>
                        <option value="安徽省">安徽省</option>
                        <option value="上海市">上海市</option>
                        <option value="福建省">福建省</option>
                        <option value="重庆市">重庆市</option>
                        <option value="江西省">江西省</option>
                        <option value="山东省">山东省</option>
                        <option value="河南省">河南省</option>
                        <option value="湖北省">湖北省</option>
                        <option value="湖南省">湖南省</option>
                        <option value="广东省">广东省</option>
                        <option value="海南省">海南省</option>
                        <option value="山西省">山西省</option>
                        <option value="青海省">青海省</option>
                        <option value="江苏省">江苏省</option>
                        <option value="辽宁省">辽宁省</option>
                        <option value="吉林省">吉林省</option>
                        <option value="台湾省">台湾省</option>
                        <option value="河北省">河北省</option>
                        <option value="贵州省">贵州省</option>
                        <option value="四川省">四川省</option>
                        <option value="云南省">云南省</option>
                        <option value="陕西省">陕西省</option>
                        <option value="甘肃省">甘肃省</option>
                        <option value="黑龙江省">黑龙江省</option>
                        <option value="香港">香港</option>
                        <option value="澳门">澳门</option>
                        <option value="广西">广西</option>
                        <option value="宁夏">宁夏</option>
                        <option value="新疆" selected>新疆</option>
                        <option value="内蒙古">内蒙古</option>
                        <option value="西藏">西藏</option>
                        </select>
                    </c:if>

                    <c:if test="${user.address == '内蒙古'}">

                        <option value="北京">北京市</option>
                        <option value="浙江省">浙江省</option>
                        <option value="天津市">天津市</option>
                        <option value="安徽省">安徽省</option>
                        <option value="上海市">上海市</option>
                        <option value="福建省">福建省</option>
                        <option value="重庆市">重庆市</option>
                        <option value="江西省">江西省</option>
                        <option value="山东省">山东省</option>
                        <option value="河南省">河南省</option>
                        <option value="湖北省">湖北省</option>
                        <option value="湖南省">湖南省</option>
                        <option value="广东省">广东省</option>
                        <option value="海南省">海南省</option>
                        <option value="山西省">山西省</option>
                        <option value="青海省">青海省</option>
                        <option value="江苏省">江苏省</option>
                        <option value="辽宁省">辽宁省</option>
                        <option value="吉林省">吉林省</option>
                        <option value="台湾省">台湾省</option>
                        <option value="河北省">河北省</option>
                        <option value="贵州省">贵州省</option>
                        <option value="四川省">四川省</option>
                        <option value="云南省">云南省</option>
                        <option value="陕西省">陕西省</option>
                        <option value="甘肃省">甘肃省</option>
                        <option value="黑龙江省">黑龙江省</option>
                        <option value="香港">香港</option>
                        <option value="澳门">澳门</option>
                        <option value="广西">广西</option>
                        <option value="宁夏">宁夏</option>
                        <option value="新疆">新疆</option>
                        <option value="内蒙古" selected>内蒙古</option>
                        <option value="西藏">西藏</option>
                        </select>
                    </c:if>

                    <c:if test="${user.address == '西藏'}">

                        <option value="北京">北京市</option>
                        <option value="浙江省">浙江省</option>
                        <option value="天津市">天津市</option>
                        <option value="安徽省">安徽省</option>
                        <option value="上海市">上海市</option>
                        <option value="福建省">福建省</option>
                        <option value="重庆市">重庆市</option>
                        <option value="江西省">江西省</option>
                        <option value="山东省">山东省</option>
                        <option value="河南省">河南省</option>
                        <option value="湖北省">湖北省</option>
                        <option value="湖南省">湖南省</option>
                        <option value="广东省">广东省</option>
                        <option value="海南省">海南省</option>
                        <option value="山西省">山西省</option>
                        <option value="青海省">青海省</option>
                        <option value="江苏省">江苏省</option>
                        <option value="辽宁省">辽宁省</option>
                        <option value="吉林省">吉林省</option>
                        <option value="台湾省">台湾省</option>
                        <option value="河北省">河北省</option>
                        <option value="贵州省">贵州省</option>
                        <option value="四川省">四川省</option>
                        <option value="云南省">云南省</option>
                        <option value="陕西省">陕西省</option>
                        <option value="甘肃省">甘肃省</option>
                        <option value="黑龙江省">黑龙江省</option>
                        <option value="香港">香港</option>
                        <option value="澳门">澳门</option>
                        <option value="广西">广西</option>
                        <option value="宁夏">宁夏</option>
                        <option value="新疆">新疆</option>
                        <option value="内蒙古">内蒙古</option>
                        <option value="西藏" selected>西藏</option>
                        </select>
                    </c:if>

                    </select>
                </div>

                <div class="form-group">
                    <label for="qq">QQ：</label>
                    <input id="qq" type="text" class="form-control" name="qq" value="${user.qq}" placeholder="请输入QQ号码"/>
                </div>

                <div class="form-group">
                    <label for="email">Email：</label>
                    <input id="email" type="text" class="form-control" name="email" value="${user.email}"
                           placeholder="请输入邮箱地址"/>
                </div>

                <div class="form-group" style="text-align: center">
                    <input class="btn btn-primary" type="submit" value="提交"/>
                    <input class="btn btn-default" type="reset" value="重置"/>
                    <input class="btn btn-default" type="button" value="返回"/>
                </div>
            </form>
        </div>
    </body>
</html>