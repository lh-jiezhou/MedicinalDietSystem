<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="s" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: lh
  Date: 2019/4/28
  Time: 16:37
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
    <div class="layui-container" >
        <br>
        <div class="layui-row" style="background-color:#ffffff; margin-left: 50px; width: 90%">
            <br>
            <div class="layui-tab layui-tab-card">
                <ul class="layui-tab-title">
                    <li class="layui-this">基本信息</li>
                    <li>修改密码</li>
                    <li>上传头像</li>
                </ul>
                <div class="layui-tab-content">
                    <%--基本信息--%>
                    <div class="layui-tab-item layui-show">
                        <div class="" style="width: 90%">
                            <form class="layui-form" action="${context}/user/updatePerInfo" method="post">
                                <fieldset class="layui-elem-field layui-field-title" style="margin-top: 30px;">
                                    <legend>个人信息</legend>
                                </fieldset>
                                <div class="layui-form-item">
                                    <label class="layui-form-label">账号</label>
                                    <div class="layui-input-block">
                                        <input value="${SESSION_USER.userNo}"  readonly type="text" name="userNo" required lay-verify="required" placeholder="请输入标题" autocomplete="off" class="layui-input">
                                    </div>
                                </div>
                                <div class="layui-form-item">
                                    <label class="layui-form-label">昵称</label>
                                    <div class="layui-input-block">
                                        <input value="${SESSION_USER.userNickname}"  type="text" name="userNickname" required  lay-verify="required" placeholder="请输入昵称" autocomplete="off" class="layui-input">
                                    </div>
                                </div>
                                <div class="layui-form-item">
                                    <label class="layui-form-label">职业</label>
                                    <div class="layui-input-block">
                                        <select name="userJob" lay-verify="required">
                                            <option value=""></option>
                                            <%--<option value="程序员">程序员</option>--%>
                                            <%--<option value="教师">教师</option>--%>
                                            <%--<option value="司机">司机</option>--%>
                                            <option value="运动员">运动员</option>
                                            <option value="其他">其他</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="layui-form-item">
                                    <label class="layui-form-label">性别</label>
                                    <div class="layui-input-block ">
                                        <c:choose>
                                            <c:when test="${SESSION_USER.userSex == '男'}">
                                                <input type="radio" name="userSex" value="男" title="男" checked>
                                                <input type="radio" name="userSex" value="女" title="女" >
                                            </c:when>
                                            <c:otherwise>
                                                <input type="radio" name="userSex" value="男" title="男" >
                                                <input type="radio" name="userSex" value="女" title="女" checked>
                                            </c:otherwise>
                                        </c:choose>
                                    </div>
                                </div>
                                <div class="layui-form-item">
                                    <label class="layui-form-label">年龄</label>
                                    <div class="layui-input-block">
                                        <input value="${SESSION_USER.userAge}" type="text" name="userAge" required  lay-verify="required" placeholder="请输入标题" autocomplete="off" class="layui-input">
                                    </div>
                                </div>
                                <div class="layui-form-item">
                                    <label class="layui-form-label">养生目标</label>
                                    <div class="layui-input-block">
                                        <input value="${SESSION_USER.userAim}" type="text" name="userAim" required  lay-verify="required" placeholder="请输入标题" autocomplete="off" class="layui-input">
                                    </div>
                                    <%--<div class="layui-input-block">--%>
                                        <%--<input type="checkbox" name="like[write]" title="减肥">--%>
                                        <%--<input type="checkbox" name="like[read]" title="明目" checked>--%>
                                        <%--<input type="checkbox" name="like[dai]" title="养胃">--%>
                                        <%--<input type="checkbox" name="like[dai]" title="补血">--%>
                                    <%--</div>--%>
                                </div>
                                <div class="layui-form-item layui-form-text">
                                    <label class="layui-form-label">个性签名</label>
                                    <div class="layui-input-block">
                                        <textarea name="userSign" placeholder="请输入个性签名" class="layui-textarea">${SESSION_USER.userSign}</textarea>
                                    </div>
                                </div>
                                <div class="layui-form-item">
                                    <div class="layui-input-block">
                                        <button class="layui-btn" lay-submit >立即提交</button>
                                        <button type="reset" class="layui-btn layui-btn-primary">重置</button>
                                    </div>
                                </div>
                                <div style="height: 10px"></div>
                            </form>
                        </div>
                    </div>
                    <%--修改密码--%>
                    <div class="layui-tab-item">
                        <div class="" style="width: 90%">
                            <form class="layui-form" action="${context}/user/he" method="post">
                                <fieldset class="layui-elem-field layui-field-title" style="margin-top: 30px;">
                                    <legend>修改密码</legend>
                                </fieldset>
                                <div class="layui-form-item">
                                    <label class="layui-form-label">原始密码</label>
                                    <div class="layui-input-inline">
                                        <input type="password" name="password" required lay-verify="required" placeholder="请输入密码" autocomplete="off" class="layui-input">
                                    </div>
                                    <%--<div class="layui-form-mid layui-word-aux">辅助文字</div>--%>
                                </div>
                                <div class="layui-form-item">
                                    <label class="layui-form-label">新密码</label>
                                    <div class="layui-input-inline">
                                        <input type="password" name="password" required lay-verify="required" placeholder="请输入密码" autocomplete="off" class="layui-input">
                                    </div>
                                    <%--<div class="layui-form-mid layui-word-aux">辅助文字</div>--%>
                                </div>
                                <div class="layui-form-item">
                                    <label class="layui-form-label">确认密码</label>
                                    <div class="layui-input-inline">
                                        <input type="password" name="password" required lay-verify="required" placeholder="请输入密码" autocomplete="off" class="layui-input">
                                    </div>
                                    <%--<div class="layui-form-mid layui-word-aux">辅助文字</div>--%>
                                </div>
                                <div class="layui-form-item">
                                    <div class="layui-input-block">
                                        <button class="layui-btn" lay-submit lay-filter="formDemo">立即提交</button>
                                        <button type="reset" class="layui-btn layui-btn-primary">重置</button>
                                    </div>
                                </div>
                                <div style="height: 10px"></div>
                            </form>
                        </div>
                    </div>
                    <%--上传头像--%>
                    <div class="layui-tab-item">上传头像</div>
                </div>
            </div>

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
        // form.on('submit(formDemo)', function(data){
        //     layer.msg(JSON.stringify(data.field));
        //     return false;
        // });

        //下拉框设置默认值
        $("option[value=${SESSION_USER.userJob}]").attr('selected', 'selected');
        //退出
        $(".tips").click(function () {
            layer.open({
                title: '提示'
                ,btnAlign: 'c'
                ,offset: '160px'
                ,content: '确认退出？'
                ,btn: ['确认', '取消']
                ,yes: function(index, layero){
                    //按钮【按钮一】的回调
                    window.open('${context}/user/userLoginOut', '_self');
                }
                ,btn2: function(index, layero){
                    //按钮【按钮二】的回调
                    //return false 开启该代码可禁止点击该按钮关闭
                }
            });
        })


        // $(function () {
        //     $.ajax({})
        // })
    });
</script>
</body>
</html>
