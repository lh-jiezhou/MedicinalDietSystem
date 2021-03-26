<%--
  Created by IntelliJ IDEA.
  User: ClownJJ
  Date: 2019/4/22
  Time: 11:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <base id="base" href="${base}">
    <meta charset="UTF-8">
    <title>登录</title>
    <link rel="icon" href="${context}/static/images/common/网站icon.png" type="image/x-icon">
    <link href="${context}/static/plugins/layui/css/layui.css" rel="stylesheet" media="all"/>
    <link href="${context}/static/plugins/back/css/normalize.css" rel="stylesheet"/>
    <link href="${context}/static/plugins/back/css/demo.css" rel="stylesheet"/>
    <link href="${context}/static/plugins/back/css/component.css" rel="stylesheet"/>
</head>
<body>
<div class="container demo-1">
    <div class="content">
        <div id="large-header" class="large-header">
            <canvas id="demo-canvas"></canvas>
            <div class="logo_box">
                <h3>欢迎你</h3>
                <div class="input_outer">
                    <span class="u_user"></span>
                    <input name="username" class="text" style="color: #FFFFFF !important" type="text" placeholder="请输入账户">
                </div>
                <div class="input_outer">
                    <span class="us_uer"></span>
                    <input name="password" class="text" style="color: #FFFFFF !important; position:absolute; z-index:100;"value="" type="password" placeholder="请输入密码">
                </div>
                <div class="mb2"><a id = "sub" lay-filter="sub" class="act-but submit" href="javascript:;" style="color: #FFFFFF">登录</a></div>
            </div>
        </div>
    </div>
</div><!-- /container -->
</body>
<script type="text/javascript" src="${context}/static/plugins/layui/layui.js"></script>
<script type="text/javascript" src="${context}/static/plugins/back/js/TweenLite.min.js"></script>
<script type="text/javascript" src="${context}/static/plugins/back/js/EasePack.min.js"></script>
<script type="text/javascript" src="${context}/static/plugins/back/js/rAF.js"></script>
<script type="text/javascript" src="${context}/static/plugins/back/js/demo-1.js"></script>
<script>
    layui.use(['element', 'jquery', 'layer'], function(){
        var element = layui.element;
        var jquery,$ = layui.jquery;
        var layer = layui.layer;

        //登录函数
        $("#sub").on("click",function(){
            var username = $(" input[ name='username' ] ").val();
            var password = $(" input[ name='password' ] ").val();
            $.ajax({
                url:"${context}/admin/login",
                type:"post",
                contentType:"application/json",
                data:JSON.stringify({"adminMedId":username,"adminPwd":password}),
                success:function(data){
                    if(data=="success"){
                        window.location = "am_index.jsp";
                    }else{
                        layer.msg(data,{icon:5,time:1300});
                    }
                }
            });
        });
    })
</script>
</html>
