<%--
  Created by IntelliJ IDEA.
  User: lh
  Date: 2019/4/19
  Time: 15:54
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
        <div class="layui-row" style="height:800px; background-color:#ffffff; text-align: center">
            <br><br><hr>
            <span style="font-size: 24px">注册药膳家</span><br><br>
            <div class="layui-tab" style="margin-left:260px; width: 640px; background-color: #fffcc4">
                <ul class="layui-tab-title" style="text-align: center">
                    <li class="layui-this">手机注册</li>
                    <li>邮箱注册</li>
                </ul>
                <div class="layui-tab-content">
                    <div class="layui-tab-item layui-show">
                        <form class="layui-form" style="margin-top:20px; margin-left: 100px"  action="${context}/user/userRegister" method="post">
                            <div class="layui-form-item" >
                                <div class="layui-input-block" >
                                    <input  style="width: 230px" type="text" name="userNo" required  lay-verify="required" placeholder="请输入手机号" autocomplete="off" class="layui-input">
                                </div>
                            </div>
                            <div class="layui-form-item" >
                                <div class="layui-input-block" >
                                    <div class="layui-inline"><input  style="width: 110px; margin-top: 5px" type="text" name="title" required  lay-verify="required" placeholder="请输入验证码" autocomplete="off" class="layui-input"></div>
                                    <button class="layui-btn" style="height:35px;background-color: #eedf67;">获取验证码</button>
                                </div>
                            </div>
                            <div class="layui-form-item">
                                <div class="layui-input-inline" style="margin-left: 110px">
                                    <input style="width: 230px" type="password" name="userPassword" required lay-verify="required" placeholder="请输入密码" autocomplete="off" class="layui-input">
                                </div>
                            </div>
                            <div class="layui-form-item" style="margin-top: 20px">
                                <div class="layui-input-block" style="margin-left: 170px">
                                    <button class="layui-btn  layui-btn-danger" style="width: 90px" lay-submit lay-filter="formDemo">立即注册</button>
                                </div>
                            </div>
                        </form>
                    </div>
                    <div class="layui-tab-item">
                        <form class="layui-form" style="margin-top:20px; margin-left: 100px"  action="">
                            <div class="layui-form-item" >
                                <div class="layui-input-block" >
                                    <input  style="width: 230px" type="text" name="title" required  lay-verify="required" placeholder="请输入邮箱" autocomplete="off" class="layui-input">
                                </div>
                            </div>
                            <div class="layui-form-item" style="display: none" >
                                <div class="layui-input-block" >
                                    <div class="layui-inline"><input  style="width: 110px; margin-top: 5px" type="text" name="title" required  lay-verify="required" placeholder="请输入验证码" autocomplete="off" class="layui-input"></div>
                                    <button class="layui-btn" style="height:35px;background-color: #eedf67;">获取验证码</button>
                                </div>
                            </div>
                            <div class="layui-form-item">
                                <div class="layui-input-inline" style="margin-left: 110px">
                                    <input style="width: 230px" type="password" name="password" required lay-verify="required" placeholder="请输入密码" autocomplete="off" class="layui-input">
                                </div>
                            </div>
                            <div class="layui-form-item" style="margin-top: 20px">
                                <div class="layui-input-block" style="margin-left: 170px">
                                    <button class="layui-btn  layui-btn-danger" style="width: 90px" lay-submit lay-filter="formDemo">立即注册</button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>

            <br><br><hr><br>
            <span style="font-size: 24px">第三方注册</span><br><br><br><br>
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
    layui.use(['element', 'jquery', 'layer'], function(){
        var element = layui.element;
        var jquery,$ = layui.jquery;
        var layer = layui.layer;


        // $(function () {
        //     $.ajax({})
        // })
    });
</script>
</body>
</html>
