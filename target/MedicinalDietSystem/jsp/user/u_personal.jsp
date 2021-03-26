<%--
  Created by IntelliJ IDEA.
  User: lh
  Date: 2019/4/19
  Time: 22:05
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

        <%--个人中心功能模块--%>
        <div class="layui-row" style="background-color:#ffffff; text-align: center">
            <div class="layui-tab layui-tab-brief" lay-filter="docDemoTabBrief" >
                <ul class="layui-tab-title " >
                    <li class="layui-this" ><a href="${context}/jsp/user/u_personal.jsp">体质测试</a></li>
                    <li><a href="${context}/recommend/showRecommendMed">我的推荐</a></li>
                    <li><a href="${context}/collection/showCollectionMed">我的收藏</a></li>
                    <li><a href="${context}/browse/showBrowseMed">浏览记录</a></li>
                    <li>帮助</li>
                </ul>
                <div class="layui-tab-content">
                    <div class="layui-tab-item layui-show">
                        <div class="layui-row" id="pageMed">
                            <div class="layui-col-md2 test1" style="margin-top: 16px;">
                                <a href="${context}/test/showTest/3" title="" class="big">
                                        <img class="img" alt="medDietName" width="150px" height="150px"
                                             src="${context}/static/images/common/快速测试.png">
                                        <div>
                                            <div class="i" style="margin-top: 10px; margin-left: 5px" name="">
                                                <div style="display:inline ">
                                                    <strong>快速测试</strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                    <span class="layui-icon layui-icon-fire"
                                                          style="font-size: 14px; color: #FF4500;"></span>
                                                    <br>
                                                    <span>测试题目数量：27</span>
                                                </div>
                                            </div>
                                        </div>
                                    </a>
                            </div>
                            <div class="layui-col-md2 test2" style="margin-top: 16px">
                                <a href="${context}/test/showTest/2" title="medDietName" class="big">
                                    <img class="img" alt="medDietName" width="150px" height="150px"
                                         src="${context}/static/images/common/详细测试.png">
                                    <div>
                                        <div class="i" style="margin-top: 10px; margin-left: 5px" name="">
                                            <div style="display:inline ">
                                                <strong>详细测试</strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                <span class="layui-icon layui-icon-fire"
                                                      style="font-size: 14px; color: #FF4500;"></span>
                                                <br>
                                                <span>测试题目数量：45</span>
                                            </div>
                                        </div>
                                    </div>
                                </a>
                            </div>
                            <div class="layui-col-md2 test3" style="margin-top: 16px">
                                <a href="${context}/test/showTest/1" title="medDietName" class="big">
                                    <img class="img" alt="medDietName" width="150px" height="150px"
                                         src="${context}/static/images/common/全面测试.png">
                                    <div>
                                        <div class="i" style="margin-top: 10px; margin-left: 5px" name="">
                                            <div style="display:inline ">
                                                <strong>全面测试</strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                <span class="layui-icon layui-icon-fire"
                                                      style="font-size: 14px; color: #FF4500;"></span>
                                                <br>
                                                <span>测试题目数量：67</span>
                                            </div>
                                        </div>
                                    </div>
                                </a>
                            </div>
                        </div>
                    </div>
                    <div class="layui-tab-item"></div>
                    <div class="layui-tab-item"></div>
                    <div class="layui-tab-item"></div>
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

        if('${phyTips}' != ''){
            layer.alert('您的体质：${phyTips}（点击确认个人中心查看详情）', {
                skin: 'layui-layer-lan' //样式类名
                ,title: '体质测试结果'
                ,closeBtn: 0
                ,offset: 't'
                ,btnAlign: 'c'
                ,anim: 1
            });
        }
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

        // $(".test1").click(function () {
        //     var html = "<div>嘻嘻</div>";
        //     //在这里面输入任何合法的js语句
        //     layer.open({
        //         type: 1 //Page层类型
        //         , offset: 't'
        //         , area: ['750px', '650px']
        //         , title: '中医体质测试'
        //         , shade: 0.6 //遮罩透明度
        //         , maxmin: true //允许全屏最小化
        //         , anim: 1 //0-6的动画形式，-1不开启
        //         , content:  html
        //     });
        // })


        // $(function () {
        //     $.ajax({})
        // })
    });
</script>
</body>
</html>