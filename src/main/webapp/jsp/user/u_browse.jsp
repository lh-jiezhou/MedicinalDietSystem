<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: lh
  Date: 2019/4/24
  Time: 17:27
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
        <%--####个人中心通用模块--%>
        <jsp:include page="/jsp/common/u_middle.jsp" />
        <%--####个人中心通用模块--%>

        <%--个人中心功能模块###  我的浏览记录--%>
        <div class="layui-row" style="background-color:#ffffff; text-align: center">
            <div class="layui-tab layui-tab-brief" lay-filter="docDemoTabBrief" >
                <ul class="layui-tab-title " >
                    <li><a href="${context}/jsp/user/u_personal.jsp">体质测试</a></li>
                    <li><a href="${context}/recommend/showRecommendMed">我的推荐</a></li>
                    <li><a href="${context}/collection/showCollectionMed">我的收藏</a></li>
                    <li class="layui-this"><a href="${context}/browse/showBrowseMed">浏览记录</a></li>
                    <li>帮助</li>
                </ul>
                <div class="layui-tab-content">
                    <div class="layui-tab-item"></div>
                    <div class="layui-tab-item"></div>
                    <div class="layui-tab-item"></div>
                    <div class="layui-tab-item layui-show">
                        <div class="layui-row" id="pageMed">
                            <%--显示--%>
                            <c:forEach items="${medicinalDietTables}" var="obj">
                                <div class="layui-col-md2 " style="margin-top: 16px;">
                                    <a href="${context}/main/showMedDetailByMedId/${obj.medicinalDietId}" title="${obj.medDietName}" class="big">
                                        <img class="img" alt="${obj.medDietName}" width="150px" height="150px"
                                             src="${context}${obj.medDietImg}">
                                        <div>
                                            <div class="i" style="margin-top: 10px; margin-left: 5px" name="">
                                                <div style="display:inline ">
                                                    <strong>${obj.medDietName}</strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                    <br>
                                                    <span>${obj.medEffiCate}</span>
                                                    <span style="float: right;margin-right: 45px">${obj.medMakeCate}
                                                        <span class="layui-icon layui-icon-rate-solid"
                                                                 style="font-size: 14px; color: #FF4500; "></span>
                                                    </span>
                                                </div>
                                            </div>
                                        </div>
                                    </a>
                                </div>
                            </c:forEach>
                        </div>
                    </div>
                    <div class="layui-tab-item">帮助</div>
                </div>

            </div>
        </div><br>
        <%--个人中心功能模块--%>

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