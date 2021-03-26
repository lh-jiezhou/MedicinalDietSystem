<%--
  Created by IntelliJ IDEA.
  User: lh
  Date: 2019/4/2
  Time: 10:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>药膳家 欢迎您！</title>
    <link rel="icon" href="https://pic.52112.com/icon/256/20181121/25067/1200094.png" type="image/x-icon">
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
    <div>Haha${msg}</div>
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

        if('${msg}' != ''){
            layer.alert('${msg}', {
                skin: 'layui-layer-lan' //样式类名
                ,closeBtn: 0
                ,offset: 't'
                ,btnAlign: 'c'
                ,anim: 1
            });
        }




        // $(function () {
        //     $.ajax({})
        // })
    });
</script>
</body>
</html>


<%--<html>--%>
<%--<head>--%>
<%--<title>Title</title>--%>
<%--</head>--%>
<%--<body>--%>
<%--用户界面：--%>
<%--欢迎：${SESSION_USER.username}--%>
<%--</body>--%>
<%--</html>--%>
