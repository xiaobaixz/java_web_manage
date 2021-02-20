<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!-- HTML5文档-->
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
        <title>添加用户</title>

        <!-- 1. 导入CSS的全局样式 -->
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <!-- 2. jQuery导入，建议使用1.9以上的版本 -->
        <script src="js/jquery-2.1.0.min.js"></script>
        <!-- 3. 导入bootstrap的js文件 -->
        <script src="js/bootstrap.min.js"></script>
    </head>

    <body>
        <div class="container">
            <div style="text-align: center;"><h3>添加联系人页面</h3></div>
            <form action="${pageContext.request.contextPath}/addUserServlet" method="post">
                <div class="form-group">
                    <label for="name">姓名：</label>
                    <input type="text" class="form-control" id="name" name="name" placeholder="请输入姓名">
                </div>

                <div class="form-group">
                    <label>性别：</label>
                    <input type="radio" name="gender" value="男" checked="checked"/>男
                    <input type="radio" name="gender" value="女"/>女
                </div>

                <div class="form-group">
                    <label for="age">年龄：</label>
                    <input type="text" class="form-control" id="age" name="age" placeholder="请输入年龄">
                </div>

                <div class="form-group">
                    <label>籍贯：</label>
                    <select name="address" class="form-control" id="address">
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
                        <option value="内蒙古">内蒙</option>
                        <option value="西藏">西藏</option>
                    </select>
                </div>

                <div class="form-group">
                    <label for="qq">QQ：</label>
                    <input type="text" id="qq" class="form-control" name="qq" placeholder="请输入QQ号码"/>
                </div>

                <div class="form-group">
                    <label for="email">Email：</label>
                    <input type="text" id="email" class="form-control" name="email" placeholder="请输入邮箱地址"/>
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
