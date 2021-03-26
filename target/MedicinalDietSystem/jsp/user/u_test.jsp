<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: lh
  Date: 2019/4/2
  Time: 16:23
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
    <style type="text/css" >
        #liDiv li{
            float: left;
        }
    </style>
</head>
<body>
<%--####--%>
<jsp:include page="/jsp/common/m_header.jsp" />
<div style="background: #EEE8AA">
    <div class="layui-container" >
        <br>
        <div class="layui-row" style="background-color:#ffffff; margin-left: 50px; width: 90%">
            <br><br><hr>
            <span style="font-size: 24px; margin-left: 42%">
                中医体质测试<span style="font-size: 14px; color: #eecd37">&nbsp;&nbsp;( 中华中医药学会标准 )</span>
            </span><br><br>
            <div class="" id="liDiv" >
                <form class="layui-form"  action="${context}/test/showTestResult/${testId}" method="post">
                    <fieldset class="layui-elem-field layui-field-title" style="margin-top: 30px;">
                        <legend>你看起来？</legend>
                    </fieldset>
                    <table width="94%" border="0" align="center" cellspacing="0">
                        <%--循环--%>
                        <c:forEach items="${testQ1}" var="obj" varStatus="status">
                            <tr>
                                <td height="40" colspan="2" valign="middle" >${obj.questionCont}</td>
                                <td height="40" colspan="1" width="500" valign="middle" class="radio">
                                    <li><input type="radio" name="${status.index+index1}" value="${obj.answerA}" title="没有"/>
                                    <li><input type="radio" name="${status.index+index1}" value="${obj.answerB}" title="很少"/>
                                    <li><input type="radio" name="${status.index+index1}" value="${obj.answerC}" title="有时"/>
                                    <li><input type="radio" name="${status.index+index1}" value="${obj.answerD}" title="经常"/>
                                    <li><input type="radio" name="${status.index+index1}" value="${obj.answerE}" checked title="总是"/>
                                    <div class="clear"></div>
                                </td>
                            </tr>
                        </c:forEach>
                    </table>
                    <fieldset class="layui-elem-field layui-field-title" style="margin-top: 30px;">
                        <legend>你感觉？</legend>
                    </fieldset>
                    <table width="94%" border="0" align="center" cellspacing="0">
                        <%--循环--%>
                        <c:forEach items="${testQ2}" var="obj" varStatus="status">
                            <tr>
                                <td height="40" colspan="2" valign="middle" >${obj.questionCont}</td>
                                <td height="40" colspan="1" width="500" valign="middle" class="radio">
                                    <li><input type="radio" name="${status.index+index2}" value="${obj.answerA}" title="没有"/>
                                    <li><input type="radio" name="${status.index+index2}" value="${obj.answerB}" title="很少"/>
                                    <li><input type="radio" name="${status.index+index2}" value="${obj.answerC}" title="有时"/>
                                    <li><input type="radio" name="${status.index+index2}" value="${obj.answerD}" title="经常"/>
                                    <li><input type="radio" name="${status.index+index2}" value="${obj.answerE}" checked title="总是"/>
                                        <div class="clear"></div>
                                </td>
                            </tr>
                        </c:forEach>
                    </table>
                    <fieldset class="layui-elem-field layui-field-title" style="margin-top: 30px;">
                        <legend>你平日有？</legend>
                    </fieldset>
                    <table width="94%" border="0" align="center" cellspacing="0">
                        <%--循环--%>
                        <c:forEach items="${testQ3}" var="obj" varStatus="status">
                            <tr>
                                <td height="40" colspan="2" valign="middle" >${obj.questionCont}</td>
                                <td height="40" colspan="1" width="500" valign="middle" class="radio">
                                    <li><input type="radio" name="${status.index+index3}" value="${obj.answerA}" title="没有"/>
                                    <li><input type="radio" name="${status.index+index3}" value="${obj.answerB}" title="很少"/>
                                    <li><input type="radio" name="${status.index+index3}" value="${obj.answerC}" title="有时"/>
                                    <li><input type="radio" name="${status.index+index3}" value="${obj.answerD}" title="经常"/>
                                    <li><input type="radio" name="${status.index+index3}" value="${obj.answerE}" checked title="总是"/>
                                        <div class="clear"></div>
                                </td>
                            </tr>
                        </c:forEach>
                    </table>
                    <div class="layui-form-item" style="margin-left: 300px; margin-top: 30px">
                        <div class="layui-input-block">
                            <button  class="layui-btn  layui-btn-danger" style="width: 180px" lay-submit >立即提交</button>
                        </div>
                    </div>
                    <div style="height: 10px"></div>
                </form>
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
        form.on('submit(formDemo)', function(data){
            layer.msg(JSON.stringify(data.field));
            return false;
        });
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

