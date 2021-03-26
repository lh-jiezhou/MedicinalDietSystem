<%--
  Created by IntelliJ IDEA.
  User: lh
  Date: 2019/4/19
  Time: 15:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>药膳家 欢迎您！</title>
    <link rel="icon" href="${context}/static/images/common/网站icon.png" type="image/x-icon">
    <%--引入css,否则没有这个样式--%>
    <link href="${context}/static/plugins/layui/css/layui.css" rel="stylesheet" media="all"/>
    <link href="${context}/static/plugins/layui-ext.css" rel="stylesheet" media="all">
    <link href="${context}/static/plugins/layuiadmin/admin.css" rel="stylesheet" media="all">
    <link href="${context}/static/plugins/layuiadmin/template.css" rel="stylesheet" media="all">
</head>
<body>
<%--####--%>
<jsp:include page="/jsp/common/m_header.jsp" />
<div style="background: #EEE8AA">
    <div class="layui-container">
        <br>
        <div class="layui-row" style="height:650px; background-color:#ffffff; text-align: center">
            <br><br><hr>
            <span style="font-size: 24px">登录药膳家</span><br><br><br><br>
            <span style="color: red">${msg}</span>
            <form class="layui-form" style="margin-left: 400px"  action="${context}/user/userLogin" method="post">
                <div class="layui-form-item" >
                    <label class="layui-form-label">用户名</label>
                    <div class="layui-input-block" >
                        <input  style="width: 190px" type="text" name="userNo" required  lay-verify="required" placeholder="请输入用户名/手机号" autocomplete="off" class="layui-input">
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">密码</label>
                    <div class="layui-input-inline">
                        <input type="password" name="userPassword" required lay-verify="required" placeholder="请输入密码" autocomplete="off" class="layui-input">
                    </div>
                </div>
                <div class="layui-form-item" style="margin-right: 490px; margin-top: 20px">
                    <div class="layui-input-block">
                        <button  class="layui-btn  layui-btn-danger" style="width: 80px" lay-submit >登录</button>
                    </div>
                </div>
            </form>
            <br><br><hr><br>
            <span style="font-size: 24px">第三方登录</span><br><br><br><br>
            <span class="layui-icon layui-icon-login-qq" style="margin-left: 20px; margin-right:25px; font-size: 100px; color: #6980ff;"></span>
            <span class="layui-icon layui-icon-login-wechat" style="margin-left: 20px; margin-right:25px; font-size: 100px; color: #12ff1b;"></span>
            <span class="layui-icon layui-icon-login-weibo" style="margin-left: 20px; margin-right:25px; font-size: 100px; color: #ff231c;"></span>
        </div>
        <br>
    </div>
</div>

<%--####--%>
<jsp:include page="/jsp/common/m_tail.jsp" />
<script type="text/javascript" src="${context}/static/plugins/layui/layui.js"></script>
<script type="text/javascript" src="${context}/static/plugins/view/magicalcoder-layuiout.js"></script>
<script>
    //JavaScript代码区域
    layui.use(['element', 'jquery', 'layer', 'form'], function(){
        var element = layui.element;
        var jquery,$ = layui.jquery;
        var layer = layui.layer;
        var form = layui.form;

        //监听提交 form button: lay-filter="formDemo"
        form.on('submit(formDemo)', function(data){
            layer.msg(JSON.stringify(data.field));
            return false;
        });

        // $(function () {
        //     $.ajax({})
        // })
    });
</script>
</body>
</html>