<%--<tr>--%>
    <%--<td height="40" colspan="2" valign="middle" class="answer">您喜欢安静懒得说话吗？</td>--%>
    <%--<td height="40" colspan="1" width="500" valign="middle" class="radio">--%>
        <%--<li><input type="radio" name="1" value="1" title="没有"/>--%>
        <%--<li><input type="radio" name="1" value="2" title="很少"/>--%>
        <%--<li><input type="radio" name="1" value="3" title="有时"/>--%>
        <%--<li><input type="radio" name="1" value="4" title="经常"/>--%>
        <%--<li><input type="radio" name="1" value="5" title="总是"/>--%>
            <%--<div class="clear"></div>--%>
    <%--</td>--%>
<%--</tr>--%>
<%--<tr>--%>
    <%--<td height="40" colspan="2" valign="middle" class="answer">您喜欢安静懒得说话吗？</td>--%>
    <%--<td height="40" colspan="1" width="500" valign="middle" class="radio">--%>
        <%--<li><input type="radio" name="2" value="1" title="没有"/>--%>
        <%--<li><input type="radio" name="2" value="2" title="很少"/>--%>
        <%--<li><input type="radio" name="2" value="3" title="有时"/>--%>
        <%--<li><input type="radio" name="2" value="4" title="经常"/>--%>
        <%--<li><input type="radio" name="2" value="5" title="总是"/>--%>
            <%--<div class="clear"></div>--%>
    <%--</td>--%>
<%--</tr>--%>
<%--<tr>--%>
    <%--<td height="40" colspan="2" valign="middle" class="answer">您喜欢安静懒得说话吗？</td>--%>
    <%--<td height="40" colspan="1" width="500" valign="middle" class="radio">--%>
        <%--<li><input type="radio" name="3" value="1" title="没有"/>--%>
        <%--<li><input type="radio" name="3" value="2" title="很少"/>--%>
        <%--<li><input type="radio" name="3" value="3" title="有时"/>--%>
        <%--<li><input type="radio" name="3" value="4" title="经常"/>--%>
        <%--<li><input type="radio" name="3" value="5" title="总是"/>--%>
            <%--<div class="clear"></div>--%>
    <%--</td>--%>
<%--</tr>--%>
<%--<tr>--%>
    <%--<td height="40" colspan="2" valign="middle" class="answer">您喜欢安静懒得说话吗？</td>--%>
    <%--<td height="40" colspan="1" width="500" valign="middle" class="radio">--%>
        <%--<li><input type="radio" name="4" value="1" title="没有"/>--%>
        <%--<li><input type="radio" name="4" value="2" title="很少"/>--%>
        <%--<li><input type="radio" name="4" value="3" title="有时"/>--%>
        <%--<li><input type="radio" name="4" value="4" title="经常"/>--%>
        <%--<li><input type="radio" name="4" value="5" title="总是"/>--%>
            <%--<div class="clear"></div>--%>
    <%--</td>--%>
<%--</tr>--%>